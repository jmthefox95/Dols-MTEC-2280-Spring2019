//Patrick Rufino
    
int x = 300;
int y = 300;

void setup() {
  size(600,600);
}

void draw() {
  
  if(mouseX < 300 && mouseY < 300){
      frameRate(60);
      strokeWeight(10);
      drawRain();
  } else if ( mouseX > 300 && mouseY < 300){
      frameRate(3);
      fill(random(255),random(255),random(255), 50);
      drawRectLoop();
  } else if( mouseX < 300 && mouseY > 300 && mouseButton == LEFT){
      frameRate(3);
      background(255);
      drawCircleLoop();
    } else if (mouseButton == RIGHT){
      frameRate(2);
      background(random(255), random(255), random(255));
    }
}
  
      
    
void drawRain() {  //make function outside of your draw loop
  for( int r = 1; r <= 600; r += 10){
    point( random(r), random(r));
  }
}

  void drawRectLoop(){
  noStroke();
  for( int r = 0; r <= 100; r += 1){
      fill(random(255),random(255),random(255), 75);
      rect(250, r, 100, 100);
      rect(250, 550 - r, 100, 100);
      rect(r, 275, 100, 100);
      rect(500 - r, 275, 100, 100);
    }
}

void drawCircleLoop(){
  for( int r = 0; r <= 600; r += 100){
      fill(random(255),random(255),random(255), 75);
      ellipse(r, 300, 100, 100);
      ellipse(300, r, 100, 100);
      ellipse(r, r, 100, 100);
    }
}
