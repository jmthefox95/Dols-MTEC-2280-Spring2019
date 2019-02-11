//Alejandro Suquisupa

void setup() {
  size(600,600);
  background(255);
}

void draw() {
  fill(229, 18, 222,1);
  quad(100,100,100,500,500,100,500,500);
  fill(239, 210, 203,1);
  triangle(500,500,100,500,300,300);
  triangle(100,100,500,100,300,300);
  
  line(mouseX, mouseY+70, mouseX, mouseY-70);
  
}
