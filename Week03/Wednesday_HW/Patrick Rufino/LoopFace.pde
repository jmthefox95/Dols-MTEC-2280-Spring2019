void setup() {
  size(900, 900);
  frameRate(5);
  background(0, 0, 0);
}

void draw() {

  if(mousePressed){
     for (int r = 0; r <= 300; r += 20) { 
       noStroke();
       fill(random(255), random(255), random(255));
       rect(300 - r, 300 - r, 300, 300);
       rect(300 + r, 300 + r, 300, 300);
       rect(300 + r, 300 - r, 300, 300);
       rect(300 - r, 300 + r, 300 + r, 300);
       fill(255);
       ellipse(150, 150, 100, 100); 
       ellipse(750, 150, 100, 100);
       fill(0);
       ellipse(150, 150, 50, 50);
       ellipse(750, 150, 50, 50);
  }
 }
}
