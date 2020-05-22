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
  distance = duration * 0.1 / 2;

  if (0 < distance < 200)(
      Serial.println(distance);
  }
  
  delay(100);
}
