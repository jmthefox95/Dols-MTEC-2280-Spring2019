
float r = 0;
float g = 0;
float b = 0;

void setup() {
  size(500, 500);
}

void draw() {

  background(255); 

  fill(r, g, b);
  ellipse(250, 250, 200, 200);
  noStroke();

  float d =  dist(250, 250, mouseX, mouseY);
  //println(d);


  //// Simple Condition 1
  //if (d < 100) { //radius of circle... 100/2
  //  r = r + 1;
  //} else {
  //  r = r - 1;
  //}

  //// TWO Conditions or AND statement
  //if (d < 100 && mousePressed) {
  //  r=0;
  //  g=0;
  //  b=255;
  //} else {
  //  r=0;
  //  g=0;
  //  b=0;
  //}

  //// OR Statement
  //if (d < 100 || mousePressed) {
  //  r=0;
  //  g=0;
  //  b=255;
  //} else {
  //  r=0;
  //  g=0;
  //  b=0;
  //}

  // constraint 
  if (r > 255) {
    r = 255;
  } else if (r < 0) {
    r = 0;
  }
}
