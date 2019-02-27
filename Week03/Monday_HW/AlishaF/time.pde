//Alisha F
float r;
float b;

int savedTime;
int totalTime = 1000;

void setup() {
  size(500, 500);
  background(0);
  savedTime = millis();
}

void draw() {

  int passedTime = millis() - savedTime;
  if (passedTime > totalTime) {
    println("1 second has passed");
  
     background(r, b, 50);
     r = random(50, 150);
     b = random (0,255);
  println(r);
  
  savedTime = millis(); 

  }
}
