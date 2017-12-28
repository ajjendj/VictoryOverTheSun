class Sportsman {
  String filename; //text file containing joint info
  int[][] skeleton; //array containing x,y coords of 20 joints
  int x, y; //x,y coords of hip joint
  float scale; //size of the object
  int alpha; //transparency of drawn object
  boolean randomize;
  
  public Sportsman(String filename, int x, int y, float scale, int alpha, boolean randomize)
  {
    skeleton = new int[20][2];
    this.x = x;
    this.y = y;
    this.scale = scale;
    this.alpha = alpha;
    this.randomize = randomize;
    
    //read x,y coords from file
    String[] joints = loadStrings(filename);
    for (int i = 1; i < joints.length; i++)
    { 
      float[] jointdata = float(split(joints[i],','));
      if (randomize)
      {
        skeleton[i-1][0] = (int) (jointdata[0] + random(20) - 10);
        skeleton[i-1][1] = (int) (jointdata[1] + random(20) - 10);
      }
      else {
        skeleton[i-1][0] = (int) jointdata[0];
        skeleton[i-1][1] = (int) jointdata[1];
      }
    }
    //make the hip the origin
    for (int i = 0; i < 20; i++)
    {
      skeleton[i][0] = skeleton[i][0] - skeleton[0][0];
      skeleton[i][1] = skeleton[i][1] - skeleton[0][1];
    }
    //apply scale changes
    for (int i = 0; i < 20; i++)
    {
      skeleton[i][0] = (int)(skeleton[i][0]*scale);
      skeleton[i][1] = (int)(skeleton[i][1]*scale);
    }
    
    //make x,y the new coordinates of the hip
    for (int i = 0; i < 20; i++)
    {
      skeleton[i][0] = skeleton[i][0] + x;
      skeleton[i][1] = skeleton[i][1] + y;
    }
  }
  
  void drawSkeleton()
  {
    strokeWeight((int)(5*scale));
    strokeCap(PROJECT);
    stroke(200,200,200,alpha);
    strokeWeight((int)(15*scale));
    line(skeleton[14][0], skeleton[14][1], skeleton[13][0], skeleton[13][1]);
  
    strokeWeight((int)(30*scale));
    line(skeleton[1][0], skeleton[1][1], skeleton[16][0], skeleton[16][1]);
    stroke(100,100,100,alpha);
    strokeWeight((int)(45*scale));
    stroke(0,0,0,alpha);
    strokeWeight((int)(3*scale));
  
    //draw neck
    fill(255,255,51,alpha);
    beginShape();
    vertex(skeleton[3][0], skeleton[3][1]);
    vertex(skeleton[8][0]-(int)(20*scale), skeleton[8][1]);
    vertex(skeleton[4][0]+(int)(20*scale), skeleton[4][1]);
    vertex(skeleton[3][0], skeleton[3][1]);
    endShape();
  
    //draw head
    ellipseMode(CENTER);
    fill(255,255,255,alpha);
    ellipse(skeleton[3][0], skeleton[3][1], (int)(45*scale),(int)(55*scale));
    fill(0,0,0,alpha);
    arc(skeleton[3][0], skeleton[3][1], (int)(45*scale),(int)(55*scale), PI/10, 9*PI/10, PIE);
    fill(0, 153, 76);
    arc(skeleton[3][0], skeleton[3][1], (int)(45*scale),(int)(55*scale), PI/10, 9*PI/10, CHORD);
    strokeWeight((int)(2*scale));
    fill(255,255,255,alpha);
    ellipse(skeleton[3][0] - (int)(10*scale), skeleton[3][1] - (int)(8*scale), (int)(8*scale), (int)(4*scale));
    ellipse(skeleton[3][0] + (int)(10*scale), skeleton[3][1] - (int)(8*scale), (int)(8*scale), (int)(4*scale));
 
    //draw torso
    fill(200,200,200,alpha);
    strokeCap(PROJECT);
    strokeWeight((int)(3*scale));
    beginShape();
    vertex(skeleton[2][0] - (int)(20*scale), skeleton[2][1]);
    vertex(skeleton[2][0] + (int)(20*scale), skeleton[2][1]);
    vertex(skeleton[4][0], skeleton[4][1]);
    vertex(skeleton[1][0], skeleton[1][1]);
    vertex(skeleton[8][0], skeleton[8][1]);
    vertex(skeleton[2][0] - (int)(20*scale), skeleton[2][1]);
    endShape();
    fill(0,0,0,alpha);
  
    //draw left hand
    strokeWeight((int)(5*scale));
    stroke(20,20,20,alpha);
    line(skeleton[8][0], skeleton[8][1],skeleton[9][0], skeleton[9][1]);
    strokeWeight((int)(20*scale));
    strokeCap(PROJECT);
    stroke(0,0,0,alpha);
    rect(skeleton[8][0], skeleton[8][1], (int)(2*scale), (int)(10*scale));
    stroke(0,0,0,alpha);
    line(skeleton[9][0], skeleton[9][1], skeleton[10][0], skeleton[10][1]);
    strokeWeight((int)(5*scale));
    stroke(255,255,255,alpha);
    line(skeleton[9][0], skeleton[9][1], skeleton[10][0], skeleton[10][1]);
    stroke(0,153, 76, alpha);
    strokeWeight((int)(20*scale));
    rect(skeleton[11][0], skeleton[11][1], (int)(10*scale), (int)(2*scale));
    
    //draw right hand
    stroke(200,200,200,alpha);
    strokeWeight((int)(15*scale));
    line(skeleton[5][0], skeleton[5][1], skeleton[4][0] - (int)(10*scale), skeleton[4][1]);
    strokeWeight((int)10*scale);
    stroke(0,0,0,alpha);
    curve(skeleton[4][0], skeleton[4][1], skeleton[5][0], skeleton[5][1], skeleton[6][0], skeleton[6][1], skeleton[7][0], skeleton[7][1]); 
    stroke(255,255,51,alpha);
    ellipse(skeleton[7][0], skeleton[7][1], (int)(10*scale), (int)(8*scale));
    
    //draw left thigh
    stroke(0,0,0,alpha);
    strokeWeight((int)(30*scale));
    strokeCap(PROJECT);
    line(skeleton[12][0], skeleton[12][1], skeleton[13][0], skeleton[13][1]);
    strokeWeight((int)(20*scale));
    stroke(255,255,51,alpha);
    line(skeleton[12][0], skeleton[12][1], skeleton[13][0], skeleton[13][1]);
    
    //draw right thigh
    strokeWeight((int)10*scale);
    stroke(0,0,0,alpha);
    fill(0,0,0,alpha);
    curve(skeleton[0][0], skeleton[0][1], skeleton[17][0], skeleton[17][1], skeleton[18][0], skeleton[18][1], skeleton[19][0], skeleton[19][1]); 
    strokeWeight((int)(30*scale));
    strokeCap(PROJECT);
    stroke(0,0,0,alpha);
    line(skeleton[16][0], skeleton[16][1]+(int)(40*scale), skeleton[17][0], skeleton[17][1]); 
    
    //draw hip
    stroke(0,0,0,alpha);
    fill(255,255,51,alpha);
    strokeCap(PROJECT);
    strokeWeight(3);
    beginShape();
    vertex(skeleton[12][0]-(int)(10*scale), skeleton[12][1]-(int)(10*scale));
    vertex(skeleton[16][0]+(int)(10*scale), skeleton[16][1]-(int)(10*scale));
    vertex(skeleton[17][0]+(int)(20*scale), skeleton[17][1]-(int)(20*scale));
    vertex((skeleton[17][0]+skeleton[13][0])/2, (skeleton[12][1]+skeleton[13][1])/2);
    vertex(skeleton[13][0]-(int)(20*scale), skeleton[13][1]-(int)(20*scale));
    vertex(skeleton[12][0]-(int)(10*scale), skeleton[12][1]-(int)(10*scale));
    endShape();
    
    //draw left foot;
    stroke(0,0,0,alpha);
    strokeWeight((int)(30*scale));
    strokeCap(PROJECT);
    line(skeleton[18][0], skeleton[18][1], skeleton[19][0], skeleton[19][1]);
    strokeWeight((int)(20*scale));
    stroke(255,255,255,alpha);
    line(skeleton[18][0], skeleton[18][1], skeleton[19][0], skeleton[19][1]);
    
    //draw right foot
    stroke(0,0,0,alpha);
    strokeWeight((int)(5*scale));
    beginShape();
    vertex(skeleton[15][0]-(int)(10*scale), skeleton[15][1]);
    vertex(skeleton[15][0]+(int)(10*scale), skeleton[15][1]);
    vertex(skeleton[15][0], skeleton[15][1]+(int)(30*scale));
    vertex(skeleton[15][0]-(int)(10*scale), skeleton[15][1]);
    endShape();
    
    
    
    //reset parameters
    strokeWeight(1);
    fill(0);
  }
}
