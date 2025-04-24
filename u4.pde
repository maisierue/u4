//U4 SOFIE T

color green = #61B962;
color brown = #764F1F;


void setup(){
  size(1200,1000);
   tree (random(50,300), random(200,700));
 //   tree (random(50,300), random(200,700));
   tree (random(50,300), random(200,700));
  tree (random(50,300), random(200,700));
}

void draw(){
 // tree (random(50,300), random(100,700));

  
}



void tree (float x, float y){
 pushMatrix();
 translate(x,y);
// scale(s);

float r,g,b;
r= random(0,255);
g= random(0,255);
b= random(0,255);

 stroke (brown);
 strokeWeight(18);
   line (120,120,120,200); // trunk
   
 branch(random(00,200), random(50,90), random(0.25,1));
 branch(random(00,200), random(50,90), random(0.25,1));
 branch(random(00,200), random(50,90), random(0.25,1));
 branch(random(00,200), random(50,90), random(0.25,1));
 
 //leaves();
 leaves(50,50, r,g,b,o);
 leaves(100,100, r,g,b,o);
    popMatrix();
}



void branch(float x, float y, float s){
  fill(brown);
  stroke(brown);
  strokeWeight(7);
  line(120,120,x,y);
}

void leaves(float x, float y, float r, float g, float b, float o){
  fill (97,185,98,(random(250-255)));
  stroke(green-50);
  strokeWeight(2);
  ellipse(x,y, (random(50,100)),40);
}
