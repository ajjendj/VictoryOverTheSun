/**Prelude
*  This is going to play in the beginning
*  It depicts the rise of the sun. The sun consists of several rotating wheels.
*  The video will end with a countdown
*/

//import audio libraries
import ddf.minim.*;
import ddf.minim.analysis.*;

//global variables

PImage bg; //background
Sun suns[]; //array of sun rings
Minim minim; //audio
AudioPlayer player;
AudioMetaData meta;
BeatDetect beat;

//palette of colors for the sun
color palette[] = new color[] {
  color(31,27,166),
  color(0,15,15),
  color(224,228,204),
  color(0,15,15),
  color(193,17,23)}; 

int framecount = 0; //frame counter  
float ror = random(1,1.2); //controls radius of sun rings
float scale; //scale conrols size of the sun

//countdown variables
int c = 0;
String[] countdown = {"10", "9", "8", "7", "6", "5", "4", "3", "2", "1"};

//audio viz variables
int  r = 200;
float rad = 70;

void setup() {
  //setup
  size(1200,900);
  frameRate(30);
  smooth();
  strokeCap(SQUARE);
  ellipseMode(CENTER);
  
  minim = new Minim(this);
  player = minim.loadFile("prelude.mp3");
  meta = player.getMetaData();
  beat = new BeatDetect();
  player.loop();
  
  smooth();
}
 
void draw() {
  println(framecount);
  //load and draw background
  String[] fname = new String[3];
  fname[0] = "background/frames/bg-";
  fname[1] = nf(++framecount,4);
  fname[2] = ".jpg";
  String filename = join(fname,"");
  bg = loadImage(filename);
  background(bg);
  
  //initialize and draw sun
  suns = new Sun[10];
  int xInc = width / suns.length, xOffset = xInc / 2;
  scale = (float)framecount/4000;
  println(scale);

  for(int i=1; i<=suns.length; i++, xOffset+=xInc) {
      suns[i-1] = new Sun(width/2,height/2,(int)((105+(i*20))*scale),(int)((110+(i*20*ror))*scale),palette);
  }
  for(int i=0; i<suns.length; i++)
    suns[i].draw();
  
  //draw audio visualizations
  beat.detect(player.mix);
  fill(#1A1F18, 20);
  noStroke();
  translate(width/2, height/2);
  fill(-1, 10);
  if (beat.isOnset()) rad = rad*0.9;
  else rad = 70;
  ellipse(0, 0, 2*rad, 2*rad);
  stroke(-1, 50);
  int bsize = player.bufferSize();
  r = 200 + (int)(r * scale/4);
  for (int i = 0; i < bsize - 1; i+=5)
  {
    float x = (r)*cos(i*2*PI/bsize);
    float y = (r)*sin(i*2*PI/bsize);
    float x2 = (r + player.left.get(i)*100)*cos(i*2*PI/bsize);
    float y2 = (r + player.left.get(i)*100)*sin(i*2*PI/bsize);
    line(x, y, x2, y2);
  }
  beginShape();
  noFill();
  stroke(-1, 50);
  for (int i = 0; i < bsize; i+=30)
  {
    float x2 = (r + player.left.get(i)*100)*cos(i*2*PI/bsize);
    float y2 = (r + player.left.get(i)*100)*sin(i*2*PI/bsize);
    vertex(x2, y2);
    pushStyle();
    stroke(-1);
    strokeWeight(2);
    point(x2, y2);
    popStyle();
  }
  endShape();
  translate(-width/2,-height/2);
  if (framecount > 4080)
  {
    textSize(50);
    fill(0);
    if (countdown[c] == "10")
    {
      text(countdown[c], width/2 - 32, height/2 + 17);
    }
    else
    {
      text(countdown[c], width/2 - 17, height/2 + 17);
    }
    if (framecount%30 == 0)
    {
      if (countdown[c] == "1")
      {
        background(255);
        exit();
      }
      else
      {
        c++;
      }
    }
  }
  saveFrame("frames/####.jpg");
}
 
void countdown() {
  

  
}

