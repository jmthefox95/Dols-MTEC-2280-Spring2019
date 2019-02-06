size (500, 500);

background(103, 160, 181);

//surface
stroke(5);
line(120, 420, 120, 500);

stroke(1);
line(200, 420, 200, 500);

stroke(5);
line(200, 350, 200, 500);

stroke(1);
fill(150,150,150, 200);
quad(120, 420, 200, 350, 500, 350, 420, 420);

stroke(5);
line(120, 420, 120, 500);

stroke(1);
line(200, 420, 200, 500);

stroke(5);
line(420, 420, 420, 500);


//shadow
noStroke();
fill(10,10,10, 30); 
ellipse(350, 400, 60, 6.5);

noStroke();
fill(10,10,10, 20);
ellipse(350, 400, 100, 11.5);

noStroke();
fill(10,10,10, 10);
ellipse(350, 400, 140, 20);

//ambient light (sphere)
noStroke();
fill(10, 10, 12);
ellipse(250, 250, 100, 100);

noStroke();
fill(20, 20, 21);
ellipse(249, 249, 90, 90);

noStroke();
fill(30, 30, 30);
ellipse(248, 248, 80, 80);

noStroke();
fill(51, 50, 50);
ellipse(246, 246, 60, 60);

noStroke();
fill(75, 70, 70);
ellipse(243, 243, 30, 30);

//sky reflection (sphere)
noStroke();
fill(103, 160, 181, 120);
ellipse(230, 200, 40, 30);

noStroke();
fill (103, 160, 181, 50);
ellipse(230, 210, 110, 90);

noStroke();
fill(103, 160, 181, 25);
ellipse(235, 220, 130, 120);

// sun reflection (sphere)
noStroke();
fill(234, 170, 32, 25);
ellipse(227, 215, 20, 20);

noStroke();
fill(232, 170, 32, 50);
ellipse(225, 217, 15, 15);

//spot light
noStroke();
fill(230, 170, 32, 15);
quad(80, 0, 80, 0, 320, 400, 380, 400);

noStroke();
fill(234, 170, 32, 13);
quad(100, 0, 60, 0, 300, 400, 400, 400);

noStroke();
fill(234, 170, 32, 12);
quad(120, 0, 40, 0, 280, 400, 420, 400);
