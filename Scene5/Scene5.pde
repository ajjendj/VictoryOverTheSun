/**Scene5
*  Depicts stage inspired by Malevich's original
*  The stage begins to fragment and finally disintegrates
*  into an explosion
*/


// A Polar coordinate, radius now starts at 0 to spiral outwards
float r = 0;
float theta = 0;
int fc = 0;
float ul = 0;
int explosion = 5000;

void setup() {
  size(1200,900);
  background(255);
  frameRate(30);
  smooth();
}

void draw() {
  fc++;
  println(fc);
  ul = fc/100;
  
  pushMatrix();
  translate(400, 200);
  background(255);
  
  //border
  pushMatrix();
  if (fc > explosion) {
    rotate(radians(random(0,360)));
    translate(random(0,ul*10),random(0,ul*10));
  }
//  if (fc > 100) {
//    translate(random(0,ul),random(0,ul));
//  }
  line(10,10,390,10);
  line(10,10,10,390);
  line(10,390,390,390);
  line(390,10,390,390);
  popMatrix();
  
  
  //#1
  pushMatrix();
  if (fc > explosion) {
    translate(random(100,ul*10),random(100,ul*10));
  }
  if (fc > 1200) {
    translate(10,390);
    rotate(radians((fc*0.5)%360));
    translate(-10,-390);
    translate(random(0,ul),random(0,ul));
  }
  fill(0);
  beginShape();
  vertex(10,390);
  vertex(100,320);
  vertex(100,120);
  vertex(10,350);
  vertex(10,390);
  endShape();
  popMatrix();
  
  //#2
  pushMatrix();
  if (fc > explosion) {
    translate(random(100,ul*10),random(100,ul*10));
  }
  if (fc > 300) {
    translate(random(0,ul),random(0,ul));
  }
  line(100,320,300,320);
  popMatrix();
  
  //#3
  pushMatrix();
  if (fc > explosion) {
    translate(random(100,ul*10),random(100,ul*10));
  }
  if (fc > 400) {
    translate(random(0,ul),random(0,ul));
  }
  line(300,320,390,390);
  popMatrix();
  
  //#4
  pushMatrix();
  if (fc > explosion) {
    translate(random(100,ul*10),random(100,ul*10));
  }
  if (fc > 500) {
    translate(random(0,ul),random(0,ul));
  }
  line(300,320,300,100);
  popMatrix();
  
  //#5
  pushMatrix();
  if (fc > explosion) {
    translate(random(100,ul*10),random(100,ul*10));
  }
  if (fc > 600) {
    translate(random(0,ul),random(0,ul));
  }
  line(200,100,390,100);
  popMatrix();
  
  //#6
  pushMatrix();
  if (fc > explosion) {
    translate(random(100,ul*10),random(100,ul*10));
  }
  if (fc > 700) {
    translate(random(0,ul),random(0,ul));
  }
  line(200,100,200,10);
  popMatrix();
  
  //#7
  pushMatrix();
  if (fc > explosion) {
    translate(random(100,ul*10),random(100,ul*10));
  }
  if (fc > 800) {
    translate(random(0,ul),random(0,ul));
  }
  line(200,80,10,80);
  popMatrix();
  
  //#8
  pushMatrix();
  if (fc > explosion) {
    translate(random(100,ul*10),random(100,ul*10));
  }
  if (fc > 900) {
    translate(random(100,ul),random(100,ul));
  }
  line(10,80,100,120);
  popMatrix();
  
  //#7
  pushMatrix();
  if (fc > explosion) {
    translate(random(100,ul*10),random(100,ul*10));
  }
  if (fc > 600) { 
    translate(320,10);
    rotate(radians(fc%360));
    translate(-320,-10);
  }
  beginShape();
  vertex(320,10);
  vertex(390,110);
  vertex(390,10);
  vertex(320,10);
  endShape();
  popMatrix();
  
  //#8
  pushMatrix();
  if (fc > explosion) {
    translate(random(100,ul*10),random(100,ul*10));
  }
  if (fc > 500) {
    translate(350,360);
    rotate(radians((fc*0.5)%360));
    translate(-350,-360);
    translate(random(0,ul),random(0,ul));
  }
  beginShape();
  vertex(350,360);
  vertex(350,240);
  vertex(314,330);
  vertex(350,360);
  endShape();
  popMatrix();
  
  //#9
  pushMatrix();
  if (fc > explosion) {
    translate(random(100,ul*10),random(100,ul*10));
  }
  if (fc > 800) {
    translate(random(0,ul),random(0,ul));
  }
  ellipse(360,180,40,40);
  popMatrix();
  
  //#10
  pushMatrix();
  if (fc > explosion) {
    rotate(radians(random(0,360)));
    translate(random(100,ul*10),random(100,ul*10));
  }
  if (fc > 1200) {
    translate(random(0,ul),random(0,ul));
  }
  beginShape();
  vertex(100,120);
  vertex(150,120);
  vertex(150,180);
  vertex(220,180);
  vertex(220,130);
  vertex(300,130);
  vertex(300,100);
  vertex(200,100);
  vertex(200,80);
  vertex(120,80);
  vertex(105,100);
  vertex(90,90);
  vertex(75,108);
  vertex(100,120);
  endShape();
  popMatrix();

  //#11
  pushMatrix();
  if (fc > explosion) {
    translate(random(100,ul*10),random(100,ul*10));
  }
  if (fc > 1800) {
    translate(random(0,ul),random(0,ul));
  }
  ellipse(240,180,40,15);
  popMatrix();
  
  //#12
  pushMatrix();
  if (fc > explosion) {
    rotate(radians(random(0,360)));
    translate(random(100,ul*10),random(100,ul*10));
  }
//  if (fc > 1100) {
//    translate(random(0,ul),random(0,ul));
//  }
  line(235,130,235,300);
  line(240,130,240,300);
  line(245,130,245,300);
  line(250,130,250,300);
  popMatrix();
  
  //#13
  pushMatrix();
  if (fc > explosion) {
    translate(random(100,ul*10),random(100,ul*10));
  }
  if (fc > 600) {
    translate(random(0,ul),random(0,ul));
  }
  arc(300,320,150,200,PI, PI + HALF_PI);
  popMatrix();
  
  //#14
  pushMatrix();
  if (fc > explosion) {
    rotate(radians(random(0,360)));
    translate(random(100,ul*10),random(100,ul*10));
  }
  if (fc > 600) {
    translate(random(0,ul),random(0,ul));
  }
  noFill();
  curve(100,350,100,250,250,250,300,350);
  popMatrix();
  
  //#15
  pushMatrix();
  if (fc > explosion) {
    translate(random(100,ul*10),random(100,ul*10));
  }
  if (fc > 600) {
    translate(random(0,ul),random(0,ul));
  }
  line(50,390,100,350);
  line(100,350,130,370);
  line(130,370,160,345);
  line(160,345,190,360);
  popMatrix();
  
  //#16
  pushMatrix();
  if (fc > explosion) {
    rotate(radians(random(0,360)));
    translate(random(100,ul*10),random(100,ul*10));
  }
  if (fc > 1900) {
    translate(random(0,ul),random(0,ul));
  }
  textSize(42);
  text('1',200,370);
  text('3',220,370);
  popMatrix();
  
  //#17
  pushMatrix();
  if (fc > explosion) {
    rotate(radians(random(0,360)));
    translate(random(100,ul*10),random(100,ul*10));
  }
  if (fc > 1100) {
    translate(random(0,ul),random(0,ul));
  }
  fill(0);
  curve(250,400,130,370,150,353,260,400);
  curve(160,260,160,345,190,360,190,260);
  popMatrix();
  
  //#18
  pushMatrix();
  if (fc > explosion) {
    translate(random(100,ul*10),random(100,ul*10));
  }
  if (fc > 1000) {
    translate(random(0,ul),random(0,ul));
  }
  line(100,30,110,10);
  line(100,30,130,90);
  line(120,100,150,10);
  popMatrix();
  
  //#19
  pushMatrix();
  if (fc > explosion) {
    translate(random(100,ul*10),random(100,ul*10));
  }
  if (fc > 2000) {
    translate(random(0,ul),random(0,ul));
  }
  line(280,40,320,10);
  line(280,100,360,40);
  popMatrix();
  
  //#20
  pushMatrix();
  if (fc > 1100) {
    translate(random(0,ul),random(0,ul));
  }
  line(275,10,275,65);
  popMatrix();
  
  //#21
  pushMatrix();
  if (fc > 3000) {
    translate(random(0,ul),random(0,ul));
  }
  ellipse(260,20,15,15);
  ellipse(265,50,15,15);
  popMatrix();
  
  //#22
  pushMatrix();
  if (fc > 1700) {
    translate(random(0,ul),random(0,ul));
  }
  line(150,238,150,260);
  line(150,260,120,260);
  line(135,260,135,270);
  line(135,270,125,270);
  line(125,270,125,280);
  line(125,280,115,280);
  popMatrix();
  
  //#23
  pushMatrix();
  if (fc > 3000) {
    translate(random(0,ul),random(0,ul));
  }
  line(300,220,350,130);
  popMatrix();
  
  //#24
  pushMatrix();
  if (fc > 4000) {
    rotate(radians(random(0,360)));
    translate(random(0,ul),random(0,ul));
  }
  noFill();
  curve(150,600,150,300,170,280,190,600);
  curve(170,550,170,280,190,280,200,550);
  curve(200,500,190,280,210,270,210,500);
  popMatrix();
  
  //#25
  pushMatrix();
  if (fc > 3000) {
    translate(random(0,ul),random(0,ul));
  }
  line(300,50,315,35);
  curve(180,-50,300,50,280,60,250,-50);
  curve(400,150,280,60,320,40,400,200);
  curve(100,-400,320,40,220,20,280,-300);
  popMatrix();
  
  translate(-400, -200);
  popMatrix();
  saveFrame("frames/####.jpg");
  if (fc > explosion) {
    exit();
  }
}
