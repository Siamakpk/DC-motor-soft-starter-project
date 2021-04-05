#define FREQUENCY 30000                                                                 // Definition of the switching frequency.(DO NOT GO UNDER 100 HZ)
#define CURRENTLIMIT 28                                                                 // Definition of the max current. This motor driver is rated at 20 amps max for 230 VDC (4600W). 
#define TEMPERATURELIMIT 65                                                             // Definition of the max temperature.(Later will be calibrated with thermal resistances to get the junction to max of 120C)  
#define sbi(sfr, bit) (_SFR_BYTE(sfr) |= _BV(bit))                                      // Definition for sbi macro to use in PWM function, to work as needed.
#define cbi(sfr, bit) (_SFR_BYTE(sfr) &= ~_BV(bit))

#define maxcurrent 25

long resl;                                                                              // Variable for the calculated resolution of the PWM signal.
int t;                                                                                  // Variable that counts up to light the LED up in intervals.
boolean toggle = LOW;                                                                   // Variable for leds to blink.
int state = 5;                                                                          // Variable for state, either 1,2,3 or 4.
float voltage;                                                                          // Variable for voltage signal.
boolean NF = 0;                                                                         // Variable for under voltage lockout.
boolean UVLO = 0;                                                                       // Variable for under voltage lockout.
boolean OCP =  0;                                                                       // Variable for over current protection.
boolean OTP =  0;                                                                       // Variable for over temperature protection.
boolean NC =   0;                                                                       // Variable for motor not connected error.
boolean OL = 0;                                                                         // Variable for motor over-load or field not connected.
boolean DOL = 0;                                                                        // Variable for motor over-load or field not connected.
const int ErrorLED = 3;                                                                 // Constants for pins.
const int ReadyLED = 6;                                                                 // Constants for pins.
const int OperatingLED = 11;                                                            // Constants for pins.
const int PWM = 9;                                                                      // Constants for pins, we use digital pin 9, its the one that is connected to timer 1.
const int UVLOpin = A6;                                                                 // Constant  for under voltage lockout pin number.
const int CurrentSensePin = A5;                                                         // Constant  for current sense pin number.

float Kp, Ki, Kd;                                                                       // Variables for PID control.
float dcurrent = 0;                                                                     // Variable  for desired current in PID control.
float mcurrent = 0;                                                                     // Variable  for measured current in PID control.
float cError = 0;                                                                       // Variable for current error in PID control.
float dError = 0;                                                                       // Variable for derivative(Rate) error in PID control.
float iError = 0;                                                                       // Variable for integral(Cumulative) error in PID control.
float duty = 0.0;                                                                       // Variable for duty cycle.
float current[5] = {0, 0, 0, 0, 0};                                                     // Matrix for current, to use in averaging.
float temp = 0;                                                                         // Variable for temporary current, to use in averaging.

const int RunningAverageCount = 100;                                                    // Variable for temp averaging.
float RunningAverageBuffer[RunningAverageCount];                                        // Matrix for temp data.
int NextRunningAverage;                                                                 // Variable for temp averaging
int shortCurrent;
int SCP;

