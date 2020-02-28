float r = 255;

float g = 255;

float b = 255;

float specificColor = constrain(r, 0, 255);

int number= 0;

void setup(){
  size(800,800);
}

void draw(){
  background(r, g, b);
  
  if(number<=0 && number>=10){
    //Fire Element
    //background(255, 0, 0);
    strokeWeight(15);
    stroke(255, 99, 71);
    triangle(300, 550, 480, 200, 660, 550);
  }
  
  else if(r == 0 && g == 0 && b == 255){
    //Water Element
    background(0, 0, 255);
    strokeWeight(15);
    stroke(0, 0, 139);
    triangle(300, 200, 480, 550, 660, 200);
  }
  
  else if(r == 150 && g == 75 && b == 0){
    //Earth Element
    background(150,75,0);
    strokeWeight(15);
    stroke(181,101,29);
    triangle(300, 200, 480, 550, 660, 200);
    line(400, 400, 560, 400);
  }
  
   else if(r == 135 && g == 206 && b == 235){
    //Air/Wind Element
    background(135, 206, 235);
    strokeWeight(15);
    stroke(173, 216, 230);
    triangle(300, 550, 480, 200, 660, 550);
    line(400, 350, 560, 350);
   }
   
   
   
  
}

void mousePressed(){
  //int specificColor = constrain(255, 0, 255);
  r = random(0, 255);
  
  g = random(0, 255);
  
  b = random(0,255);
  
  number= int(random (1,10));
  
  println (number);
 
}
