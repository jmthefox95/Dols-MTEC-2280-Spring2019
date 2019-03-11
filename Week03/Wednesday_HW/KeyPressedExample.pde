//This is not mine

float playerPosX, playerPosY;
void setup()
{
  size(600, 600);
  playerPosX = 25;
  playerPosY = 25;
}
void draw()
{
  background (180);
  fill(60, 60, 180);
  ellipse (playerPosX, playerPosY, 15, 15);
}
  void keyPressed()
  {
      if (key == 'd')
      {
        playerPosX = playerPosX + 7;
      }
      if  (key == 'a')
      {
        playerPosX = playerPosX - 7;
      }
      if (key == 'w')
      {
        playerPosY = playerPosY -7;
      }
      if (key == 's')
      {
        playerPosY = playerPosY + 7;
      }
    }
