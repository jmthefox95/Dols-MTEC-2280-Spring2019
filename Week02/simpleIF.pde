//Simple "IF statement"

void setup(){
  size(600,600);
  
}

void draw() {
  
  background(0,0,0);
 
  if (mousePressed){
    fill(255,255,255);
    ellipse(300,300,100,100);
  }
  
  //  if (mousePressed){  // ellipse color changes depending on if  you click at the top or bottom of the canvas..
  //    if (mouseY>300){
  //      fill(255,255,255);
  //    }else if (mouseY<300){
  //      fill(212, 244, 66);
  //    }
  //  ellipse(300,300,100,100);
  //}
}
