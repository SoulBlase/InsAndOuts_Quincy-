//Solar Eclipse: Raining Stars by Quincy Lewis
//control Sun and Moon with collision detection(may change)
//Sun and Moon explodes into Gradient.
//Create a gradient once the Solar Eclipse happens
//Create a timer for the Solar Eclipse(may change)
//Create Star Objects for interaction (mouseclick for star to explode)

//Maybe draw the solar eclipse without the sun and moon separate?
SolarEclispe System;
Star[] stars =  new Star[200];

float xposSun, yposSun, xposMoon, yposMoon;
color b1, b2, c1, c2;
int Y_AXIS = 1;
int X_AXIS = 2;
int State = 1; // state variable

void setup() {
  size(800, 800);
  rectMode(CENTER);
  ellipseMode(CENTER);
  b1 = color(255);
  b2 = color(0);
  c1 = color(204, 102, 0);
  c2 = color(0, 102, 153);
  System = new SolarEclispe(); 
  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star(int(random(width)), int(random(50, height + 100)));
  }
}

void draw() {
  background(15, 217, 242);
  fill(59, 9, 178);
  rect(800, 0, width, height *2);//Moon's Side
  if (State == 1) {
    System.Sun();
    System.Moon();
  }
  if (State == 2) {
    System.Collision();
  }

  println(State);
}

void keyPressed() {
  if (key == '1') {
    State = 1;
  }
  if ( key == '2') {
    State = 2;
  }
}

class SolarEclispe {
  int r, g, b; 
  int Y_AXIS = 1;
  int X_AXIS = 2;

  SolarEclispe() {
    xposSun = -50;
    yposSun = 50;
    xposMoon = 850;
    yposMoon = 50;
    r = 0;
    g = 0;
    b = 0;
  }

  void Sun() {
    fill(234, 227, 0);
    ellipse(xposSun, yposSun, 50, 50);
    xposSun+=4;
    println("Sun: x = " + xposSun);
    if (xposSun > width + 50) {
      xposSun = -50;
    }
  }

  void Moon() {
    fill(204, 206, 206);
    ellipse(xposMoon, yposMoon, 50, 50);
    xposMoon-=4;
    println("Moon: x = " + xposMoon);
    if (xposMoon < -50) {
      xposMoon = width + 50;
    }
  }

  //This code is borrowed from the processing website
  void Gradient(int x, int y, float w, float h, color c1, color c2, int axis) {
    if (axis == Y_AXIS) {  // Top to bottom gradient
      for (int i = y; i <= y+h; i++) {
        float inter = map(i, y, y+h, 0, 1);
        color c = lerpColor(c1, c2, inter);
        stroke(c);
        line(x, i, x+w, i);
      }
    } else if (axis == X_AXIS) {  // Left to right gradient
      for (int i = x; i <= x+w; i++) {
        float inter = map(i, x, x+w, 0, 1);
        color c = lerpColor(c1, c2, inter);
        stroke(c);
        line(i, y, i, y+h);
      }
    }
  }

  void Collision() {
    System.Gradient(0, 0, width/2, height, b1, b2, X_AXIS);
    System.Gradient(width/2, 0, width/2, height, b2, b1, X_AXIS);
    for (int i = 0; i < stars.length; i++) {
      stars[i].display();
      stars[i].fall();
    }
  }
}
