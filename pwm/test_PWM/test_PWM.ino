void setup() {
  // put your setup code here, to run once:
TCCR0B = TCCR0B & B11111000 | B00000001;
}

void loop() {
  // put your main code here, to run repeatedly:
analogWrite(5, 180);
}