void setup() {
  Kp = 0.4;
  Ki = 0.001;
  Kd = 0.0;
  attachInterrupt(0, stopISR, HIGH);                                                    // Interrupt pin for button inputs (HIGHER VALUE CAP NEEDED FOR BETTER DEBOUNCE).
  pinMode(PWM, OUTPUT);                                                                 // This is pwm pin connected to timer 1 (1A).
  pinMode(ErrorLED, OUTPUT);                                                            // ErrorLED set as output.
  pinMode(ReadyLED, OUTPUT);                                                            // ReadyLED set as output.
  pinMode(OperatingLED, OUTPUT);                                                        // OperatingLED set as output.
  pinMode(CurrentSensePin, INPUT);                                                      // Current sensor set as input.
  pinMode(UVLOpin, INPUT);                                                              // Under voltage set as input.
  Serial.begin(9600);                                                                 // Start serial communication with baud rate of 115200.
  resl = (16000000 / FREQUENCY) - 1;                                                    // Calculate the resolution in given frequency (For variable frequency drive do this operation in loop !)
  timerInit();                                                                          // Timer adjustments need to be made in setup.
  cli();                                                                                // Timer Interrupts to create blinking effect for the leds. First stop interrupts.
  TCCR2A = 0;                                                                           // set entire TCCR2A register to 0
  TCCR2B = 0;                                                                           // same for TCCR2B
  TCNT2 = 0;                                                                            // initialize counter value to 0
  OCR2A = 249;                                                                          // set compare match register for increments in desired frequency so, OCR2A= 16000000 / (64 * 1000) - 1 (must be <256)
  TCCR2B |= (1 << WGM21);                                                               // turn on CTC mode
  TCCR2B |= (1 << CS22) | (0 << CS21) | (0 << CS20);                                    // Set CS22, CS21 and CS20 bits for 64 prescaler
  TIMSK2 |= (1 << OCIE2A);                                                              // enable timer compare interrupt
  sei();                                                                                // allow interrupts
}
ISR(TIMER2_COMPA_vect) {                                                                //timer2 interrupt 1kHz toggles pin 13 (LED)
  t++;                                                                                  //These parts used in to set the required blinking intervals of leds
  if (t == 25) {
    t = 0;
    //if (errorstate) {                                                                  // First let's check for any errors
    // state = 0;                                                                       // If yes, state -> error
    // }
    if (state == 0) {                                                                  // STATE = 0  | Error state, houston there is a problem.
      duty = 0;                                                                        // set duty to zero to be sure.
      digitalWrite(9, 0);                                                              // also write pin to low
      digitalWrite(ErrorLED, HIGH);                                                    // turn on ErrorLed, others off
      digitalWrite(ReadyLED, LOW);
      digitalWrite(OperatingLED, LOW);
      digitalWrite(ErrorLED, HIGH);                                                    // turn on ErrorLed, others off
      digitalWrite(ReadyLED, LOW);
      digitalWrite(OperatingLED, LOW);
    }
    if (state == 1) {                                                                  // STATE = 1  |  Ready for action, no errors, no problems
      toggle = !toggle;                                                                // toggle
      duty = 0;
      digitalWrite(9, 0);                                                              // also write pin to low
      digitalWrite(ErrorLED, LOW);
      digitalWrite(ReadyLED, toggle);
      digitalWrite(OperatingLED, LOW);
    }
    if (state == 2) {
      toggle = !toggle;
      dcurrent = dcurrent + 0.1;
      if (dcurrent >= maxcurrent) dcurrent = maxcurrent;
      if (duty >= (resl * 0.99)) {
        duty = resl;
        state = 3;
      }
      digitalWrite(ErrorLED, LOW);
      digitalWrite(ReadyLED, !toggle);
      digitalWrite(OperatingLED, toggle);
    }
    if (state == 3) {
      //dcurrent = 3;

      digitalWrite(ErrorLED, LOW);
      digitalWrite(ReadyLED, HIGH);
      digitalWrite(OperatingLED, HIGH);

    }
    if (state == 4) {


      toggle = !toggle;
      digitalWrite(ErrorLED, LOW);
      digitalWrite(ReadyLED, toggle);
      digitalWrite(OperatingLED, toggle);

      if (dcurrent > 0.1) {

        dcurrent = dcurrent - 0.2;

      }
      if (dcurrent < 0.1) {
        dcurrent = 0.01;
        iError = 0;
        cError = 0;
        dError = 0;
        state = 1;

      }
    }
    if (state == 5) {
      digitalWrite(ErrorLED, LOW);
      digitalWrite(ReadyLED, toggle);
      digitalWrite(OperatingLED, HIGH);
    }
    if (state == 6) {
      digitalWrite(ErrorLED, LOW);
      digitalWrite(ReadyLED, toggle);
      digitalWrite(OperatingLED, toggle);
    }

  }
}
void stopISR() {
  //gets button states
  // if (digitalRead(2)) {
  if (state == 5) {
    state = 6;
  }

  if ((state == 1) ) {

    state = 2;

  }
  if ((state == 3) ) {
    //  duty  = resl;
    cError = 0;
    iError = 0;
    dError = 0;
    state = 4;
    dcurrent = mcurrent;

  }

  else if ((state == 2) && ((int) duty >= resl * 0.2)) {
    state = 3;

    //  }

  }
}
void timerInit(void) {
  // this needs to be called in setup() or some functions won't work
  sei();

  // here we do bitshift operations for example TCCR1B = (0<< ICNC1) means shift 0 to ICNC1 times to the left and add all those operations for easier reading
  TCCR1B = 0; // first clear all bits
  TCCR1B =
    /*
       • ICNC1 noise canceler uses 4 cycle if all correct outputs, lets just.
       • Bit 7 – ICNC1: Input Capture Noise Canceler
      Setting this bit (to one) activates the input capture noise canceler. When the noise canceler is activated, the input from the
      input capture pin (ICP1) is filtered. The filter function requires four successive equal valued samples of the ICP1 pin for
      changing its output. The input capture is therefore delayed by four oscillator cycles when the noise canceler is enabled.
    */
    (0 << ICNC1) |

    /*
      • Bit 6 – ICES1: Input Capture Edge Select
      This bit selects which edge on the input capture pin (ICP1) that is used to trigger a capture event. When the ICES1 bit is
      written to zero, a falling (negative) edge is used as trigger, and when the ICES1 bit is written to one, a rising (positive) edge
      will trigger the capture.
      When a capture is triggered according to the ICES1 setting, the counter value is copied into the input capture register
      (ICR1). The event will also set the input capture flag (ICF1), and this can be used to cause an input capture interrupt, if this
      interrupt is enabled.
      When the ICR1 is used as TOP value (see description of the WGM13:0 bits located in the TCCR1A and the TCCR1B
      register), the ICP1 is disconnected and consequently the input capture function is disabled.
    */
    (0 << ICES1) |

    /*
      • Bit 4 - WGM13 Waveform Generation Mode
      Check datasheet
    */
    (1 << WGM13) |

    /*
      • Bit 3 - WGM12 Waveform Generation Mode
      Check datasheet
    */
    (1 << WGM12) |
    /* Rest of these are for clock division*/
    (0 << CS12) | (0 << CS11) | (1 << CS10);

  TCCR1A = (1 << COM1A1) | (0 << COM1A0) | // COM1A1, COM1A0 = 1, 0
           (1 << COM1B1) | (0 << COM1B0) | (1 << WGM11) | (0 << WGM10); // WGM11, WGM10 = 1, 0
  ICR1 = resl;

  TCNT1 = 0;

  OCR1A = 0;
  OCR1B = 0;

  TIMSK1 = (0 << ICIE1) | (0 << OCIE1B) | (0 << OCIE1A) | (0 << TOIE1);

  DDRB |= (1 << DDB1);
  DDRB |= (1 << DDB2);
  analogWriteSAH(9, 0);
}
void analogWriteSAH(uint8_t pin, uint16_t value) { //this write the PWM on digital pin 9
  pinMode(pin, OUTPUT);
  if (value == 0) {
    digitalWrite(9, 0);
  }
  else if (value == resl) {
    digitalWrite(9, 1);
  }
  else {
    if ((value >= 0) && (value < resl))

    {
      sbi(TCCR1A, COM1A1);
      OCR1A = value;
    }

  }
}
float temp_Meas() {
  float RawTemperature = (((analogRead(A7) * 5 / 1024.0) - 0.5) / 0.019);

  RunningAverageBuffer[NextRunningAverage++] = RawTemperature;
  if (NextRunningAverage >= RunningAverageCount)
  {
    NextRunningAverage = 0;
  }
  float RunningAverageTemperature = 0;
  for (int i = 0; i < RunningAverageCount; ++i)
  {
    RunningAverageTemperature += RunningAverageBuffer[i];
  }
  RunningAverageTemperature /= RunningAverageCount;
  return RunningAverageTemperature;
}
void PID() {

  for (int k = 0; k < 5; k++) current[k] = (analogRead(A5) - 512.0) * 0.0812;
  for (int k = 0; k < 5; k++) {
    for (int l = 0; l < k; l++) {
      temp = current[k];
      current[l] = current[k];
      current[k] = temp;
    }
  }
  mcurrent = current[3];
  if (mcurrent < 0) mcurrent = 0;
  cError = dcurrent - mcurrent;
  duty = duty + (Kp * (cError) + Kd * (dError - cError) + Ki * (iError));
  iError = iError + cError;
  dError = cError;
  if (duty > resl) duty = resl;
  if (state == 0 || state == 1 || state == 5 || state == 6) {
    duty = 0;
  }
}

