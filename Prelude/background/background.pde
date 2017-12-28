/* Prelude: Background.pde
Background sun rays for the prelude
*/

//init globals
float x1, y1, x2, y2;
float r, theta, diameter;
int fc = 0;

//setup
void setup() {
  size(1200,900);
  background(0);
  smooth();
  frameRate(30);
}

//draw
void draw() {
  println(fc++);
  //center for rays
  x1 = width/2;
  y1 = height/2;
  
  //draw rays from center to random point around the center
  for (int i = 0; i < 4; i++)
  {
    r = random(0,900);
    theta = random(0,360);
    diameter = random(0,100);
    float x2 = x1 + r*cos(radians(theta));
    float y2 = y1 + r*sin(radians(theta));
    stroke(255,5);
    strokeWeight(0.10*diameter);
    noFill();
    
    line(x1,y1,x2,y2);
    ellipse(x2, y2, diameter, diameter);
    
  }
  saveFrame("frames/bg-####.jpg");
  
}

