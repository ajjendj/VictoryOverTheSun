/**Scene2
* This scene depicts marching soldiers and dancing sportsmen
*/

int framecount = 0;
int run = 0;
int dance = 0;

void setup(){
  size(1200,800);
  frameRate(30);
}

void draw(){
  background(255);
  stroke(0);
  framecount++;
  println(framecount);
  String[] fname = new String[3];
  fname[0] = "march/joints";
  fname[1] = nf((framecount%250)+250,3);
  fname[2] = ".txt";
  String filename = join(fname, "");
  
  if (framecount > 0){
    Soldier[] soldiers = new Soldier[10];
    for (int i = 0; i < 9; i++){
      soldiers[i] = new Soldier(filename, 50 + framecount*2 - 300 - (i*60), -140 + (i*60), 0.5 + (float)(i)/20, 200, false);
      soldiers[i].drawSkeleton();
    }
  }
  if (framecount > 200){
    Soldier[] soldiers = new Soldier[10];
    for (int i = 0; i < 9; i++){
      soldiers[i] = new Soldier(filename, 50 + framecount*2 - 600 - (i*60), -140 + (i*60), 0.5 + (float)(i)/20, 200, false);
      soldiers[i].drawSkeleton();
    }
  }
  if (framecount > 300){
    Soldier[] soldiers = new Soldier[10];
    for (int i = 0; i < 9; i++){
      soldiers[i] = new Soldier(filename, 50 + framecount*2 - 900 - (i*60), -140 + (i*60), 0.5 + (float)(i)/20, 200, false);
      soldiers[i].drawSkeleton();
    }
  }
  if (framecount > 400){
    Soldier[] soldiers = new Soldier[10];
    for (int i = 0; i < 9; i++){
      soldiers[i] = new Soldier(filename, 50 + framecount*2- 1200 - (i*60), -140 + (i*60), 0.5 + (float)(i)/20, 200, false);
      soldiers[i].drawSkeleton();
    }
  }
  if (framecount > 500){
    Soldier[] soldiers = new Soldier[10];
    for (int i = 0; i < 9; i++){
      soldiers[i] = new Soldier(filename, 50 + framecount*2- 1500 - (i*60), -140 + (i*60), 0.5 + (float)(i)/20, 200, false);
      soldiers[i].drawSkeleton();
    }
  }
  
   if (framecount > 1800 && framecount < 2700){
     run++;
     String[] fname2 = new String[3];
     fname2[0] = "run/joints";
     fname2[1] = nf((run%100)+1,3);
     fname2[2] = ".txt";
     String filename2 = join(fname2, "");
     Sportsman[] sportsmen = new Sportsman[5];
     for (int i = 0; i < 5; i++){
       sportsmen[i] = new Sportsman(filename2, -150 + (i*250), -500 + run, 0.75, 200, false);
       sportsmen[i].drawSkeleton();
     }
   }
   if (framecount > 2700){
     dance++;
     
     String[] fnamed1 = new String[3];
     fnamed1[0] = "dance1/joints";
     fnamed1[1] = nf((dance%380)+180,3);
     fnamed1[2] = ".txt";
     String filenamed1 = join(fnamed1, "");
     
     String[] fnamed2 = new String[3];
     fnamed2[0] = "dance2/joints";
     fnamed2[1] = nf((dance%180)+1480,4);
     fnamed2[2] = ".txt";
     String filenamed2 = join(fnamed2, "");
     
     String[] fnamed3 = new String[3];
     fnamed3[0] = "dance3/joints";
     fnamed3[1] = nf((dance%125)+1075,4);
     fnamed3[2] = ".txt";
     String filenamed3 = join(fnamed3, "");
     Sportsman[] sportsmen = new Sportsman[5];
     sportsmen[0] = new Sportsman(filenamed2, -150, 200, 1, 200, false);
     sportsmen[1] = new Sportsman(filenamed1, 100, 200, 1, 200, false);
     sportsmen[2] = new Sportsman(filenamed2, 350, 200, 1, 200, false);
     sportsmen[3] = new Sportsman(filenamed3, 600, 200, 1, 200, false);
     sportsmen[4] = new Sportsman(filenamed2, 750, 200, 1, 200, false);
     sportsmen[0].drawSkeleton();
     sportsmen[1].drawSkeleton();
     sportsmen[2].drawSkeleton();
     sportsmen[3].drawSkeleton();
     sportsmen[4].drawSkeleton();
   }
   saveFrame("frames/####.jpg");
  
}
