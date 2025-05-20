//U4 SOFIE T

color green = #61B962;
color dgreen = #96B7AA;
color brown = #764F1F;
color lbrown = #B77D00;
color pink = #F27D94;
color lpink = #E8C2DD;
float angle;
float a;
float r, g, b, o;
float x2 = 0;


void setup() {
  r= random(0, 255); g= random(0, 255); b= random(0, 255); o= random(0, 255);

  fill(dgreen); //bg
  rect (0, 400, 1200, 600);
  fill(pink); //bg
  rect (0, 0, 1200, 400);

  size(1200, 1000);
  
  int tr1 = 0;//cluster of trees1
  int tr2 = 0;//cluster of trees2
  while (tr1 < 5){
  tree (random(20, 150), random(200, 400));
   tr1 = tr1+1;
}
  while (tr2 < 4){
 tree (random(980, 1100), random(180, 400));
   tr2 = tr2+1;
}

  house(200,200);
}


void house(float x, float y){
  pushMatrix();
  translate (x,y);
  roof(x,y);
  
  fill(brown);//walls
  stroke(255);
  strokeWeight(4);
  rect(x,y,170,150);
  
  strokeWeight(3);//ipink icing lining
  stroke(pink);
  line(x,y+10,x+170,y+10);
  line(x,y+140,x+170,y+140);

  window(x,y,0);
  door(x,y,0);
  brick(x+random(10,100),y+random(10,100), x2+random(10,40));
  //fence();
  
  popMatrix();
}

void roof(float x,float y){
  fill(brown);
  stroke(255);
  strokeWeight(4);
  triangle(x,y,x+85,y-random(40,100), x+170, y);
}

void door(float x, float y, float x2){
  fill (lbrown);
  stroke(255);
  strokeWeight(2);
  rect(x+random(15,70), y+100, x2+random(15,50), y-150); 
}
void window(float x, float y, float x2){
  fill (lbrown);
  stroke(255);
  strokeWeight(2);
  rect(x+random(10,50), y+35, x2+random(50,120), y-160); 
}

void brick(float x, float y, float x2){
  ellipse(x, y, x2, x2);
  
  
}

void tree (float x, float y) {
  pushMatrix();
  translate(x, y);
  stroke (brown);
  strokeWeight(18);
  line (120, 120, 120, random(200, 255)); // trunk
  
  int br = 0;//branches
  while (br < 4){
   branch(random(00, 200), random(50, 90), random(0.25, 1));
   br = br+1;
}
  popMatrix();
}

void branch(float x, float y, float s) {
  fill(brown);
  stroke(brown);
  strokeWeight(7);
  line(120, 120, x, y);

  int j = 0;
  while (j < 2) {
    leaves(random(x-20, x+20), random(y-10, y+10), r, g, b, random(130, 210));
    j=j+1;
  }
}

void leaves(float x, float y, float r, float g, float b, float o) {
  fill (232, 194, 221, o);
  stroke(lpink-50);
  strokeWeight(2);
  ellipse(x, y, (random(50, 100)), random(20, 100));
}
