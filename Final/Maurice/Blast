class Blast{
float speed;
float x;
float y;
float w;
float x1;
float y1;
float tempX1;
float tempY1;


Blast(float tempX, float tempY, float tempW){
x = tempX;
y = tempY;
w = tempW;
speed = -10;
}

void gravity(){
  speed = speed +gravity;
}

void move(){

  y = y+speed;
  if(y>height){
  speed = speed * -0.95;
  y = height;
    }
    ///////////////////////////
   hit = dist(enemyX, enemyY, x, y);
   if (hit <40){
     enemyLife = false;
     enemyDeath = true;
   }
   if(enemyDeath == true){
     enemySpeed = 30;
   enemyX = 1800;
   enemyY = 1800 - 10;
   points = points +1;

   }
   /////////////////////////////////////
     hit1 = dist(enemy2X, enemy2Y, x, y);
   if (hit1 <40){
     enemyLife1 = false;
     enemyDeath1 = true;
   }
   if(enemyDeath1 == true){
  enemySpeed1 = 15;
   enemy2X = -100;
   points = points +1;
 
   }
   /////////////////////////////
     hit2 = dist(enemy3X, enemy3Y, x, y);
   if (hit2 <40){
     enemyLife2 = false;
     enemyDeath2 = true;
   }
   if(enemyDeath2 == true){
   enemySpeed2= 0;
   enemy3X = -1000;
   points = points +10;
   if(enemy3Y == -1000){
   enemy3X = enemy3X + 1000;
       }
     }
     ////////////////////////////////
      hit3 = dist(enemy4X, enemy4Y, x, y);
   if (hit3 <40){
     enemyLife3 = false;
     enemyDeath3 = true;
   }
   if(enemyDeath3 == true){
     enemySpeed3 = 30;
   enemy4X = -100;
   points = points +1;
         }
 //////////////////////////////////////
     hit4 = dist(enemy5X, enemy5Y, x, y);
   if (hit4 <40){
     enemyLife3 = false;
     enemyDeath3 = true;
   }
   if(enemyDeath3 == true){
   enemySpeed3= 0;
   enemy5X = -1000;
   points = points +10;
   if(enemy5Y == -1000){
   enemy5X = enemy5X + 1000;
         }
      }
 }
     ////////////////////////////
   
   
  
  
  void display(){
  fill(255,0,0);
  stroke(0);
  image(imageblast,x,y,w,w);
  }
}
