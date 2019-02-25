float rat = (PI/4);

void setup() {
  size(400, 400);
  frameRate(24);
  background(0, 0, 0);
  
}

void draw() {

 
     for (int i = 10; i >= 1; i-= 1) { 
       noStroke();
       fill (i,255,i);
       ellipse(250,250,i*1,i*1);
  
 translate(200,200);
   rotate(rat); 
   fill(244,66,66, 200);
  //triangle(30, 75, 58, 20, 86, 75);
rat= rat-.1;
  }
}
