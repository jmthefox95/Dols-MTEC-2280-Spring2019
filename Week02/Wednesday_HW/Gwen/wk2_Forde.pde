//Gwendolyn F.
/*
  Press Left mouse button to raise ball
  Press Right mouse button to lower ball
*/

int goalY;
int ballY;
int goalHeight;
int bound = goalHeight/2;
boolean inside;
int score;


void setup()
{
  size(800,800);
  ellipseMode(CENTER);
  score = 0;
  ballY = height/2;
  goalHeight = 100;
  goalY = int(random(800-goalHeight));
}

void draw()
{
  background(#e5c964);
  goal();
  ball();
  
}

/*
Create a zone that the ball has to enter in order
to get a point
When ball enter this zone, change the Y position
and increase score
*/
void goal()
{
  noStroke();
  fill(#4de822);
  rect(0,goalY,width,goalHeight);
  if(ballY > goalY && ballY < goalY+goalHeight )
  {
    goalY = int(random(800));
    score++;
  }
}

void ball()
{
  fill(60);
  
  ellipse(width/2,ballY,70,70);
  
  if(mouseButton == LEFT)
  {
    ballY += 5;
  }
  else if(mouseButton == RIGHT)
  {
    ballY -= 5;
  }
}

void score()
{
  
}
