/**Scene6
* This depicts a clock going backwards and a shrinking sun
*/

PImage bg; 
PImage bg_u; //background
PImage bg_d;
Sun suns[]; //array of sun rings

//palette of colors for the sun
color palette[] = new color[] {
  color(31),
  color(15),
  color(224),
  color(100),
  color(50)}; 

int framecount = 0; //frame counter  
int shrink = 0;
int spiral = 0;
int march = 0;
int c = 0;
float ror = random(1,1.2); //controls radius of sun rings
float scale; //scale conrols size of the sun

void setup() {
  //setup
  size(1200,900);
  frameRate(30);
  smooth();
  strokeCap(SQUARE);
  ellipseMode(CENTER);
  bg_u = loadImage("clock_up.jpg");
  bg_d = loadImage("clock_down.jpg");
  bg = loadImage("bg.jpg");

}

void draw() {
  framecount++;
  println(framecount);
  if (framecount < 2700)
  {
    background(bg);
  }
  if (framecount >= 2700 && framecount < 3600)
  {
    scale = 1;
    //draw upright clockface
    background(bg_u);
    //draw clock hands
    pushMatrix();
    translate(width/2 - 25, height/2);
    strokeWeight(10);
      pushMatrix();
      rotate(radians(-(framecount*0.0415)%360));
      line(0,0,0,160);
      popMatrix();
    strokeWeight(5);
      pushMatrix();
      rotate(radians(-(framecount*0.5)%360));
      line(0,0,0,-190);
      popMatrix();
    translate(-width/2 + 25, - height/2);
    popMatrix();
    //initialize and draw sun
    suns = new Sun[10];
    int xInc = width / suns.length, xOffset = xInc / 2;
    for(int i=1; i<=suns.length; i++, xOffset+=xInc) {
        suns[i-1] = new Sun(width/2-25,height/2,(int)((105+(i*20))*scale),(int)((110+(i*20*ror))*scale),palette);
    }
    for(int i=0; i<suns.length; i++)
      suns[i].draw();
  }

  if (framecount >= 3600 && framecount < 4950) {
    shrink++;
    scale = 1 - (float)shrink/1350;
    
    //draw upright clockface
    background(bg_u);
    //draw clock hands
    pushMatrix();
    translate(width/2 - 25, height/2);
    strokeWeight(10);
      pushMatrix();
      rotate(radians(-(framecount*0.0415)%360));
      line(0,0,0,160);
      popMatrix();
    strokeWeight(5);
      pushMatrix();
      rotate(radians(-(framecount*0.5)%360));
      line(0,0,0,-190);
      popMatrix();
    translate(-width/2 + 25, - height/2);
    popMatrix();
    //initialize and draw sun
    suns = new Sun[10];
    int xInc = width / suns.length, xOffset = xInc / 2;
    for(int i=1; i<=suns.length; i++, xOffset+=xInc) {
        suns[i-1] = new Sun(width/2-25,height/2,(int)((105+(i*20))*scale),(int)((110+(i*20*ror))*scale),palette);
    }
    for(int i=0; i<suns.length; i++)
      suns[i].draw();
  }
  
  if (framecount >= 4950 && framecount < 5850) {
    shrink++;
    scale = 1 - (float)shrink/1350;
    
    //draw upright clockface
    background(bg_d);
    //draw clock hands
    pushMatrix();
    translate(width/2 - 25, height/2);
    strokeWeight(10);
      pushMatrix();
      rotate(radians(-(framecount*0.083)%360));
      line(0,0,0,160);
      popMatrix();
    strokeWeight(5);
      pushMatrix();
      rotate(radians(-(framecount)%360));
      line(0,0,0,-190);
      popMatrix();
    translate(-width/2 + 25, - height/2);
    popMatrix();
  }
  
  if (framecount >= 5850 && framecount < 7200) {
      background(255);
      c++;
      spiral++;
      println(c);
      //draw clock hands
      pushMatrix();
      translate(width/2 - 25, height/2);
      strokeWeight(10);
        pushMatrix();
        rotate(radians(-(spiral*0.083*c/30)%360));
        line(0,0,0,160);
        popMatrix();
      strokeWeight(5);
        pushMatrix();
        rotate(radians(-(spiral*c/30)%360));
        line(0,0,0,-190);
        popMatrix();
      translate(-width/2 + 25, - height/2);
      popMatrix();
    }
   if (framecount >= 7200 && framecount <= 9000) {
      background(255);
      march++;
      String[] fname = new String[3];
      fname[0] = "march/joints";
      fname[1] = nf((march%250)+250,3);
      fname[2] = ".txt";
      String filename = join(fname, "");
  
      if (march > 0){
        Sportsman[] sportsmen = new Sportsman[10];
        for (int i = 0; i < 9; i++){
          sportsmen[i] = new Sportsman(filename, 50 + march*2 - 600 - (i*60), -140 + (i*60), 0.5 + (float)(i)/20, 200, false);
          sportsmen[i].drawSkeleton();
        }
      }
      if (march > 200){
        Sportsman[] sportsmen = new Sportsman[10];
        for (int i = 0; i < 9; i++){
          sportsmen[i] = new Sportsman(filename, 50 + march*2 - 900 - (i*60), -140 + (i*60), 0.5 + (float)(i)/20, 200, false);
          sportsmen[i].drawSkeleton();
        }
      }
      if (march > 300){
        Sportsman[] sportsmen = new Sportsman[10];
        for (int i = 0; i < 9; i++){
          sportsmen[i] = new Sportsman(filename, 50 + march*2 - 1200 - (i*60), -140 + (i*60), 0.5 + (float)(i)/20, 200, false);
          sportsmen[i].drawSkeleton();
        }
      }
      if (march > 400){
        Sportsman[] sportsmen = new Sportsman[10];
        for (int i = 0; i < 9; i++){
          sportsmen[i] = new Sportsman(filename, 50 + march*2 - 1500 - (i*60), -140 + (i*60), 0.5 + (float)(i)/20, 200, false);
          sportsmen[i].drawSkeleton();
        }
      }
      if (march > 500){
        Sportsman[] sportsmen = new Sportsman[10];
        for (int i = 0; i < 9; i++){
          sportsmen[i] = new Sportsman(filename, 50 + march*2 - 1800 - (i*60), -140 + (i*60), 0.5 + (float)(i)/20, 200, false);
          sportsmen[i].drawSkeleton();
        }
      }
   }
  saveFrame("frames/####.jpg");
  if (framecount == 9000) {
    exit();
  }
  
  
}
