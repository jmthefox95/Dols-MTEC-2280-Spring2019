//Naomi Marshall
//Pyschedelic Tears
//They're not high I promise

float growth = 0.1;
float rate = 1;


int Tear = 10;
float mover= 0; 
float movel= 0; 
float move= 0.4; 
boolean moveboolean = true;
void setup(){
  size(600,600);
  background(155,155,155);
  
}

void draw() {
  
  

  //fill(255,255,255,1); // Fun Halo effects
  //ellipse(300,100,growth+10,growth+10);
  
 
  //if (mousePressed){
  //  rate = -1;
  //}else{             //Try removing this else statement
  //  rate = 1;
  //}
  
  //growth = growth + rate;
 
  //left side
  fill(255, 211, 211);
  stroke(25, 76, 27);
  ellipse (200, 200, 100, 50); // eye
  stroke(44, 112, 28);
  fill(66, 247, 78);
  strokeWeight(2);
  ellipse(200, 200, 40, 40);
  fill(0,0,0);
  stroke(18, 81, 52);
  strokeWeight(3);//pupil
  ellipse(200, 200, 20, 20);
  
  //right side
  fill(255, 211, 215);
  ellipse (400, 200, 100, 50); // eye
  stroke(37, 117, 42);
  fill(70, 226, 140);
  strokeWeight(2);
  ellipse(400, 200, 40, 40); 
  fill(0,0,0);
  stroke(16, 71, 41);
  strokeWeight(3);//pupil
  ellipse(400, 200, 20, 20);
  
  if (mouseX > 300){  //Does the ball exceed hit the right wall?
   moveboolean = false;
 }
 
 if (mouseX < 300){  //Does the ball thie the left wall?
   moveboolean = true;
 }
 
  if (moveboolean == false){  // if the ball hits the right wall move the opposite direction...left
   mover= mover+0.7;
 }
 
  if (moveboolean == true){  // if the ball hits the left wall move the opposite direction... right
   movel= movel+0.7;
 }
 //tears right side
  stroke(mouseY, 1+(.05*mouseY), mouseX);
  fill(mouseY, 1+(.05*mouseY), mouseX);
  ellipse (400, 220 + mover*3, Tear, Tear); // animates the object down the page
  ellipse (380, 220 + mover, Tear, Tear); // animates the object down the page
  ellipse (420, 220 + mover/2, Tear, Tear); // animates the object down the page

//tears left side
  stroke(119, mouseY, mouseX);
  fill(119, mouseY, mouseX);
  ellipse (200, 220 + movel/2.5, Tear, Tear); // animates the object down the page
  ellipse (180, 220 + movel*1.5, Tear, Tear); // animates the object down the page
  ellipse (220, 220 + movel*2, Tear, Tear); // animates the object down the page
 strokeWeight(3);
  stroke(0, 0, 0);
  
  move= move+0.7;
//annoying eyebrows
noStroke();
fill(0,0,0,18);
quad(135, 145, 135, 125, 270, 120, 265, 150);
triangle(85, 155, 135, 125, 135, 145);
noStroke();
fill(0,0,0,18);
quad(335, 150, 325, 120, 475, 125, 475, 145);
triangle(525, 155, 475, 125, 475, 145);

//I wanted to make one of the tears change speed with the movement of the mouse but I couldn't do it without making the tear flow back up
//I also wanted to add a halo of expanding light to the middle of the head but I couldn't do that without it effecting the tears 


}
