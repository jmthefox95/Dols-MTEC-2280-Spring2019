//Set Variables
int RoundSize = 50;
float  move= 10.5;
float move2=10.5;
float move3=10.5;
float move4=10.5;
float a=300;
float b= 500;
float c=100;
int r = 10;

//Create two blocks of code
void setup() {
  size (800, 800);
  background(200, 20, 30);
}

void draw() {


    stroke(100);
    fill(255, 0, 0);
  
 //Create circles with 4 speeds one under the other and their mirror image
  ellipse (a + move, c, RoundSize, RoundSize);
  ellipse (b - move, c, RoundSize, RoundSize);

  ellipse (a + move2, c*2, RoundSize, RoundSize);
  ellipse (b - move2, c*2, RoundSize, RoundSize);

  ellipse (a + move3, c*3, RoundSize, RoundSize);
  ellipse (b - move3, c*3, RoundSize, RoundSize);

  ellipse (a + move4, c*4, RoundSize, RoundSize);
  ellipse (b - move4, c*4, RoundSize, RoundSize);

  move= move + r;
  move2=move2+ r;
  move3=move3+0.6;
  move4=move4+0.8;
  
  //limit the circles trajectory with if statements 
  if (a+ move4 >=700) {
   
    move4=move4*0;
  } 
  if (a+move3 >=700) {
    move3=move3*0;
  }

if (a+move2 >=700) {
  move2 =move2 *0;
}
if (a+move >=700) {
  move=move*0;
    //background(200, 20, 30);
}

}
