// Variables: Intergers & Floats

int PlanetSizeOriginal=10;
int SatelliteSize = 10;
float growth=0.5;
float move= 0.4; 
float orbit = 90;


void setup() {
  size (800, 800);
}


void draw() {
  background (255, 10);

  //Growth
  noFill();
  ellipse (400, 400, 0 + growth, 0 + growth); // This ellipse will expand over time
  //ellipse (400, 400, PlanetSizeOriginal + growth, PlanetSizeOriginal + growth); // Same as above but with a variable
  //ellipse (400, 400, 0 + growth/2, 0 + growth/2); // Reducing growth rate with division
  //ellipse (400, 400, 0 + growth/4, 0 + growth/4);

  //Movement
  //fill(0,0,0);
  ellipse (400, 400 + move, SatelliteSize, SatelliteSize); // animates the object down the page
  ellipse (400 + 100*cos(move), 400 + 100*sin(move), 2, 2); // TrigFun: animates the object with radial coordinates
  ellipse (400 + orbit*cos(move/2), 400 + orbit*sin(move/2), 2, 2); // Another orbiter... moving slower

  // Reassign a new value to "move" and "growth" at the end of each draw loop cycle
  move= move+0.2;
  growth= growth + .2;
  orbit = orbit + 0.0002;
  //SatelliteSize = SatelliteSize + 1;

  //'println' prints values to the console
  //println ("growth:  " + growth);
}
