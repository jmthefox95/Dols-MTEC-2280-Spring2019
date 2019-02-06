void setup() {
  size (800, 800);
  background (255, 255, 255);
}


void draw() {
  //background (255, 255, 255); //If in draw loop, "background" 'erases' all frames before current

  if (mousePressed == true){
  for (int i = 0; i < width; i++) {
    float r = random(1,255);
    stroke(r*1);
  strokeWeight(5);
  rect(mouseX, mouseY, pmouseX, pmouseY);
  }
}else{
  
  
  stroke(239, 255, 73);
  strokeWeight(5);
  ellipse(mouseX, mouseY, pmouseX, pmouseY);
}
}
