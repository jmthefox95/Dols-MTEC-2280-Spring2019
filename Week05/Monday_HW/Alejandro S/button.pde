// Alejandro Suquisupa

boolean button = false;
int x = 66;
int y = 66;
int w = 75;
int h = 70;


void setup() {
 frameRate(5);
 size (500,500);
}

void draw() {
 if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h && mousePressed) {
   button = true;
 } else {
   button = false;
 }

if (button) {
 background(226, 201, 36);
}  else {
 background(random(255));
}

fill(175);
rect(x,y,w,h);
}
