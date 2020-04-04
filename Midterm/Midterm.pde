//Solar Eclipse: Raining Stars by Quincy Lewis
//control Sun and Moon with collision detection(may change)
//Sun and Moon explodes into Gradient.
//Create a gradient once the Solar Eclipse happens
//Create a timer for the Solar Eclipse(may change)
//Create Star Objects for interaction (mouseclick for star to explode)

//Maybe draw the solar eclipse without the sun and moon separate?
SolarEclispe System;
//Star 

/*float x = -50;
float y = 50;*/
color b1, b2, c1, c2;
int Y_AXIS = 1;
int X_AXIS = 2;

void setup(){
  size(800,800);
  rectMode(CENTER);
  ellipseMode(CENTER);
  b1 = color(255);
  b2 = color(0);
  c1 = color(204, 102, 0);
  c2 = color(0, 102, 153);
  System = new SolarEclispe(); 
}

void draw(){
  background(15, 217, 242);
  fill(59,9,178);
  rect(800, 0, width, height *2);//Moon's Side
  
  System.Sun();
  System.Moon();
  //System.Gradient(0, 0, width/2, height, b1, b2, X_AXIS);
  //System.Gradient(width/2, 0, width/2, height, b2, b1, X_AXIS);
  //System.Gradient(50, 90, 540, 80, c1, c2, Y_AXIS);
  //System.Gradient(50, 190, 540, 80, c2, c1, X_AXIS);
  
}

void mousePressed(){
  
}

class SolarEclispe{
  float xposSun, yposSun, xposMoon, yposMoon;
  int r, g, b;
  int dim; 
  int Y_AXIS = 1;
  int X_AXIS = 2;
  
  
  SolarEclispe(){
    xposSun = -50;
    yposSun = 50;
    xposMoon = 850;
    yposMoon = 50;
    r = 0;
    g = 0;
    b = 0;
  }
  
  void Sun(){
    fill(234, 227, 0);
    ellipse(xposSun, yposSun, 50, 50);
    xposSun+=3;
    println("Sun: x = " + xposSun);
    if (xposSun > width + 50){
      xposSun = -50;
    }
  }

  void Moon(){
    fill(204, 206, 206);
    ellipse(xposMoon, yposMoon, 50, 50);
    xposMoon-=3;
    println("Moon: x = " + xposMoon);
    if (xposMoon < -50){
      xposMoon = width + 50;
    }
  }
  
  
  void Gradient(int x, int y, float w, float h, color c1, color c2, int axis){
    if (axis == Y_AXIS) {  // Top to bottom gradient
      for (int i = y; i <= y+h; i++) {
        float inter = map(i, y, y+h, 0, 1);
        color c = lerpColor(c1, c2, inter);
        stroke(c);
        line(x, i, x+w, i);
      }
    }  
    else if (axis == X_AXIS) {  // Left to right gradient
      for (int i = x; i <= x+w; i++) {
        float inter = map(i, x, x+w, 0, 1);
        color c = lerpColor(c1, c2, inter);
        stroke(c);
        line(i, y, i, y+h);
      }
    }
  }
  
  void Collision(){
    
  }
}
