// Auduino, the Lo-Fi granular synthesiser
//
// by Peter Knight, Tinker.it http://tinker.it
//
// Help:      http://code.google.com/p/tinkerit/wiki/Auduino
// More help: http://groups.google.com/group/auduino


#include <avr/io.h>
#include <avr/interrupt.h>
#include <ADS1X15.h>
ADS1115 ADS(0x48);

#define NB_ADC_BOUNDARIES 62
const int16_t PROGMEM inter_semitonecv_to_ADC16read[NB_ADC_BOUNDARIES] = {
        -240,   208,   656,  1104,  1544,  1984,  2432,  2880,  3328,  3776,  4216,  4656,
        5096,  5544,  5992,  6432,  6872,  7320,  7776,  8216,  8648,  9088,  9536,  9984,
       10432, 10880, 11320, 11760, 12208, 12648, 13088, 13536, 13984, 14424, 14864, 15312,
       15752, 16200, 16656, 17104, 17552, 17992, 18432, 18872, 19312, 19760, 20200, 20648,
       21096, 21536, 21976, 22416, 22872, 23312, 23752, 24200, 24648, 25096, 25536, 25984, 
       26432, // 26880,
       32765
};

#define NUM_NOTES 12
uint16_t syncPhaseAcc;
uint16_t syncPhaseInc;

uint16_t grainPhaseAcc;
uint16_t grainPhaseInc;
uint16_t grainPhaseCtrl;

uint16_t grainAmp;
uint8_t grainDecay;

uint16_t grain2PhaseAcc;
uint16_t grain2PhaseInc;
uint16_t grain2PhaseCtrl;

uint16_t grain2Amp;
uint8_t grain2Decay;
uint8_t octave;

int pitchIndex = 0;
int newSyncControl;

// Map Analogue channels
#define OCTAVE_CONTROL       (6)
#define GRAIN_FREQ_CONTROL   (0)
#define GRAIN_DECAY_CONTROL  (1)
#define GRAIN2_FREQ_CONTROL  (2)
#define GRAIN2_DECAY_CONTROL (3)


#define PWM_PIN       3
#define PWM_VALUE     OCR2B
#define LED_PIN       13
#define LED_PORT      PORTB
#define LED_BIT       5
#define PWM_INTERRUPT TIMER2_OVF_vect

// Smooth logarithmic mapping
//
uint16_t antilogTable[] = {
  64830,64132,63441,62757,62081,61413,60751,60097,59449,58809,58176,57549,56929,56316,55709,55109,
  54515,53928,53347,52773,52204,51642,51085,50535,49991,49452,48920,48393,47871,47356,46846,46341,
  45842,45348,44859,44376,43898,43425,42958,42495,42037,41584,41136,40693,40255,39821,39392,38968,
  38548,38133,37722,37316,36914,36516,36123,35734,35349,34968,34591,34219,33850,33486,33125,32768
};
uint16_t mapPhaseInc(uint16_t input) {
  return (antilogTable[input & 0x3f]) >> (input >> 6);
}

// Stepped chromatic mapping
//
uint16_t midiTable[] = {
  17,18,19,20,22,23,24,26,27,29,31,32,34,36,38,41,43,46,48,51,54,58,61,65,69,73,
  77,82,86,92,97,103,109,115,122,129,137,145,154,163,173,183,194,206,218,231,
  244,259,274,291,308,326,346,366,388,411,435,461,489,518,549,581,616,652,691,
  732,776,822,871,923,978,1036,1097,1163,1232,1305,1383,1465,1552,1644,1742,
  1845,1955,2071,2195,2325,2463,2610,2765,2930,3104,3288,3484,3691,3910,4143,
  4389,4650,4927,5220,5530,5859,6207,6577,6968,7382,7821,8286,8779,9301,9854,
  10440,11060,11718,12415,13153,13935,14764,15642,16572,17557,18601,19708,20879,
  22121,23436,24830,26306
};

void audioOn() {
#if defined(__AVR_ATmega8__)
  // ATmega8 has different registers
  TCCR2 = _BV(WGM20) | _BV(COM21) | _BV(CS20);
  TIMSK = _BV(TOIE2);
#elif defined(__AVR_ATmega1280__)
  TCCR3A = _BV(COM3C1) | _BV(WGM30);
  TCCR3B = _BV(CS30);
  TIMSK3 = _BV(TOIE3);
#else
  // Set up PWM to 31.25kHz, phase accurate
  TCCR2A = _BV(COM2B1) | _BV(WGM20);
  TCCR2B = _BV(CS20);
  TIMSK2 = _BV(TOIE2);
#endif
}


void setup() {
  Serial.begin(9600);

  pinMode(PWM_PIN, OUTPUT);
  audioOn();
  pinMode(LED_PIN,OUTPUT);
  
  ADS.begin();
  ADS.setGain(0);
}

void loop() {
  octave = map(analogRead(OCTAVE_CONTROL), 0, 720, 0, 5);
  pitchIndex = map(ADS.readADC(0), 0, 32767, 0, 73) + octave * 12;
  
  syncPhaseInc = midiTable[pitchIndex];
  
  grainPhaseInc  = mapPhaseInc(map(analogRead(GRAIN_FREQ_CONTROL), 300, 800, 0, 1023)) / 2;
  grainDecay     = (map(analogRead(GRAIN_DECAY_CONTROL), 300, 800, 0, 1023)) / 8; 
  grain2PhaseInc  = mapPhaseInc(map(analogRead(GRAIN2_FREQ_CONTROL), 300, 800, 0, 1023)) / 2;
  grain2Decay    = (map(analogRead(GRAIN2_DECAY_CONTROL), 300, 800, 0, 1023)) / 4;
}

SIGNAL(PWM_INTERRUPT)
{
  uint8_t value;
  uint16_t output;

  syncPhaseAcc += syncPhaseInc;
  if (syncPhaseAcc < syncPhaseInc) {
    // Time to start the next grain
    grainPhaseAcc = 0;
    grainAmp = 0x7fff;
    grain2PhaseAcc = 0;
    grain2Amp = 0x7fff;
    LED_PORT ^= 1 << LED_BIT;
  }

  // Increment the phase of the grain oscillators
  grainPhaseAcc += grainPhaseInc;
  grain2PhaseAcc += grain2PhaseInc;

  // Convert phase into a triangle wave
  value = (grainPhaseAcc >> 7) & 0xff;
  if (grainPhaseAcc & 0x8000) value = ~value;

  // Multiply by current grain amplitude to get sample
  output = value * (grainAmp >> 8);

  // Repeat for second grain
  value = (grain2PhaseAcc >> 7) & 0xff;
  if (grain2PhaseAcc & 0x8000) value = ~value;
  output += value * (grain2Amp >> 8);

  // Make the grain amplitudes decay by a factor every sample (exponential decay)
  grainAmp -= (grainAmp >> 8) * grainDecay;
  grain2Amp -= (grain2Amp >> 8) * grain2Decay;

  output >>= 9;
  if (output > 255) output = 255;

  // Output to PWM (this is faster than using analogWrite) 
  PWM_VALUE = output;
}
