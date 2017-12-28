/**Scene3
* This scene depicts gravediggers entering scene, digging and exiting
*/
int framecount = 0;
int enter = 0;
int dig = 0;
int exit = 0;
PImage bg;

void setup(){
  size(1200,900);
  frameRate(30);
  bg = loadImage("bgf.jpg");
}

void draw(){
  background(bg);
  stroke(0);
  framecount++;
  println(framecount);
  
  Gravedigger gd[] = new Gravedigger[4];
  //enter
  if (framecount > 600 && enter < 224)
  {
    enter++;
    println(enter);
    String[] fname = new String[3];
    fname[0] = "enter/joints";
    fname[1] = nf((enter%224)+1351,4);
    fname[2] = ".txt";
    String filename = join(fname, "");
   
    for (int i = 0; i < 2; i++)
    {
        gd[i] = new Gravedigger(filename, -250 + (i*100), 250, 0.5, 200, false);
        gd[i].drawSkeleton(); 
    }
    for (int i = 2; i < 4; i++)
    {
        gd[i] = new Gravedigger(filename, -250 + (i*100), 350, 0.6, 200, false);
        gd[i].drawSkeleton(); 
    }
    
  }
  
  //dig
  if (enter == 224 && dig < 1900)
  {
    dig++;
    println(dig);
    String[] fname = new String[3];
    fname[0] = "dig/joints";
    fname[1] = nf((dig%580)+3080,4);
    fname[2] = ".txt";
    String filename = join(fname, "");
    
    for (int i = 0; i < 2; i++)
    {
        gd[i] = new Gravedigger(filename, 150 + (i*100), 350, 0.5, 200, false);
        gd[i].drawSkeleton(); 
    }
    
    String[] fname2 = new String[3];
    fname2[0] = "dig/joints";
    fname2[1] = nf(((dig + 300)%580)+3080,4);
    fname2[2] = ".txt";
    String filename2 = join(fname2, "");
    for (int i = 2; i < 4; i++)
    {
        gd[i] = new Gravedigger(filename2, 150 + (i*100), 450, 0.6, 200, false);
        gd[i].drawSkeleton(); 
    }
  }
  
  //exit
  if (dig == 1900 && exit < 500)
  {
    exit++;
    println(exit);
    String[] fname = new String[3];
    fname[0] = "exit/joints";
    fname[1] = nf((exit%500)+400,3);
    fname[2] = ".txt";
    String filename = join(fname, "");
    
    for (int i = 0; i < 2; i++)
    {
        gd[i] = new Gravedigger(filename, 100 + (i*100), 350, 0.5, 200, false);
        gd[i].drawSkeleton(); 
    }
    for (int i = 2; i < 4; i++)
    {
        gd[i] = new Gravedigger(filename, 100 + (i*100), 450, 0.6, 200, false);
        gd[i].drawSkeleton(); 
    }
  }
  
  saveFrame("frames/####.jpg");
  if (exit == 500) {
    exit();
  }
  
}
