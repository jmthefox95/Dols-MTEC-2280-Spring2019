float rat = (PI/4);

void setup() {
  size(400, 400);
  frameRate(24);
  background(0, 0, 0);
}

void draw() {


  for (int i = 10; i >= 1; i-= 1) { 
    noStroke();
    fill (i, 255, i, 50);
    ellipse(250, 250, i*1, i*1);

    translate(150, 150);
    rotate(rat); 
    //fill(244, 66, 66, 10);
    //triangle(30, 75, 58, 20, 86, 75);
    rat= rat-.1;
  }
}
