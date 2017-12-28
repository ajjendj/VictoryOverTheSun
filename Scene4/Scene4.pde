/**Scene4
*  Depicts the sun being carried out by sun carriers
*
*/

color palette[] = new color[] {
  color(31,27,166),
  color(0,15,15),
  color(224,228,204),
  color(0,15,15),
  color(193,17,23)}; 
  
Sun suns[];

int s1, s2, s3, s4, s5, s6, s7, s8, s9, s10 = 0;
int s11, s12, s13, s14, s15, s16, s17, s18, s19, s20 = 0;
int s21, s22, s23, s24, s25 = 0;

String[] movements = {"movement1",
                      "movement2",
                      "movement3",
                      "movement4",
                      "movement5"};


int framecount = 0;
                       
void setup() {
  //setup
  size(1200,900);
  frameRate(30);
  smooth();
  strokeCap(SQUARE);
  ellipseMode(CENTER);
  suns = new Sun[10];
  float scale = 0.6;
  int xInc = width / suns.length, xOffset = xInc / 2;
  for(int i=1; i<=suns.length; i++, xOffset+=xInc) {
      suns[i-1] = new Sun(width/2,height/2,(int)((105+(i*20))*scale),(int)((110+(i*20*random(1,1.2)))*scale),palette);
  } 
}

