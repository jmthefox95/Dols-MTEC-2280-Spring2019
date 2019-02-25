//Quenton Blake
float radius = 80;
float radius2 = 200;
float x = 110;
float speed = 3;
float direction = 1;
float Fill = 0;
float stroke;

void setup() {
  size(800, 800);
}

void draw() {
   background(5);
   x += speed * direction;
  strokeWeight(4);
  stroke = Fill + random(-10, 10);
  fill(stroke);  
   if ((x > width-radius) || (x < radius)) {
   direction = -direction; // Flip direction
 }
    if (direction == 1) {
  fill(255, 255, 0);
  strokeWeight(4);
   arc(x, 380, radius, radius, 0.52, 5.76, PIE); // Face right
 } 
    
    
    else {
   fill(255, 255, 0);
   strokeWeight(4);
   arc(x, 380, radius2, radius2, 3.67, 8.9,PIE); // Face left
 }
}
