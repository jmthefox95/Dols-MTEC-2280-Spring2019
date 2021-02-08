// Drawing tools
//Setup vs. Draw

void setup() {
  size (800, 800);
  background (255, 255, 255);
}


void draw() {
  //background (255, 255, 255); //If in draw loop, "background" 'erases' all frames before current

  
  stroke(239, 255, 73);
  strokeWeight(10);
  line(mouseX, mouseY, pmouseX, pmouseY);
}