void draw() {
  background(255);
  for(int i=0; i<suns.length; i++)
    suns[i].draw();
  println(framecount++);  

  if (framecount > 50)
  {
    s1++;  
    String filename = getfilename(1, s1);
    Suncarrier sc = new Suncarrier(filename, 350, 250, 0.5, 200, false);
    sc.drawSkeleton(); 
  }
  if (framecount > 100)
  {
    s2++;  
    String filename = getfilename(2, s2);
    Suncarrier sc = new Suncarrier(filename, 300, 350, 0.7, 250, false);
    sc.drawSkeleton(); 
  }
  if (framecount > 130)
  {
    s3++;  
    String filename = getfilename(3, s3);
    Suncarrier sc = new Suncarrier(filename, 290, 150, 0.7, 220, false);
    sc.drawSkeleton(); 
  }
  if (framecount > 170)
  {
    s4++;  
    String filename = getfilename(4, s4);
    Suncarrier sc = new Suncarrier(filename, 300, 250, 0.5, 200, false);
    sc.drawSkeleton(); 
  }
  
  if (framecount > 200)
  {
    s5++;  
    String filename = getfilename(0, s5);
    Suncarrier sc = new Suncarrier(filename, 350, 50, 0.9, 250, false);
    sc.drawSkeleton(); 
  }
  if (framecount > 230)
  {
    s6++;  
    String filename = getfilename(2, s6);
    Suncarrier sc = new Suncarrier(filename, 500, 50, 1, 250, false);
    sc.drawSkeleton(); 
  }
  if (framecount > 260)
  {
    s7++;  
    String filename = getfilename(3, s3);
    Suncarrier sc = new Suncarrier(filename, 700, 150, 0.7, 220, false);
    sc.drawSkeleton(); 
  }
  if (framecount > 300)
  {
    s8++;  
    String filename = getfilename(4, s8);
    Suncarrier sc = new Suncarrier(filename, 320, 280, 0.5, 200, false);
    sc.drawSkeleton(); 
  }
  
  if (framecount > 330)
  {
    s9++;  
    String filename = getfilename(1, s9);
    Suncarrier sc = new Suncarrier(filename, 30, 250, 1, 200, false);
    sc.drawSkeleton(); 
  }
  if (framecount > 360)
  {
    s10++;  
    String filename = getfilename(0, s10);
    Suncarrier sc = new Suncarrier(filename, 500, 350, 0.7, 250, false);
    sc.drawSkeleton(); 
  }
  if (framecount > 400)
  {
    s11++;  
    String filename = getfilename(3, s11);
    Suncarrier sc = new Suncarrier(filename, 330, 250, 0.7, 220, false);
    sc.drawSkeleton(); 
  }
  if (framecount > 430)
  {
    s12++;  
    String filename = getfilename(4, s12);
    Suncarrier sc = new Suncarrier(filename, 600, 250, 0.9, 150, false);
    sc.drawSkeleton(); 
  }
  
  if (framecount > 460)
  {
    s13++;  
    String filename = getfilename(0, s13);
    Suncarrier sc = new Suncarrier(filename, 650, 230, 0.5, 200, false);
    sc.drawSkeleton(); 
  }
  if (framecount > 500)
  {
    s14++;  
    String filename = getfilename(2, s14);
    Suncarrier sc = new Suncarrier(filename, 350, 300, 0.7, 250, false);
    sc.drawSkeleton(); 
  }
  if (framecount > 530)
  {
    s15++;  
    String filename = getfilename(3, s15);
    Suncarrier sc = new Suncarrier(filename, 500, 150, 0.7, 220, false);
    sc.drawSkeleton(); 
  }
  if (framecount > 560)
  {
    s16++;  
    String filename = getfilename(4, s16);
    Suncarrier sc = new Suncarrier(filename, 420, 350, 0.5, 200, false);
    sc.drawSkeleton(); 
  }
  
  if (framecount > 600)
  {
    s17++;  
    String filename = getfilename(0, s17);
    Suncarrier sc = new Suncarrier(filename, 450, 250, 0.5, 200, false);
    sc.drawSkeleton(); 
  }
  if (framecount > 630)
  {
    s18++;  
    String filename = getfilename(2, s18);
    Suncarrier sc = new Suncarrier(filename, 300, 350, 0.7, 250, false);
    sc.drawSkeleton(); 
  }
  if (framecount > 660)
  {
    s19++;  
    String filename = getfilename(3, s19);
    Suncarrier sc = new Suncarrier(filename, 320, 250, 0.7, 220, false);
    sc.drawSkeleton(); 
  }
  if (framecount > 700)
  {
    s20++;  
    String filename = getfilename(4, s20);
    Suncarrier sc = new Suncarrier(filename, 400, 150, 0.5, 200, false);
    sc.drawSkeleton(); 
  }
  
  if (framecount > 720)
  {
    s21++;  
    String filename = getfilename(1, s21);
    Suncarrier sc = new Suncarrier(filename, 350, 150, 0.5, 200, false);
    sc.drawSkeleton(); 
  }
  if (framecount > 730)
  {
    s22++;  
    String filename = getfilename(0, s22);
    Suncarrier sc = new Suncarrier(filename, 375, 350, 1, 250, false);
    sc.drawSkeleton(); 
  }
  if (framecount > 740)
  {
    s23++;  
    String filename = getfilename(3, s23);
    Suncarrier sc = new Suncarrier(filename, 330, 150, 0.8, 220, false);
    sc.drawSkeleton(); 
  }
  if (framecount > 750)
  {
    s24++;  
    String filename = getfilename(4, s24);
    Suncarrier sc = new Suncarrier(filename, 300, 250, 0.8, 200, false);
    sc.drawSkeleton(); 
  }
  
  saveFrame("frames/####.jpg");
  
}


String getfilename(int m, int s1)
{
  String[] fname = new String[4];
      fname[0] = movements[m];
      
      fname[1] = "/joints";
      if (m == 0) {
        fname[2] = nf((s1%380)+180,3);
      }
       if (m == 1) {
        fname[2] = nf((s1%180)+1480,4);
      }
       if (m == 2) {
        int temps1 = (s1%400)+900;
        if (temps1 < 1000)
          fname[2] = nf(temps1,3);
        else
          fname[2] = nf(temps1,4);
      }
       if (m == 3) {
        fname[2] = nf((s1%210)+3090,4);
      } 
      if (m == 4) {
        fname[2] = nf((s1%300)+2600,4);
      }
      fname[3] = ".txt";
      String filename = join(fname, "");
  return filename;
}
