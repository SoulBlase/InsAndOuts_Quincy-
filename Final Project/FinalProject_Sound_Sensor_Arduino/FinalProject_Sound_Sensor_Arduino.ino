const int trigPin = 8;
const int echoPin = 7;

long duration, distance, inches, cm;

void setup() {
  Serial.begin(9600);
  pinMode(echoPin, INPUT);
  pinMode(trigPin, OUTPUT);

}

void loop() {
  digitalWrite(trigPin, LOW);
  delayMicroseconds(2);

  digitalWrite(trigPin, HIGH);
  delayMicroseconds(10);
  digitalWrite(trigPin, LOW);


  duration = pulseIn(echoPin, HIGH);
  delay(200);
  distance = duration * 0.1 / 2;
  distance = map(distance, 0, 4000, 0, 255);
  //Serial.println(distance);

  if (distance >  0 && distance < 255){
      Serial.write(distance);
}
  
  delay(100);
}
