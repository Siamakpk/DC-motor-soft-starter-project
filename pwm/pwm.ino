

int pwm = 5;    // pwm connected to digital pin 9 for 1MHZ 
const int startbuttonPin = 2;     // the number of the pushbutton pin

int startbuttonState = 0;         // variable for reading the pushbutton status

int duty=0;               //pwm duty cycle variable
int val = 0;

void setup() {
  pinMode(startbuttonPin, INPUT); //initialize the pushbutton pin as an input

  attachInterrupt(1, stopISR, RISING);

  TCCR0B = TCCR0B & B11111000 | B00000001;

  Serial.begin(9600);

}

void loop() {
  startbuttonState = digitalRead(startbuttonPin);
  
 if (startbuttonState == HIGH) {
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
void stopISR(){
    analogWrite(pwm, 0);
    startbuttonState = LOW;
    duty=0;
    }
  
