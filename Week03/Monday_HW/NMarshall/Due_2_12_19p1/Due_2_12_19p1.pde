//FLASHING LIGHTS!!!!!


//Naomi Marshall
//Variation of Last Piece
//I feel pretty sick making this tbh :(
//I think I might be a bit sensitive to flashing lights but I can't get a framerate to work


float harmX =0;
float harmY =0;
float harm =0;
float harm2 =0;
float phi =0;

int counter = 0;
int counter2 = 0;
float seconds = 0;

int savedTime;
int totalTime = 3000;
  

void setup() {
  size(600, 600);
  background(172, 141, 186);
  frameRate(30);
  savedTime = millis();
}

void draw() {
  //background(172, 141, 186); 
  //background(mouseY, 141, 186);
  pushMatrix();
  
 if (mousePressed){    
    counter= counter+5; 
    counter2= counter2+40; 
  }
  
 
 if (counter ==260){  // reset your counter
   counter = 0;
 }
 
 println(counter);
 println(counter2);
 
  translate(300, 300);
  fill(random(255), random(255), random(255), 15);
  
  stroke(0, 0, 0);
  strokeWeight(1);
  
  rotate(3*PI+counter2/19);
  ellipse(0, 200, 300, 100);

  rotate(3*PI/19);
  ellipse(0, 200, 300, 100);

  rotate(3*PI/19);
  ellipse(0, 200, 300, 100);

  rotate(3*PI/19);
  ellipse(0, 200, 300, 100);

  rotate(3*PI/19);
  ellipse(0, 200, 300, 100);

  rotate(3*PI/19);
  ellipse(0, 200, 300, 100);

  rotate(3*PI/19);
  ellipse(0, 200, 300, 100);
  
  rotate(3*PI/19);
  ellipse(0, 200, 300, 100);

  rotate(3*PI/19);
  ellipse(0, 200, 300, 100);

  rotate(3*PI/19);
  ellipse(0, 200, 300, 100);

  rotate(3*PI/19);
  ellipse(0, 200, 300, 100);

  rotate(3*PI/19);
  ellipse(0, 200, 300, 100);

  rotate(3*PI/19);
  ellipse(0, 200, 300, 100);

  rotate(3*PI/19);
  ellipse(0, 200, 300, 100);

  rotate(3*PI/19);
  ellipse(0, 200, 300, 100);
  
  rotate(3*PI/19);
  ellipse(0, 200, 300, 100);

  rotate(3*PI/19);
  ellipse(0, 200, 300, 100);

  rotate(3*PI/19);
  ellipse(0, 200, 300, 100);

  rotate(3*PI/19);
  ellipse(0, 200, 300, 100);
  
  rotate(3*PI/19);
  ellipse(0, 200, 300, 100);

  rotate(3*PI/19);
  ellipse(0, 200, 300, 100);

  rotate(3*PI/19);
  ellipse(0, 200, 300, 100);

  rotate(3*PI/19);
  ellipse(0, 200, 300, 100);
  
  rotate(3*PI/19);
  ellipse(0, 200, 300, 100);

  rotate(3*PI/19);
  ellipse(0, 200, 300, 100);

  rotate(3*PI/19);
  ellipse(0, 200, 300, 100);

  rotate(3*PI/19);
  ellipse(0, 200, 300, 100);
  
  rotate(3*PI/19);
  ellipse(0, 200, 300, 100);

  rotate(3*PI/19);
  ellipse(0, 200, 300, 100);

  rotate(3*PI/19);
  ellipse(0, 200, 300, 100);

  rotate(3*PI/19);
  ellipse(0, 200, 300, 100);
  
  rotate(3*PI/19);
  ellipse(0, 200, 300, 100);

  rotate(3*PI/19);
  ellipse(0, 200, 300, 100);

  rotate(3*PI/19);
  ellipse(0, 200, 300, 100);

  rotate(3*PI/19);
  ellipse(0, 200, 300, 100);
  
  rotate(3*PI/19);
  ellipse(0, 200, 300, 100);

  rotate(3*PI/19);
  ellipse(0, 200, 300, 100);

  rotate(3*PI/19);
  ellipse(0, 200, 300, 100);
  
  
  
  
  
  
  
  
  popMatrix();
  
  //ellipse(300,300,10,10);
  
   int passedTime = millis() - savedTime;

  
 
  stroke(82, 24, 107);
  
  
  if (passedTime > totalTime) {
    println("3 seconds have passed!");
    fill(111, mouseY/2, random(255));
    savedTime = millis(); // Save the current time to restart the timer!
  }
  
  
  strokeWeight(1);
  ellipse(300, 300, 40, 40);
  fill(0,0,0);
  stroke(66, 14, 89);
  strokeWeight(2);//pupil
  ellipse(300, 300, 20, mouseY/16);
  
  
   translate(300,300);
  rotate(phi);   // Larger orbit
  
  //ellipse(0,0,100,100);
  
  fill(115, mouseX, counter);
  ellipse(harmX, harmY, 15, 25);  // change the x and y to have more interesting patterns.  Try adding a growth variable here
  
  harmX = 160*cos(harm);   
  harmY = 2*sin(harm2);
  
  harm = 0.05 + harm;
  harm2 = 0.0001 + harm2;
  
  phi = 0.08+ phi; //play with this to change harmonic rate
  
  
  
  
}
