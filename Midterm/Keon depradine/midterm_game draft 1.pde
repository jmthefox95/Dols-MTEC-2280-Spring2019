ArrayList <Bullet> bullets = new ArrayList <Bullet> ();
PVector player, playerSpeed;
float maxSpeed = 3;
 
void setup() {
  size(600, 600);
  player = new PVector(width/2, height/2);
  playerSpeed = new PVector();
  noCursor();
  noStroke();
  smooth();
}
 
void draw() {
  background(255);
   
    ellipse(300, 300, 60, 60);
  
  player.add(playerSpeed);
  fill(255, 0, 0);
  ellipse(player.x, player.y, 20, 20);
  fill(255);
  ellipse(player.x, player.y, 10, 10);
 
  PVector mouse = new PVector(mouseX, mouseY);
  fill(0);
  ellipse(mouse.x, mouse.y, 5, 5);
 // every 5th frame AND when the mouse is pressed
  if (frameCount%5==0 && mousePressed) {
// get the direction from the player to the mouse
    PVector dir = PVector.sub(mouse, player);
// normalize it to length 1 (make it as unit vector)
    dir.normalize();
// multiply it by maxSpeed times three (giving the direction a fixed velocity)
    dir.mult(maxSpeed*3);
// create a new bullet at the position of the player in the direction of the mouse
    Bullet b = new Bullet(player, dir);
// add the new bullet to the list
    bullets.add(b);
  }

// for each bullet b in the the list of bullets
  for (Bullet b : bullets) {
// run the bullet's update() method
    b.update();
// run the bullet's display() method
    b.display();
  }
}

// class Bullet which extends PVector (note PVector differences between 1.5.1 and 2.0xx)
class Bullet extends PVector {
// have a velocity variable for the bullet's velocity
  PVector vel;
// constructor for Bullet with location and direction/velocity
  Bullet(PVector loc, PVector vel) {
// send the location to the PVector constructor (where it is stored in x, y variables)
    super(loc.x, loc.y);
// send the velocity to the instance variable PVector vel
    this.vel = vel.get(); // make a copy just to avoid any reference problems
  
  }
 
  void update() {
    add(vel);
  
  
}
 
  void display() {
    
    fill(0, 0, 255);
    ellipse(x, y, 3, 3);
 
}
}
 
void keyPressed() {
  if (key == 'w')    { playerSpeed.y = -maxSpeed; }
  if (key== 's')  { playerSpeed.y = maxSpeed;  }
  if (key == 'a')  { playerSpeed.x = -maxSpeed; }
  if (key== 'd') { playerSpeed.x = maxSpeed;  }
{
  final int k = keyCode;

  if (k == 'P')
    if (looping)  noLoop();
    else          loop();
}
}
 
void keyReleased() {
  if (key == 'w' || key == 's')    { playerSpeed.y = 0; }
  if (key == 'a' || key == 'd') { playerSpeed.x = 0; }
}
