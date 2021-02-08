//Patrick Rufino
// Update enemy functions 3/18 Done
// Pause button help 
// Midterm Presentation W.I.P 3/20
// Final 3/24


//Images
PImage img;
PImage img2;
PImage img3;
PImage img4;
PImage img5;

//Mario
float xpos;
float ypos;

//Goomba
float GposX = 0;
float GposY = 285;
float GmoveRate = 3;

//Bullet
float BposX = -50;
float BposY = 265;
float BmoveRate = 5;

//Plant
float PposX = 225;
float PposY = 50;
float PmoveRate = 4;

//Plant2
float PposX2 = 225;
float PposY2 = 50;
float PmoveRate2 = 4;

//Plant3
float PposX3 = 225;
float PposY3 = 50;
float PmoveRate3 = 4;
  
//Score and Time
float score = 0;
float seconds = 0;

//Button
boolean Button = false;

void setup() { 
  size(500, 350); 
  xpos = 250; 
  ypos = 285;
  //frameRate(60);
  img = loadImage("Mario.PNG");
  img2 = loadImage("goomba.png");
  img3 = loadImage("DonutPlains1.png");
  img4 = loadImage("bullet_left.png");
  img5 = loadImage("Plant.png");

}
 
void draw() { 
  
  image(img3, 0, 0,width, height);

  seconds = millis() / 1000;
  
  Score();
  
  Pause();
  
  Mario(); 
  
  Movement();
  
  //Plant();
  
  //Plant2();
  
  
  if(seconds >= 3 && seconds <= 21.5){
  Goomba();
  //if(xpos >= GposX  && xpos <= GposX && ypos >= GposY  && xpos <= GposY){
     //if(dist(xpos, ypos,  GposX, GposY) < 20){
     //   //println("Game over");
     //   //delay(3000);
     //   textSize(25);
     //   text("Game Over", 200, 175);
     //   //noLoop();
        
     // }
  }
  
  if(seconds >= 25 && seconds <= 34){
    Bullet();
    //if(xpos >= BposX  && xpos <= BposX && ypos >= BposY  && xpos <= BposY)
    //if(dist(xpos, ypos,  BposX, BposY) < 30){
    //    //println("Game over");
    //    //delay(3000);
    //    textSize(25);
    //    text("Game Over", 200, 175);
    //    noLoop(); 
    //  }
  }
  
  if(seconds >= 37){
    Plant();
    Plant2();
    Plant3();
    Goomba();
    if(dist(xpos, ypos,  PposX, PposY) < 30){
        //println("Game over");
        //delay(3000);
        textSize(25);
        text("Game Over", 200, 175);
        noLoop(); 
      }
  }
  

  println(seconds);
   //println(dist(xpos,ypos,  BposX, BposY));
      //println(dist(xpos,ypos,  PposX, PposY));

}
 
void Mario() { 
  image(img, xpos, ypos, 17, 30);
}
 
void Movement() {
 
  float moveRate = 5.0 ; 
  if (Left) { 
    xpos = xpos - moveRate;
  } 
  if (Right) { 
    xpos = xpos + moveRate;
  } 
 
  if (ypos>=250)
    ypos=285;
  else
    ypos=ypos+5;
}
 
//this next block of code is held in a different tab labeled keyboard
 
boolean Left = false, Right = false;
 
void Press (boolean T) { 
  if (key == 'a') { 
    Left = T;
  } 
  if (key == 'd') { 
    Right = T;
  }
}
 
void keyPressed() { 
  Press(true);
}
 
void keyReleased() { 
  Press(false);
 
    if (key == 'w') { 
    ypos=ypos-100;
    //if (ypos > 400) { 
    //  ypos -=20;
    //} else {
    //  ypos+=20;
    //}
  }
}

void Goomba(){
  GposX = GposX + GmoveRate;
    image(img2, GposX, GposY, 25, 30);
      if(GposX > width + 20){
        GposX = -50;
      }
      
      if(dist(xpos, ypos,  GposX, GposY) < 20){
        //println("Game over");
        //delay(3000);
        textSize(25);
        text("Game Over", 200, 175);
        noLoop();
        
      }
}

void Bullet(){
  BposX = BposX - BmoveRate;
    image(img4, BposX, BposY, 50, 50);
      if(BposX < -100){
        BposX = width + 100;
      }
      
      if(dist(xpos, ypos,  BposX, BposY) < 30){
        //println("Game over");
        //delay(3000);
        textSize(25);
        text("Game Over", 200, 175);
        //noLoop(); 
      }
}

void Plant(){
  PposY = PposY + PmoveRate;
  //image(img5, PposX, PposY, 50, 50);
  //for(int p = 0; p <= 250; p = p + 75){
    image(img5, PposX, PposY, 50, 50);
//}
  if(PposY > 450){
    PposY = -50;
  }
  if(PposY > 450){
    PposX = random(width);
    PposY = -75;
  }
   if(dist(xpos, ypos,  PposX, PposY) < 35){
        //println("Game over");
        //delay(3000);
        textSize(25);
        text("Game Over", 200, 175);
        noLoop(); 
      }
}

void Plant2(){
  PposY2 = PposY2 + PmoveRate2;
  //PposX = 250;
  //image(img5, PposX2, PposY2, 50, 50);
  //for(int p = 200; p <= width; p = p + 100){
    image(img5, PposX2, PposY2, 50, 50);
//}
  if(PposY2 > 450){
    PposX2 = random(width);
    PposY2 = -75;
  }
   if(dist(xpos, ypos,  PposX2, PposY2) < 35){
        //println("Game over");
        //delay(3000);
        textSize(25);
        text("Game Over", 200, 175);
        noLoop(); 
      }
}

void Plant3(){
  PposY3 = PposY3 + PmoveRate3;
  //PposX = 250;
  //image(img5, PposX2, PposY2, 50, 50);
  //for(int p = 200; p <= width; p = p + 100){
    image(img5, PposX3, PposY3, 50, 50);
//}
  if(PposY3 > 450){
    PposX3 = random(width);
    PposY3 = -75;
  }
   if(dist(xpos, ypos,  PposX2, PposY2) < 35){
        //println("Game over");
        //delay(3000);
        textSize(25);
        text("Game Over", 200, 175);
        noLoop(); 
      }
}

void Score(){
  score = millis()/2;
  fill(0);
  textSize(25);
  text("Score: " + score, 10, 30);
}

void Pause(){
  int rx = 415;
  int ry = 0;
  int rw = 70;
  int rh = 35;
  
  textSize(25);
  text("Pause", 415, 30);
  noFill();
  rect(rx, ry, rw, rh);
  if(mousePressed && mouseX > rx && mouseX < rx + rw && mouseY > ry && mouseY < ry + rw){
    Button = true;
    noLoop();
    //delay();
  } else {
    Button = false;
    loop();
  }
}
