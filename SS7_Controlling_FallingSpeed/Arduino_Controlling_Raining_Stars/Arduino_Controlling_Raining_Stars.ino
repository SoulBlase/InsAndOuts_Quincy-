const int Sensor = A0;
int val = 0;

void setup() {
  pinMode(Sensor, INPUT);
  Serial.begin(9600);
}

void loop() {
  val = analogRead(Sensor);
  val = val / 4;
  delay(100);

  Serial.write(val);

}
