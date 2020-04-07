class Star{
  int x, y;
  int x2, y2;
  int diameter; //fixed diameter
  int r, g, b;
  
  Star(int altX, int altY, int altX2, int altY2){
    //constructor here
    x = altX;
    y = altY;
    x2 = altX2;
    y2 = altY2;
    r = 216; 
    g = 216;
    b = 216;
  }
  
  void display(){
    //star object here
    fill(r,g,b);
    vertex(0, -50);
    vertex(14, -20);
    vertex(47, -15);
    vertex(23, 7);
    vertex(29, 40);
    vertex(0, 25);
    vertex(-29, 40);
    vertex(-23, 7);
    vertex(-47, -15);
    vertex(-14, -20);
    endShape(CLOSE);
  }
  
  void fall(){
    //star objects fall from top to bottom
    if (y > height + 100){
      y  = -100;
    }
    else{
      y++;
    }
  }
}
