//Static vs. Dynamic

// the code in setup block runs once at the "setup"

void setup() {
  size (800, 800);
  background (255);
}


// the code in draw block loops continuously

void draw() {
  //background (255); // move this line to setup and see what happens

//Static
  stroke(0, 89, 255);
  fill(238, 255, 0, 1);
  ellipse (400, 400, 500, 500); 
  ellipse (400, 400, 600, 600); 
  
  
//Dynamic

  line (mouseX+50, mouseY, mouseX-50, mouseY);

}
