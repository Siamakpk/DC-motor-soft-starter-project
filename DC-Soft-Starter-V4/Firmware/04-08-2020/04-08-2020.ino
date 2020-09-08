#define FREQUENCY 40000                                                                 // Definition of the switching frequency.
#define CURRENTLIMIT 18                                                                 // Definition of the Max current.                                                                   
#define sbi(sfr, bit)(_SFR_BYTE(sfr) |= _BV(bit))                                       // Definition for sbi macro to use in PWM function, to work as needed.

long resl;                                                                              // Variable for the calculated resolution of the PWM signal.
int t;                                                                                  // Variable that counts up to light the LED up in intervals.
boolean toggle = LOW;                                                                   // Variable for leds to blink.
boolean errorstate = 0;                                                                 // Variable for error state, when this is 1 a reboot is needed.
int state = 1;                                                                          // Variable for state, either 1,2,3 or 4.
float UVLO;                                                                             // Variable for under voltage signal.
const int ErrorLED = 3;                                                                 // Constants for pins.
const int ReadyLED = 6;                                                                 // Constants for pins.
const int OperatingLED = 11;                                                            // Constants for pins.
const int PWM = 9;                                                                      // Constants for pins, we use digital pin 9, its the one that is connected to timer 1.
const int UVLOpin = A6;                                                                 // Constant  for under voltage lockout pin number.
const int CurrentSensePin = A5;                                                         // Constant  for current sense pin number.
float Kp,Ki,Kd;                                                                         // Variables for PID control. 
float dcurrent = 0;                                                                     // Variable  for desired current in PID control.
float mcurrent = 0;                                                                     // Variable  for measured current in PID control.
float cError = 0;                                                                       // Variable for current error in PID control.
float dError = 0;                                                                       // Variable for derivative(Rate) error in PID control.                                                                     
float iError = 0;                                                                       // Variable for integral(Cumulative) error in PID control.
float duty = 0.0;                                                                       // Variable for duty cycle.
float current[5] = {0,0,0,0,0};                                                         // Matrix for current, to use in averaging.
float temp = 0;                                                                         // Variable for temporary current, to use in averaging.


const int RunningAverageCount = 200;
float RunningAverageBuffer[RunningAverageCount];
int NextRunningAverage;
 
float tempe = 0;

void setup() {
  Kp = 0.5;
  Ki = 0.0;
  Kd = 0.0;
  attachInterrupt(0, stopISR, HIGH);                                                    // Interrupt pin for button inputs (HIGHER VALUE CAP NEEDED FOR BETTER DEBOUNCE).
  pinMode(PWM, OUTPUT);                                                                 // This is pwm pin connected to timer 1 (1A).
  pinMode(ErrorLED, OUTPUT);                                                            // ErrorLED set as output.
  pinMode(ReadyLED, OUTPUT);                                                            // ReadyLED set as output.
  pinMode(OperatingLED, OUTPUT);                                                        // OperatingLED set as output.
  pinMode(CurrentSensePin, INPUT);                                                      // Current sensor set as input.
  pinMode(UVLOpin, INPUT);                                                              // Under voltage set as input.
  Serial.begin(115200);                                                                 // Start serial communication with baud rate of 115200.
  resl = (16000000 / FREQUENCY) - 1;                                                    // Calculate the resolution in given frequency (For variable frequency drive do this operation in loop !)                  
  timerInit();                                                                          // Timer adjustments need to be made in setup.

  // TIMER 2 for interrupt frequency 1000 Hz:
  cli(); // stop interrupts
  TCCR2A = 0; // set entire TCCR2A register to 0
  TCCR2B = 0; // same for TCCR2B
  TCNT2 = 0; // initialize counter value to 0
  // set compare match register for 1000 Hz increments
  OCR2A = 249; // = 16000000 / (64 * 1000) - 1 (must be <256)
  // turn on CTC mode
  TCCR2B |= (1 << WGM21);
  // Set CS22, CS21 and CS20 bits for 64 prescaler
  TCCR2B |= (1 << CS22) | (0 << CS21) | (0 << CS20);
  // enable timer compare interrupt
  TIMSK2 |= (1 << OCIE2A);
  sei(); // allow interrupts
}

ISR(TIMER2_COMPA_vect) { //timer2 interrupt 1kHz toggles pin 13 (LED)
  t++;
  if (t == 25) {
    t = 0;

    if (errorstate) {
      state = 0;
    }
    //if (errorstate==0) {
    // state=1;
    // }
    if (state == 0) {
      toggle = !toggle;
      duty = 0;
      digitalWrite(9, 0);
      digitalWrite(ErrorLED, HIGH);
      digitalWrite(ReadyLED, LOW);
      digitalWrite(OperatingLED, LOW);
    }
    if (state == 1) {

      toggle = !toggle;
      duty = 0;
      digitalWrite(ErrorLED, LOW);
      digitalWrite(ReadyLED, toggle);
      digitalWrite(OperatingLED, LOW);
    }
    if (state == 2) {

      toggle = !toggle;
       dcurrent = dcurrent + 0.1;
      //dcurrent = 10;
      if (dcurrent >= 15) dcurrent = 15;

      if (duty >= (resl*0.99)) {
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
        state = 1;
      }
    }

  }
}

void stopISR() {
  //gets button states
 // if (digitalRead(2)) {

    if ((state == 1) && (!errorstate)) {

      state = 2;

    }
    if ((state == 3) && (!errorstate)) {
    //  duty  = resl;
      cError = 0;
      state = 4;
      dcurrent = mcurrent;

    }

    else if ((state == 2) && ((int) duty >= resl*0.2)) {

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

void analogWriteSAH(uint8_t pin, uint16_t value) //this write the PWM on digital pin 9
{
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
float temp_Meas(){
  float RawTemperature = (((analogRead(A7)*5/1024.0)-0.5)/0.019);
 
  RunningAverageBuffer[NextRunningAverage++] = RawTemperature;
  if (NextRunningAverage >= RunningAverageCount)
  {
    NextRunningAverage = 0; 
  }
  float RunningAverageTemperature = 0;
  for(int i=0; i< RunningAverageCount; ++i)
  {
    RunningAverageTemperature += RunningAverageBuffer[i];
  }
  RunningAverageTemperature /= RunningAverageCount;
  return RunningAverageTemperature/10.0;
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
}
void loop() {
  if (mcurrent > CURRENTLIMIT) state = 0;
  //if (state == 0){
  //}
  //else 
  PID();
  // Field bağlı değil kodu ekle
  if (duty >= (resl / 2) && mcurrent <= 0.3 && state == 2) state = 0;
  if (state == 0 || state == 1) {
    duty = 0;
    
  }
  //else {
    analogWriteSAH(9, abs((int) duty));
  //}
  //analogWrite(9, (int)futy);
  if (analogRead(A6) <= 200) state = 0;
  UVLO = analogRead(UVLOpin);
  if (UVLO >= 512) {
    errorstate = 0;
  }
  else {
    errorstate = 1;
  }
 Serial.print ("duty ");
 
  Serial.print(temp_Meas());
 // Serial.print (" ");
 // Serial.print(iError);
  Serial.print (" cerror: ");
 // Serial.print(cError);
  //Serial.print (" ");
  Serial.print(cError);
  Serial.print (" ");
  Serial.print(dcurrent);
  Serial.print (" ");
  Serial.println(mcurrent);
  //Serial.println(state);

}
