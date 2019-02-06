// Drawing tools
//Setup vs. Draw

void setup() {
  size (800, 800);
  background (155, 155, 155);
}


void draw() {
  
  //noStroke();
 // line(mouseX, mouseY, pmouseX, pmouseY);
  
  
 
  stroke(125, 66, 244, 200);
  strokeWeight(12);
  line(mouseX, mouseY, pmouseX, pmouseY);
  
  stroke(244, 66, 89, 133);
  strokeWeight(12);
  line(mouseX+10, mouseY, pmouseX+10, pmouseY);
  
  stroke(56, 132, 255, 133);
  strokeWeight(12);
  line(mouseX-10, mouseY, pmouseX-10, pmouseY);
}
