//Naomi Marshall
//Attempt at a Clock
//It's not the best but at least it works
//Inner hand counts seconds, outer counts 5
//It's been updated to star at the top


int counter = 0;
int savedTime;
int totalTime = 1000;
int counter2 = 0;
int savedTime2;
int totalTime2 = 5000;

void setup() {
  size(600, 600);
  savedTime = millis();
  savedTime2 = millis();
  
}

void draw() {
  
  background(210, 168, 255);
  rectMode(CORNER);
  
  pushMatrix();
  translate(300, 300);
  fill(182, 38, 255, 150);
  
  
  int passedTime = millis() - savedTime;
  if (passedTime > totalTime) {
    println("1 second");
    counter++;
    savedTime = millis(); // Save the current time to restart the timer!
    }
  rotate(2*PI+(counter*PI)/60);
  rect(-5, 0, 10, -100);
 
  
  popMatrix();
  
  pushMatrix();
  
   translate(300,300);
  fill(182, 38, 255, 150);
  
  int passedTime2 = millis() - savedTime2;
  if (passedTime2 > totalTime2) {
    println("5 seconds");
    counter2++;
    savedTime2 = millis(); // Save the current time to restart the timer!
    }
  rotate(2*PI+(counter2*PI)/12);
  rect(-5, -200, 10, 100);
  
  fill(0, 0, 255, 30);
 

  popMatrix();
  fill(182, 38, 255, 100);
  ellipse(300,300,200,200);
  ellipse(300,300,400,400);
  
}
