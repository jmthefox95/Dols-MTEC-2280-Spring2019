//Patrick Rufino
//Homework #1: Cat face

//Code

size(600,600);
background(22, 76, 32);

//Ears
fill(221, 155, 31);
triangle(125,250, 230, 200, 105,100);

fill(221, 155, 31);
triangle(475,250, 370, 200, 495,100);

//Head
fill(221, 155, 31);
ellipse(300, 300, 400,400);

//Eyes
fill(255,255,255);
ellipse(225,250, 75,125);


fill(255,255,255);
ellipse(375,250, 75,125);

//Nose
fill(204, 132, 132);
ellipse(300, 325, 75, 50);

//Mouth
strokeWeight(2);
line(300, 350, 300, 410);
line(300, 410, 275, 420);
line(300, 410, 325, 420);

//Pupils
fill(0,0,0);
ellipse(225,250,50,95);

fill(0,0,0);
ellipse(375,250,50,95);

//Whiskers
strokeWeight(3);
line(265, 325, 225, 319);
line(265, 325, 225, 330);
line(265, 325, 225, 341);
line(335, 325, 375, 319);
line(335, 325, 375, 330);
line(335, 325, 375, 341);
