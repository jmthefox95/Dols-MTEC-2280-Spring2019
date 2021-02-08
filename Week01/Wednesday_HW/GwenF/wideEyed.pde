int moutheight;
float pupil = 20;
boolean dilated = false;
//boolean open;

void setup()
{
  size(800,800);
  background(255);
  ellipseMode(CENTER);
}

void draw()
{
  gradient(#ff00c8, #ff7b00, 0.001, 0, width, 0, height);
  //eyes
  fill(250);
  noStroke();
  ellipse(180,200,225,225);
  ellipse(620,200,225,225);
  fill(50);
  ellipse(180,200,pupil,pupil);
  ellipse(620,200,pupil,pupil);
  
  if(pupil <= 180 && pupil > 20)
  {
    dilated = true;
  }
  if(pupil >= 20 && pupil < 180)
  {
    dilated = false;
  }
  while(dilated == true){pupil-=10;}
  while(dilated == false){pupil+=10;}
  //mouth
  //mouth(250,410,300,5,200);
}

//gradient should color from given bounds
//x values should remain the same while y values change
//the y values should increase/decrease by a pixel
void gradient(color start, color end, float inc, int leftBound, int rightBound, int topBound, int bottomBound)
{
  //create a loop that will create lines with diff stroke colors
  for(float i = 0.0; i <= 1; i += inc)
  {
    int y = topBound;
    strokeWeight(500);
    stroke(lerpColor(start, end, i));
    line(leftBound, y, rightBound, y);
    topBound++;
  }
}

void mouth(int x, int y, float mawWidth, int numTeeth, float mawHeight)
{//make a loop that creates a row of teeth
  float base = mawWidth/numTeeth;
  noStroke();
  fill(#94003e);
  rect(x, y, mawWidth, mawHeight);
  fill(250);
  for(int i = 0; i <= numTeeth; i++)
  {
    triangle(x-(base*i),y, x+(base*(i+1)),y, x+((base*(i+1))/2),y+mawHeight);
    fill(255);
    ellipse(x+(base*(i+1)), y, 20,20);
    println(base*i);
  }
}
