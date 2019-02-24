int m;
float timeColor = 0;
float seconds = 0;


void setup(){
 frameRate(5);
}

void draw(){
  
  m = millis();  // milliseconds of Processing internal clock
  seconds = m/1000;  // gives the seconds of internal clock
  
  noStroke();  
  timeColor = m % 255;  // "Modulo" of m and 255.  Gives the remainder of m divided by 255.
  fill(timeColor);
  rect(25, 25, 50, 50);
  
 println(seconds);
}
