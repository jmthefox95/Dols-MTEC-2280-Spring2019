boolean growboolean = true;
float growRate = 0.5;
float diameter = 100;
float mouseDistance;

void setup() {
  size(700, 700) ;
}

void draw() {
  background(255, 255, 255);

  mouseDistance = dist(mouseX, mouseY, 350, 350);

  ellipse(350, 350, diameter, diameter);

  //constrain (mouseX,diameter,diameter);

  if (mouseDistance > diameter/2) {
    growboolean= true;
  }

  println(growboolean);

  if (mouseDistance < diameter/2) {
    growboolean= false;
  }

  if (growboolean == false) {
    growRate = 0.3;
  }

  if (growboolean == true) {
    growRate = -0.2;
    diameter= constrain(diameter,100,700);
    //diameter = 100;
  }

  diameter = diameter+growRate;
}