void short_Circuit() {

  if (state == 6) {
    cbi(ADCSRA, ADEN);
    // set prescale to 16
    delay(50);
    sbi(ADCSRA, ADPS2) ;
    cbi(ADCSRA, ADPS1) ;
    cbi(ADCSRA, ADPS0) ;
    delay(50);
    sbi(ADCSRA, ADEN);
    for (int fault = 0; fault <= 10; fault++ ) {
      byte oldSREG = SREG; //save the existing SREG value
      cli(); //disable interrupts
      PINB = 1 << 1;
      PINB = 1 << 0;
      PINB = 1 << 0;
      PINB = 1 << 0;
      PINB = 1 << 0;
      PINB = 1 << 0;
      PINB = 1 << 0;
      PINB = 1 << 0;
      PINB = 1 << 0;
      PINB = 1 << 0;
      PINB = 1 << 0;
      PINB = 1 << 0;
      PINB = 1 << 0;
      PINB = 1 << 0;
      PINB = 1 << 0;
      PINB = 1 << 0;
      PINB = 1 << 0;
      PINB = 1 << 0;
      PINB = 1 << 0;
      PINB = 1 << 0;
      //delay(1);
      PINB = 1 << 1;
      ADMUX = (1 << REFS0) | (5 & 0x07) | (1 << ADLAR);
      sbi(ADCSRA, ADSC);
      while (bit_is_set(ADCSRA, ADSC));
      shortCurrent = ADCH;
      if (shortCurrent >= 135) {
        state = 0;
        SCP = 1;
        delay(50);
        break;
      }
      else {
        sbi(ADCSRA, ADPS2) ;
        sbi(ADCSRA, ADPS1) ;
        sbi(ADCSRA, ADPS0) ;
        delay(50);
        if (fault == 10) {
          sbi(ADCSRA, ADPS2) ;
          sbi(ADCSRA, ADPS1) ;
          sbi(ADCSRA, ADPS0) ;
          delay(50);
          state = 1;
          SCP = 0;
        }
      }
      SREG = oldSREG; //this will turn interrupts back on.
    }
  }
}
void check_Errors() {
  if (state != 5) {
    if (mcurrent > CURRENTLIMIT) {
      state = 0;
      OCP = 1;
    } else {
      OCP = 0;
    }

    if (temp_Meas() > TEMPERATURELIMIT) {
      state = 0;
      OTP = 1;
    } else {
      OTP = 0;
    }

    voltage = analogRead(UVLOpin);
    if (voltage >= 512) {
      UVLO = 0;
    } else {
      state = 0;
      UVLO = 1;
    }

    if (duty >= (resl / 2) && mcurrent <= 0.3 && state == 2) {
      state = 0;
      NC = 1;
    } else {
      NC = 0;
    }


    if  (duty <= (resl / 8) && mcurrent >= maxcurrent && state == 2) {
      state = 0;
      NF = 1;
    }
    else if (duty <= (resl * 0.90) && mcurrent >= maxcurrent && state == 2) {
      state = 0;
      OL = 1;

    } else {
      NF = 0;
      OL = 0;
    }
    if (state == 3 && duty != resl) {
      state = 0;
      DOL = 1;
    } else {
      DOL = 0;
    }

  }
}

