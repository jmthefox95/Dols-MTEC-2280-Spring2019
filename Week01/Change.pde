// Variables: Intergers & Floats

int PlanetSizeOriginal=0;
int SatelliteSize = 10;
float growth=0.5;
float move= 0.4; 
float orbit = 0.1;


void setup() {
  size (800, 800);
}


void draw() {
  background (255, 10);

  //Growth
  noFill();
  ellipse (400, 400, 0 + growth, 0 + growth);
  //ellipse (400, 400, PlanetSizeOriginal + growth, PlanetSizeOriginal + growth);
  //ellipse (400, 400, 0 + growth/2, 0 + growth/2);
  //ellipse (400, 400, 0 + growth/4, 0 + growth/4);

  //Movement
  //fill(0,0,0);
  //ellipse (400, 400 + move, SatelliteSize, SatelliteSize); // moves the y position down
  //ellipse (400 + 100*cos(move), 400 + 100*sin(move), 2, 2); // TrigFun
  //ellipse (400 + orbit*cos(move/2), 400 + orbit*sin(move/2), 2, 2); // orbiter

  ////creates a rectangle using move variable for X position
  //rect(move, 400, 100, 100);
  ////increments move variable

  // Reassign a new value to "move" and "growth" at the end of each draw loop cycle

  move= move+0.2;
  growth= growth + .2;
  orbit = orbit + 0.0002;
  //SatelliteSize = SatelliteSize + 1;

  //'println' prints values to the console
  //println ("growth:  " + growth);
}
