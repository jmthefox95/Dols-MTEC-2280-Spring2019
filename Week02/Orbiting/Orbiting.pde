//Edsel Torres 

boolean moolean = true;
int gR = 3;
int d = 0;
float gRr = 2.8;
float dD = 0;

float diam = 30;
float orbitRadius = 10;
float diamAngle = 120;


void setup() {
  size(1920, 1080);
}

void draw() {
  background(150,98,102);

  fill(0,0,0);
  ellipse(500, 500, d, d);
  
  if (d > 900){
    moolean= false;
  }
  
  if (d < 0) {
    moolean = true;
  }
  
  if (moolean == false){
    gR = -3;
  }
  
  if (moolean == true){
    gR = 3;
  }
  
  d = d+gR;
  
  strokeWeight(10);
  stroke((random (0,255)),(random (0,255)),(random (0,255)));
  fill(255,255,255);
  ellipse(500, 500, dD, dD);
  
  if (dD > 900){
    moolean= false;
  }
  
  if (dD < 0) {
    moolean = true;
  }
  
  if (moolean == false){
    gRr = -2.8;
  }
  
  if (moolean == true){
    gRr = 2.8;
  }
  
  dD = dD+gRr;
  
  pushMatrix();
  
  rotate(diamAngle);
  
  translate(orbitRadius,0);
  
  fill(0,0,0);
  ellipse(960,540,diam,diam);
  
  popMatrix();
  
  diamAngle += 0.005;
}