void write_Errors() {
  if (OCP == 1) Serial.println("OVER CURRENT");
  if (OL == 1) Serial.println("OVER Cload");
  if (NC == 1) Serial.println("not connected");
  if (UVLO == 1) Serial.println("UVLO");
  if (OTP == 1) Serial.println("OVER T");
  if (NF == 1) Serial.println("NOF");
  if (DOL == 1) Serial.println("DOL");
  if (SCP == 1) Serial.println("SCP");


}
#include "wiring_private.h"
#include "pins_arduino.h"





int analog_Read(uint8_t pin)
{
  cbi(ADCSRA, ADPS2) ;
  cbi(ADCSRA, ADPS1) ;
  cbi(ADCSRA, ADPS0) ;
  uint8_t analog_reference = DEFAULT;
#if defined(analogPinToChannel)
#if defined(__AVR_ATmega32U4__)
  if (pin >= 18) pin -= 18; // allow for channel or pin numbers
#endif
  pin = analogPinToChannel(pin);
#elif defined(__AVR_ATmega1280__) || defined(__AVR_ATmega2560__)
  if (pin >= 54) pin -= 54; // allow for channel or pin numbers
#elif defined(__AVR_ATmega32U4__)
  if (pin >= 18) pin -= 18; // allow for channel or pin numbers
#elif defined(__AVR_ATmega1284__) || defined(__AVR_ATmega1284P__) || defined(__AVR_ATmega644__) || defined(__AVR_ATmega644A__) || defined(__AVR_ATmega644P__) || defined(__AVR_ATmega644PA__)
  if (pin >= 24) pin -= 24; // allow for channel or pin numbers
#else
  if (pin >= 14) pin -= 14; // allow for channel or pin numbers
#endif

#if defined(ADCSRB) && defined(MUX5)
  // the MUX5 bit of ADCSRB selects whether we're reading from channels
  // 0 to 7 (MUX5 low) or 8 to 15 (MUX5 high).
  ADCSRB = (ADCSRB & ~(1 << MUX5)) | (((pin >> 3) & 0x01) << MUX5);
#endif

  // set the analog reference (high two bits of ADMUX) and select the
  // channel (low 4 bits).  this also sets ADLAR (left-adjust result)
  // to 0 (the default).
#if defined(ADMUX)
#if defined(__AVR_ATtiny25__) || defined(__AVR_ATtiny45__) || defined(__AVR_ATtiny85__)
  ADMUX = (analog_reference << 4) | (pin & 0x07);
#else
  ADMUX = (analog_reference << 6) | (pin & 0x07);
#endif
#endif

  // without a delay, we seem to read from the wrong channel
  //delay(1);

#if defined(ADCSRA) && defined(ADC)
  // start the conversion
  sbi(ADCSRA, ADSC);

  // ADSC is cleared when the conversion finishes
  while (bit_is_set(ADCSRA, ADSC));

  // ADC macro takes care of reading ADC register.
  // avr-gcc implements the proper reading order: ADCL is read first.
  return ADC;
#else
  // we dont have an ADC, return 0
  return 0;
#endif
}

// Right now, PWM output only works on the pins with
// hardware support.  These are defined in the appropriate
// pins_*.c file.  For the rest of the pins, we default
// to digital output.

void loop() {
  short_Circuit();


  check_Errors();
  write_Errors();

  PID();
  // Field bağlı değil kodu ekle



  //else {
    analogWriteSAH(9, abs((int) duty));
  //}
  //analogWrite(9, (int)futy);

  //if( state != 0) Serial.println(temp_Meas());

  // Serial.print (" ");
  // Serial.print(iError);
  // Serial.print (" cerror: ");
  // Serial.print(cError);
  //Serial.print (" ");
  // Serial.print(cError);
  // Serial.print ("\t");
  Serial.println(analogRead(A5));
  //Serial.print (" ");
  //Serial.println(temp_Meas());
  //  Serial.println(state);

}
