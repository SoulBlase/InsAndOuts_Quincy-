//Quincy Lewis 
import processing.serial.*;

Serial myPort;
int val;



void setup(){
  size(800, 800);
  printArray(Serial.list());
  String portName = Serial.list()[0];
  myPort = new Serial(this, portName, 9600);
  rectMode(CENTER);
  ellipseMode(CENTER);
}

void draw(){
  if ( myPort.available() > 0) { 
    val = myPort.read(); 
  }
  
  background(255);
  if(val >= 1 && val <= 120){
    rect(width/2, height/2, 100, 100);
  }
  else if(val >= 121 && val < 180){
    ellipse(width/4, height/4, 50, 50);
  }
  else if(val >= 181 && val <= 255){
    background(0);
  }
  
}
