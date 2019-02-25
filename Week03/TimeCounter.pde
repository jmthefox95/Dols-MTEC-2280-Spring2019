// Working with Example 10-4: Implementing a timer 
// From Learning Processing http://learningprocessing.com/examples/

int savedTime;
int totalTime = 1000;
int counter = 0;

void setup() {
  size(200, 200);
  background(0);
  savedTime = millis();
}

void draw() {
  // Calculate how much time has passed
  int passedTime = millis() - savedTime;
  // Has five seconds passed?
  if (passedTime > totalTime) {
    println("1 seconds have passed!");
    background(random(255)); // Color a new background
    savedTime = millis(); // Save the current time to restart the timer!
    counter++;
  }
  
   if (counter ==10){  // reset your counter
   counter =0;
 }
 
 println(counter);
  
}
