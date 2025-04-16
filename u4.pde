//U4 SOFIE T

color green = #61B962;
color brown = #764F1F;


void setup(){
  size(1200,1000);
  
  
}

void draw(){
  tree (50,50);
  
}



void tree (int x, int y){
 pushMatrix();
 translate(x,y);

 branch(random(100,300), random(100,300), random(0.25,1));
 //leaves();
 leaves(50,50);
 leaves(100,100);
 popMatrix();
 stroke (brown);
 strokeWeight(18);
   line (150,200,150,280); // trunk
}

void branch(float x, float y, float s){
  fill(brown);
  stroke(brown);
  strokeWeight(3);
  
}

void leaves(int x, int y){
  fill (green);
 // tint(r);
 // float r=0;
  stroke(green-50);
  strokeWeight(2);
  ellipse(x,y, 50,40);
}
