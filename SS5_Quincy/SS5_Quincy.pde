//Salt and Rage by Quincy Lewis
PImage[] Salt = new PImage [5];
PImage[] Rage = new PImage [5];
float move = 1.5;

void setup(){
  size(800,800);
  textSize(50);
  Salt[0] = loadImage("giphy.gif");
  Salt[1] = loadImage("AdorableHastyAfricanrockpython-size_restricted.gif");
  Salt[2] = loadImage("tumblr_inline_p5ox9qtE1j1s9axw5_400.gif");
  Salt[3] = loadImage("Salt Dance.gif");
  Salt[4] = loadImage("Salt Anime.gif");
  
  Rage[0] = loadImage("Keyboard Rage.gif");
  Rage[1] = loadImage("Rage Smack.gif");
  Rage[2] = loadImage("Pouring Salt.gif");
  Rage[3] = loadImage("Table Flip.gif");
  Rage[4] = loadImage("SpiffyBewitchedIvorygull-size_restricted.gif");
  textAlign(CENTER, CENTER);
  
}

void draw(){
  background(255);
  text("Why are you so salty?", width/2, height/2);
}
