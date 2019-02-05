// Julian Frost
float move= 0.1; 
float orbit = 20;


void setup() {
  size (800, 800);
  background (255, 10);
}


void draw() {
  
if (mousePressed)
{
  //Growth
  noFill();
  ellipse (mouseX, mouseY, 0 + growth, 0 + growth); // This ellipse will expand over time
  
  
  ellipse (mouseX+ orbit*cos(move/1.1), mouseY+ orbit*sin(move/1.1), 2, 2); // Another orbiter... moving slower

  // Reassign a new value to "move" and "growth" at the end of each draw loop cycle
  move= move+0.2;
  growth= random(1,10);
  stroke((random (0,255)),(random (0,255)),(random (0,255)));
    strokeWeight(10);
    line(mouseX, mouseY, pmouseX, pmouseY);
  
}
else{
delay(1000);
  background ((random (0,255)),(random (0,255)),(random (0,255)));
delay(0);
}
}

//lines 2,3,22,21,24 tweaked Chester Dols example code
