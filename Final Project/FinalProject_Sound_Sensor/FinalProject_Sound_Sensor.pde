import processing.sound.*;
import ddf.minim.*;
import processing.serial.*; //imports Serial library from Processing

Minim minim;
AudioPlayer player, player2, player3;

Serial myPort; // creates object from Serial class
int val=0; // creates variable for data coming from serial port

String PortStr;
int distance;
int volume = 0;

float a = 0.0;
float in = TWO_PI/25;
float prevX, prevY = 50, x, y;

void setup(){
  size(800, 800);
  
  minim = new Minim(this);
  player = minim.loadFile("Low Tier God Classic Clips Collection (Salt & Rage)");
  player2 = minim.loadFile("DSP Tries It Best RAGE Moments Salty Fails Compilation");
  player3 = minim.loadFile("WingsOfRedemption Rage Compilation [Best Of 2019]");
  
  printArray(Serial.list()); // this line prints the port list to the console
  String portName = Serial.list()[0]; //change the number in the [] for the port you need
  myPort = new Serial(this, portName, 9600);
  
  distance = constrain(distance, 1, 200);
  
  player.play();
  player.loop();
  player.unmute();
}

void draw(){
  byte[] portBuffer = new byte[10];
  if ( myPort.available() > 0) { // If data is available,
    val = myPort.read(); // read it and store it in val
    portBuffer = myPort. readBytes();
  }
  
  for(int i = 0; i < 100; i = i + 4){
    x = 1;
    y = 50 + sin(a) * 40.0;
    line(i, 50, i, 50+sin(a)*40.0);
    prevX = x;
    prevY = y;
    a = a + in;
  }
  
}


void Stop(){
  player.close();
  player2.close();
  player3.close();
  minim.stop();
  
}

void SerialEvent(Serial port){
  if (distance < 0){
    distance = 0;
  }
  PortStr = (new String(bufferUntil('\n')));
  if(PortStr != null) {
    PortStr = trim(PortStr);
    distance = constrain(distance, 1 , 200);
    float volume = int(map(Integer.parseInt(PortStr),0,100,-50,50));
    player.setGain(volume); 
    println(volume);
  }
}
