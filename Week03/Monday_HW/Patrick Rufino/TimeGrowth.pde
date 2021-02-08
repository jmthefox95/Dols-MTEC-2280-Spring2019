//Patrick Rufino

float growth=0;
float seconds = 0;

void setup() {
  size(600,600);
  background(255);
  frameRate(10);
}

void draw() {
  
  seconds = millis() / 1000;
    
  if(seconds < 6){
    noFill();
    ellipse(300, 300, 50, 300 - growth);
    ellipse(300, 300, 300 - growth, 50);
  } 
  
  if(seconds > 7){
    noStroke();
    
    fill(0, 255, 255);
    ellipse(50, 550, 300 + growth/10, 300 + growth/10);
    
    fill(255, 255, 0);
    ellipse(50, 50, 300 + growth/10, 300 + growth/10);
    
    fill(255, 0, 255);
    ellipse(550, 50, 300 + growth/10, 300 + growth/10);
    
    fill(255, 127, 127);
    ellipse(550, 550, 300 + growth/10, 300 + growth/10);
  }
  
  if(seconds == 20){
    background(0,0,0);
    fill(255,255,255);
    ellipse(250, 300, 50, 50);
    ellipse(350, 300, 50, 50);
    ellipse(300, 350, 100, 50);

  }
  
  growth= millis()/10;
  println(seconds);
}
