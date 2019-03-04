boolean button = false;

int x = 50;
int y = 50;
int w = 50;
int h = 75;
float m=0;

void setup() {
  size(480, 270);
}

void draw() {


  //Switch!
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h && mousePressed) {
    button = !button;
    delay(100);
  } 

  if (button) {
    background(255);

    //stroke(50);
    fill(255, 238, 58, 100);
    ellipse( 240, 135, 50, 50);
    translate(0, 10);
    //translate(10,-10);
    //fill(255);
    //stroke(0);
    //ellipse( 40,200, 50,50);
  } else {
    background(0, 0, 0);

    fill(255, 238, 58);
    ellipse( 240, 135, 50, 50);
    fill(71, 229, 22);
    rect(x, y, w, h);
    fill(255);
    ellipse( 40+m, 200, 50, 50);
    fill(255, 0, 0);
    ellipse( 30+m, 200, 10, 10);
    ellipse( 50+m, 200, 10, 10);
  }

  fill(175);

  rect(x, y, w, 50);
  //fill(0);

  //fill(255);
  //ellipse( 40,200, 50,50);
  if (mousePressed && button==true)
  {
    m=m+10;
    println(m);
  }

  if (m>400)
  {
    m=0;
    button=!false;
  }
}
