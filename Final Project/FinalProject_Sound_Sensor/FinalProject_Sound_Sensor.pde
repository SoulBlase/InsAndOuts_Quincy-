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
  player = minim.loadFile("Dramatic-bass-loop-110-bpm.wav");
  player2 = minim.loadFile("Drum-beat-loop-112-bpm.wav");
  player3 = minim.loadFile("Chillwave-drum-loop-115-bpm.wav");
  
  printArray(Serial.list()); // this line prints the port list to the console
  String portName = Serial.list()[0]; //change the number in the [] for the port you need
  myPort = new Serial(this, portName, 9600);
  
  distance = constrain(distance, 1, 200);
  
  //player.play();
  //player.loop();
  //player.unmute();
}

void draw(){
  if ( myPort.available() > 0) { // If data is available,
    val = myPort.read(); // read it and store it in val
    
  }
  
  for(int i = 0; i < 100; i = i + 4){
    x = 1;
    y = 50 + sin(a) * 40.0;
    line(i, 50, i, 50+sin(a)*40.0);
    prevX = x;
    prevY = y;
    a = a + in;
  }
  
  if(distance >= 1 && distance <= 50){
    player.play();
    //Stop(true);
  }
  else if(distance >= 51 && distance <= 100){
    player2.play();
  }
  else if(distance >= 101 && distance <= 200){
    player3.play();
  }
  
  println(val);
}


void Stop(boolean playOver){
  if(distance >= 51 && distance <= 100){
    //playOver = true;
    player.close();
  }
  else if(distance >= 101 && distance <= 200){
    player2.close();
  }
  else if(distance >= 1 && distance <= 50){
    player3.close();
  }
  minim.stop();
  
}

/*void SerialEvent(Serial port){
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
}*/
