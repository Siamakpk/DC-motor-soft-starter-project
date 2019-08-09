boolean toggle = false;

void setup() {
  pinMode(9, OUTPUT);
  pinMode(11, INPUT);
  Serial.begin(9600);
  pinMode(2, INPUT); 
  attachInterrupt(0, stopISR, RISING);
}

void loop() {


  
}
void stopISR(){
    toggle = !toggle;
    digitalWrite(9,toggle);
    delay(500);
    
    }
