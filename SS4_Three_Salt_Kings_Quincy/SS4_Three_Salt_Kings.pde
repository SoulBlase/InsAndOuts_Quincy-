//Three Salt Kings by Quincy Lewis
import processing.sound.*;

PImage img;
PImage img2;
PImage img3;



SoundFile file;
SoundFile file2;
SoundFile file3;


void setup(){
  size(800,800);
  img = loadImage("DBHoxVaXkAAnh9H.jpg");
  img2 = loadImage("Phil_Burnell.png");
  img3 = loadImage("418673_medium-optimized-2.jpg");
  file = new SoundFile(this, "Low Tier God Classic Clips Collection (Salt & Rage).mp3");
  file2 = new SoundFile(this, "DSP Tries It Best RAGE Moments Salty Fails Compilation.mp3");
  file3 = new SoundFile(this, "WingsOfRedemption Rage Compilation [Best Of 2019].mp3");
}

void draw(){
  background(255);
  strokeWeight(4);
  rect(400, 0, width/2, height/2);
  rect(0, 0, width/2, height/2);
  rect(0, height/2, width, height/2);
  image(img, 0, height/2, width, height/2);
  image(img2, 0, 0, width/2, height/2);
  image(img3, 400, 0, width/2, height/2);
  
  
}

void MousePressed(){
  if(mouseX < height/2){
    
    
  }
}
