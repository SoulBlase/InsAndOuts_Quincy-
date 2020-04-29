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
  if(val >= 1 && val <= 100){
    //Fire Element
    background(255, 0, 0);
    strokeWeight(15);
    stroke(255, 99, 71);
    triangle(300, 550, 480, 200, 660, 550);
  }
  else if(val >= 101 && val < 140){
    //Water Element
    background(0, 0, 255);
    strokeWeight(15);
    stroke(0, 0, 139);
    triangle(300, 200, 480, 550, 660, 200);
  }
  else if(val >= 141 && val <= 180){
    //Earth Element
    background(150,75,0);
    strokeWeight(15);
    stroke(181,101,29);
    triangle(300, 200, 480, 550, 660, 200);
    line(400, 400, 560, 400);
  }
  else if(val >= 181 && val <= 255){
    //Air/Wind Element
    background(135, 206, 235);
    strokeWeight(15);
    stroke(173, 216, 230);
    triangle(300, 550, 480, 200, 660, 550);
    line(400, 350, 560, 350);
  }
  else{
    background(255);
  }
  
}
