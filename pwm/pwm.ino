

int pwm = 5;    // pwm connected to digital pin 9 for 1MHZ 
const int errorPin = 16;     // the number of the error pin
const int startbuttonPin = 15;     // the number of the start pushbutton pin
const int startingled = 12;     // the number of the starting led
const int errorled = 11;     // the number of the error led
const int operatingled = 10;     // the number of the operating mode led

int errorstate = 1;         // variable for code state: 0 for error,1 for ready, 2 for starting, 3 for operating
int startbuttonState=0; //state for start/stop

int duty=0;               //pwm duty cycle variable
int current = 0;

void setup() {
  pinMode(startbuttonPin, INPUT); //initialize the pushbutton pin as an input
  pinMode(startingled, OUTPUT); //initialize the pushbutton pin as an input
  pinMode(errorled, OUTPUT); //initialize the pushbutton pin as an input
  pinMode(operatingled, OUTPUT); //initialize the pushbutton pin as an input

  attachInterrupt(1, stopISR, RISING);

  TCCR0B = TCCR0B & B11111000 | B00000001;

  Serial.begin(9600);

}

void loop() {
  
  errorstate = !digitalRead(errorPin);
  if (errorstate) {
    digitalWrite(errorled,!errorled);
    delay(1000);
  }
  else{
    digitalWrite(errorled,LOW);
  }
  startbuttonState = digitalRead(startbuttonPin);
  

                       
                         
                     
  
  
 if (errorState == LOW) {
     //fade in from min to max in increments of 1 points:
    for (duty = 0 ; duty <= 255; duty += 1) {
      val = analogRead(A0);  // read the input pin
      Serial.println(val);
      //sets the value (range from 0 to 255):
      if (startbuttonState){
        
        analogWrite(pwm, duty);
      }
      else{
       analogWrite(pwm, 0);
        break;
      }
      //wait for 30 milliseconds to see the dimming effect
     delay(6000);
    
  
}
 }
}
void stateISR(){
  errorstate = digitalRead(errorPin);
  startbuttonState = digitalRead(startbuttonPin);
  stopbuttonState = digitalRead(stopbuttonPin);
  restartbuttonState = digitalRead(restartbuttonPin);


 if ( errorState == LOW && startbuttonstate == LOW && stopbuttonState == LOW&& restartbuttonState == LOW) { 
  
                          state=1;
  
                          } 
 if (startbuttonstate == HIGH && errorState == HIGH && stopbuttonState == LOW&& restartbuttonState == LOW) { 
  
                          state=2;
  
                          }
 if (startbuttonstate == LOW && errorState == HIGH && stopbuttonState == HIGH && restartbuttonState == LOW) { 
  
                          state=1;
  
                          }
 else { 
                          state=0;
                          
                          }                          
                     
}
void stopISR(){
    analogWrite(pwm, 0);
    startbuttonState = LOW;
    duty=0;
    }
  
