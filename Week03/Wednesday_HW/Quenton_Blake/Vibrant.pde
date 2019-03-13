//Quenton Blake
float time = 0;
int m;
void setup() {
  size(900, 900);
  frameRate(5);
  background(50, 120, 90);
}

void draw() {
   m = millis();  // millitime of Processing internal clock
  time = m/1000;  // gives the time of internal clock

  if(mousePressed){
     for (int r = 0; r <= 300; r += 20) { 
       noStroke();
       fill(random(255), random(255), random(255));
       rect(100, 100, 300 - r, 300 - r);
       rect(100, 100, 300 + r, 300 + r);
       rect(100 + r, 100 - r, 600, 600);
       rect(100 - r, 100 + r, 600 , 600);       
  }
 }
 if(time == 5){
    clear();
}

if(time == 10){
    clear();
    
}
if(time == 15){
    clear();
    
}
if(time == 20){
    clear();
    
}
if(time == 25){
    clear();
    
}
if(time == 30){
    clear();
    
}
 println(time);
}
