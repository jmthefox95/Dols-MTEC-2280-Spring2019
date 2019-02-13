int savedTime;
int totalTime = 5000;
float distSomething;
float something = random(100, 300);
float something2 = random(100, 300);
void setup() {
  size(800, 800);
  background(0);
  savedTime = millis();
}

void draw() {

  int passedTime = millis() - savedTime;


  if (passedTime > totalTime) 
  {
    println("BOOM!");
    //background(216, 43, 43); // Color a new background
    savedTime = millis(); // Save the current time to restart the timer!
  } else if (3==3)
  {
    for (int i = 5; i > 0; i = i-1)
    {
      background(255);
      fill(0);
      rect(something, something2, 50, 10);
      //rotate(PI/2);
      ellipse(something, something2, 50, 50);

      fill(0);
      translate(0, 1);
      println(i);
      println(something);
      delay(1000);
      something= random(100, 300);
      something2= random(100, 300);

      distSomething = dist(something,something2, mouseX, mouseY);

      //if (mouseX==something && mouseY==something2)
      if (distSomething <=50)
      {
        println("bomb deffused");
        background(66, 244, 66);
      }
    }
  }
}
