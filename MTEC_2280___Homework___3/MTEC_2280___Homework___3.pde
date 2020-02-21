//Rotation Animation by Quincy Lewis

float x = 0;
float y = 0;
float angle = 0.10;
float speed = 0.05;
float scal = 100;

void setup(){
  size(800,800);
  ellipseMode(CENTER);
}

void draw(){
  background(255);
  
  for(int y = 0; y <= width; y++){
    fill(255,0,0);
    rect(x, y, 55, 55);
  }
  
  x+=5;
  
  for(int x = 0; x <= height; x++){
    fill(0,0,255);
    rect(x, y, 55, 55);
  }
  
  y+=5;
  
  if(x >= width+50 && y >= height+50){
    float a = sin(angle) * scal;
    float b = cos(angle) * scal;
    ellipse(a, b, 200, 200);
    angle = angle + speed;
  }
  
  
}
