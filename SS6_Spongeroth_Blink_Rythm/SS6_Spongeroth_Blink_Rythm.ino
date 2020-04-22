//Quincy Lewis_SS6_Blink_Rythm
//Sets up constant integer variables for pins (will not change)
const int buttonPin = 2;
const int LED = 12;
int LED2 = 10;
int LED3 = 8;
int LED4 = 6;

int buttonState = 0;

void setup() {
  // put your setup code here, to run once:
  pinMode(buttonPin, INPUT);
  pinMode(LED, OUTPUT);
  pinMode(LED2, OUTPUT);
  pinMode(LED3, OUTPUT);
  pinMode(LED4, OUTPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
  buttonState = digitalRead(buttonPin);
  delay(100);

  if (buttonState == HIGH) {
    digitalWrite(LED, HIGH);
    delay(500);
    digitalWrite(LED, LOW);
    delay(300);
    digitalWrite(LED, HIGH);
    delay(600);
    digitalWrite(LED, LOW);
    delay(900);
    digitalWrite(LED, HIGH);
    delay(500);
    digitalWrite(LED, LOW);
    delay(300);
    digitalWrite(LED, HIGH);
    delay(600);
    digitalWrite(LED, LOW);
    delay(900);
    //LED2
    digitalWrite(LED2, HIGH);
    delay(100);
    digitalWrite(LED2, LOW);
    delay(10);
    digitalWrite(LED2, HIGH);
    delay(400);
    digitalWrite(LED2, LOW);
    delay(1);
    digitalWrite(LED2, HIGH);
    delay(100);
    digitalWrite(LED2, LOW);
    delay(40);
    digitalWrite(LED2, HIGH);
    delay(500);
    digitalWrite(LED2, LOW);
    delay(30);
    digitalWrite(LED2, HIGH);
    delay(100);
    digitalWrite(LED2, LOW);
    delay(30);
    digitalWrite(LED2, HIGH);
    delay(400);
    digitalWrite(LED2, LOW);
    delay(30);
    digitalWrite(LED2, HIGH);
    delay(100);
    digitalWrite(LED2, LOW);
    delay(40);
    digitalWrite(LED2, HIGH);
    delay(500);
    digitalWrite(LED2, LOW);
    delay(50);
    //LED3
    digitalWrite(LED3, HIGH);
    delay(900);
    digitalWrite(LED3, LOW);
    delay(400);
    digitalWrite(LED3, HIGH);
    delay(100);
    digitalWrite(LED3, LOW);
    delay(800);
    digitalWrite(LED3, HIGH);
    delay(200);
    digitalWrite(LED3, LOW);
    delay(400);
    digitalWrite(LED3, HIGH);
    delay(1000);
    digitalWrite(LED3, LOW);
    delay(10);
    //LED4
    digitalWrite(LED4, HIGH);
    delay(1000);
    digitalWrite(LED4, LOW);
    delay(70);
    digitalWrite(LED4, HIGH);
    delay(600);
    digitalWrite(LED4, LOW);
    delay(100);
    digitalWrite(LED4, HIGH);
    delay(2000);
    digitalWrite(LED4, LOW);
    delay(70);
    digitalWrite(LED4, HIGH);
    delay(1000);
    digitalWrite(LED4, LOW);
    delay(100);
  }
  else {
    digitalWrite(LED, LOW);
    digitalWrite(LED2, LOW);
    digitalWrite(LED3, LOW);
    digitalWrite(LED4, LOW);
    
  }

}
