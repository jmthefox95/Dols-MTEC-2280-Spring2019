float growth = 0;
float time = 0;
float moveR=0;
float moveT=0;

void setup(){
    size(800,800);
    background(255);
    frameRate(10);
}

void draw() {
  time = millis() / 1000;
  
      if(time < 10){
        noFill();
        quad(0-moveT, 5, 0-moveT, 50, 0-moveR, 3, 0-moveR, 6);
        ellipse(520/2,520/2,400,300 - growth);
        ellipse(720/2,720/2,400,300 - growth);
      }
      if(time > 15){
        triangle(500, 500, 200, 700 - growth, 300, 300);
    triangle(400, 400, 600 - growth, 100, 200, 200);
    triangle(600, 600, 300, 800 - growth, 400, 400);
      }
 moveR= moveR+5;
  moveT= moveT+2;
  growth= millis()/10;
  println(time);
}
 
