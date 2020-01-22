//timer0 will interrupt at 2kHz
//timer1 will interrupt at 1Hz




int pwm = 5;    // pwm connected to digital pin 9 for 1MHZ 
const int errorPin = A7;     // the number of the error pin
const int startbuttonPin = 11;     // the number of the start pushbutton pin
const int errorled = 8;     // the number of the starting led
const int readyled = 9;     // the number of the error led
const int operatingled = 7;     // the number of the operating mode led

boolean errorstate=0;
boolean toggle=LOW;     
int state = 1;         // variable for code state: 0 for error,1 for ready, 2 for starting, 3 for operating
int startbuttonState=0; //state for start/stop
boolean error_pin;
int duty=0;               //pwm duty cycle variable
float current[5] = {0,0,0,0,0};
float temp=0;



void setup(){
  attachInterrupt(0, stopISR, HIGH);
 TCCR0A = 0;
 TCCR0B = 0;
 TCCR0A = 0b01000001;
 TCCR0B = 0b00000001;
 
 // TCCR0A = TCCR0A & B11111110 | B01010010;
 // TCCR0B = TCCR0B & B11111000 | B00000011; // for PWM frequency of 62500.00 Hz
   Serial.begin(9600);
  //set pins as outputs
   pinMode(9, OUTPUT);
   pinMode(8, OUTPUT);
   pinMode(7, OUTPUT);
   pinMode(A7, INPUT);
   pinMode(11, INPUT);
   pinMode(2, INPUT);   
   

cli();//stop interrupts

//set timer0 interrupt at 2kHz
  TCCR2A = 0;// set entire TCCR2A register to 0
  TCCR2B = 0;// same for TCCR2B
  TCNT2  = 0;//initialize counter value to 0
  // set compare match register for 2khz increments
  OCR2A = 2048;// = (16*10^6) / (2000*64) - 1 (must be <256)
  // turn on CTC mode
  TCCR2A |= (1 << WGM01);
  // Set CS01 and CS00 bits for 64 prescaler
  TCCR2B |= (1 << CS01) | (1 << CS00);   
  // enable timer compare interrupt
  TIMSK2 |= (1 << OCIE0A);

//set timer1 interrupt at 1Hz
  TCCR1A = 0;// set entire TCCR1A register to 0
  TCCR1B = 0;// same for TCCR1B
  TCNT1  = 0;//initialize counter value to 0
  // set compare match register for 1hz increments
  OCR1A = 1562;// = (16*10^6) / (1*1024) - 1 (must be <65536) //15624
  // turn on CTC mode
  TCCR1B |= (1 << WGM12);
  // Set CS12 and CS10 bits for 1024 prescaler
  TCCR1B |= (1 << CS12) | (1 << CS10);  
  // enable timer compare interrupt
  TIMSK1 |= (1 << OCIE1A);




sei();//allow interrupts

}//end setup






ISR(TIMER2_COMPA_vect){//timer0 interrupt 2kHz toggles pin 8
  
  

 //errorstate=digitalRead(errorPin);

                            
}

ISR(TIMER1_COMPA_vect){//timer1 interrupt 1Hz toggles pin 13 (LED)
  
  error_pin=digitalRead(errorPin);
   errorstate=error_pin;
  // Serial.println(errorstate);
  //Serial.println(error_pin);
  //Serial.print(" duty: ");
  //Serial.println(duty);

  //Serial.print(" state: ");
  //Serial.println(state); 

  //Serial.print(" errorled: ");
  //Serial.println(errorled);

  
 if (errorstate){
    state=0;    
  }
// if (errorstate==0) {
 // state=1;
 //}
  if (state==0) {
  toggle = !toggle;
  duty=0;
  digitalWrite(errorled,toggle);
  digitalWrite(readyled,LOW);
  digitalWrite(operatingled,LOW);
  }
  if (state==1) {

    
  toggle = !toggle;
  duty=0;

  
  digitalWrite(errorled,LOW);
  digitalWrite(readyled,toggle);
  digitalWrite(operatingled,LOW);
  }
  if (state==2) {
  
  toggle = !toggle;
  if (duty<250){duty=duty+1;
  }
  else if (duty==250){
    duty=250;
    state=3;
  }
  digitalWrite(errorled,LOW);
  digitalWrite(readyled,!toggle);
  digitalWrite(operatingled,toggle);
  }
  if (state==3) {
  digitalWrite(errorled,LOW);
  digitalWrite(readyled,HIGH);
  digitalWrite(operatingled,HIGH);
  }
  if (state==4){
    toggle = !toggle;
  digitalWrite(errorled,LOW);
  digitalWrite(readyled,toggle);
  digitalWrite(operatingled,toggle);  
  
  
  if (duty>5){
    duty=duty-1;
    
  }
  else if (duty<=5){
    duty=0;
    state=1;
  }
  }
 
 }
 
void stopISR(){
  //gets button states
  delay(100);
  if(!digitalRead(2)){

    if((state==1) &&(!errorstate) ){
  
    state=2;

  }
        if((state==3) &&(!errorstate) ){
  
    state=4;

  }
  
    else  if((state==2) &&(duty >= 30) ){
  
    state=3;

  }


 
}
    
}  

void loop(){
  //current = analogRead(A0);  // read the input pin
  for (int k=0;k<5;k++)  current[k] = -(analogRead(A4)-512)*50/1024.0;
  for (int k=0;k<5;k++) {for (int l=0;l<k;l++) {temp=current[k];current[l]=current[k];current[k]=temp;}}
  Serial.println(current[3]);
  analogWrite(pwm, duty);
}
