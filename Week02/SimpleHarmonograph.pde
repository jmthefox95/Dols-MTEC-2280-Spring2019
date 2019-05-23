float harmX =0;
float harmY =0;
float harm =0;
float harm2 =0;
float phi =0;

void setup() {
  size(600, 600);
  background(255, 255, 255);
}

void draw() {
  translate(300,300);
  rotate(phi);   // Larger orbit
  
  //ellipse(0,0,100,100);
  
  fill(0,0,0);
  ellipse(harmX, harmY, 5, 5);  // change the x and y to have more interesting patterns.  Try adding a growth variable here
  
  harmX = 150*cos(harm);   
  harmY = 3*sin(harm2);
  
  harm = 0.10 + harm;
  harm2 = 0.001 + harm2;
  
  phi = 0.02+ phi; //play with this to change harmonic rate
  
}
