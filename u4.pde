//U4 SOFIE T

color green = #61B962;
color dgreen = #96B7AA;
color brown = #7C4E1D;
color lbrown = #B77D00;
color pink = #F27D94;
color lpink = #E8C2DD;
color cream =  #E3E0D0;
color red = #F55454;

float angle;
float a;
float r, g, b, o;
float x2 = 0;


void setup() { //sur l'ecran
  r= random(0, 255); g= random(0, 255); b= random(0, 255); o= random(0, 255);

  stroke(cream);
  fill(dgreen); //bg
  rect (0, 400, 1200, 600);
  fill(pink); //bg
  rect (0, 0, 1200, 400);
  size(1200, 1000); 
  
  mint(200,200,100);
  mint (900,100,50);
  
  int tr1 = 0;//cluster of trees1
  int tr2 = 0;//cluster of trees2
  while (tr1 < 5){
  tree (random(20, 150), random(200, 400));//cluster of trees left
   tr1 = tr1+1;
}
  while (tr2 < 4){
 tree (random(980, 1100), random(180, 400));//cluster of trees right
   tr2 = tr2+1;
}
  int hosuy = 170; // y coordinate of houses increasing (layered houses)
  int hosu = 0; //houses
  while (hosu < 8){
 house (random(80, 445), hosuy);
   hosu = hosu+1;
   hosuy = hosuy + 30;
}
}

//maison====================================================
void house(float x, float y){
  pushMatrix();
  translate (x,y);
  roof(x,y);
  
  fill(brown);//walls
  stroke(cream);
  strokeWeight(4);
  rect(x,y,170,150);
  
      int rock = 0;//branches
  while (rock < 20){
 brick(x+random(20,140),y+random(25,120), x2+random(5,15), random(130, 210));
   rock = rock+1;
 }
 
  strokeWeight(3);//ipink icing lining
  stroke(pink);
  line(x,y+10,x+170,y+10);
  line(x,y+140,x+170,y+140);
  window(x,y,0);
  door(x,y,0);
  
    int fe = 0;//frosting on the ground
    int ice = 0;
  while (fe < 7){
 fence(x+ice,y,0,250);
   fe = fe+1;
   ice = ice + 30; //frosting moves and multiplies
  }
  popMatrix();
}

void roof(float x,float y){
  fill(brown);
  stroke(cream);
  strokeWeight(4);
  triangle(x,y,x+85,y-random(40,100), x+170, y);
}

void door(float x, float y, float x2){
  fill (lbrown);
  stroke(cream);
  strokeWeight(2);
  rect(x+random(15,70), y+90, x2+random(15,50), 70); 
}
void window(float x, float y, float x2){
  fill (pink);
  stroke(lpink);
  strokeWeight(3);
  rect(x+random(10,50), y+35, x2+random(70,120), 38); 
}

void brick(float x, float y, float x2, float o){
  fill(197, 142, 206, o);
  strokeWeight(2);
  ellipse(x, y, x2, x2);
}

void fence (float x, float y, float x2, float y2){
  fill(255,255,255,230);
  strokeWeight(0);
  ellipse (x,y+160,40,20);
}

//arbres====================================================
void tree (float x, float y) {
  pushMatrix();
  translate(x, y);
  stroke (cream);
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
  stroke(cream);
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
  stroke(lpink);
  strokeWeight(2);
  ellipse(x, y, (random(50, 100)), random(20, 100));
}

void mint(float x, float y, float r){ // pattern(); 
  pushMatrix();
  translate(x,y,r);
  stroke(220);
  strokeWeight(6);
  fill(255);
  ellipse(x,y,r,r);
  
 pattern(x,y,x);
 
 stroke(220);
 strokeWeight(6);
 fill(255,255,255,0);
 ellipse(x,y,r,r);
 popMatrix();
}

void pattern(float x, float y, float xy){
  fill(red);
  strokeWeight(4);
  stroke (red);
  triangle(x,y,x+x/4-5,y-x/8, x+x/4, y);//lots of math ahhahahahah
  
  
}
