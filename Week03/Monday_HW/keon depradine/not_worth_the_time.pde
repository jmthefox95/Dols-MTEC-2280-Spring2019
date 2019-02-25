// Example 10-4: Implementing a timer 
// From Learning Processing http://learningprocessing.com/examples/

int savedTime;
int totalTime2 = 1000;
void setup() {
  size(600, 600);
  background(0);
  savedTime = millis();
}

void draw() {
  // Calculate how much time has passed
  int passedTime = millis() - savedTime;
  
  if (passedTime > totalTime2) {
    println("1 seconds have passed!");
fill(random(255), random(255), random(255));
   ellipse(random(500), random(500), 55, 55); 
    savedTime = millis(); // Save the current time to restart the timer!
  


}
}
