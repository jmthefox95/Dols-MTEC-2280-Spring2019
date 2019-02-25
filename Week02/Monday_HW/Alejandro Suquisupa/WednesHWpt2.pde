boolean moveball = true;
int moveRate = 15;
int locationX = 0;
int locationY = 5;

void setup() {
 size(600,600);
}

void draw() {
 background(94, 227, 237);
 fill(0);
 ellipse(locationX,locationY,15,15);
if (locationX > 600) {
    moveball = true;
}
if (locationX < 0) {
  moveball = true;
}
if (locationY > 600) {
  moveball = false;
}
if (locationY < 0) {
  moveball = true;
}
if (moveball == false) {
  moveRate = -7;
}
if (moveball == true) {
  moveRate = 7;
}
locationX = locationX+moveRate;
locationY = locationY+moveRate;
}
