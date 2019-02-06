/*
///////////////////////////////////////////
GETTING TO KNOW PROCESSING
///////////////////////////////////////////

Download latest version of Processing: 
http://www.processing.org 

Refer to the reference:
https://processing.org/reference/
*/


//This is a "comment" also known as pseudocode
//Use comments to make your work code readable
//Also, use comments to make notes for the future or remove sections of code you want to save for later.

//Set parameters of canvas size with width and height in pixel units  
size(800,800);

//background color rgb values 0-255
background(0,200,200);

//line(x1, y1, x2, y2);
line (10, 200, 790, 200);

////line with stroke weight
//strokeWeight(5);
//line (10, 250, 790, 250);

////with color and stroke weight
//strokeWeight(10);
//stroke(255,0,0); //color rgb
//line (10, 300, 790, 300);


////Rectangle with stokeweight and stoke color RGB 
//Rectangles are drawn with an (x,y) coordnate and 2 values for length and width.
//strokeWeight(2);
//stroke(0,0,0); //color rgb
//rect(30,530,100,100);

////Rectangle with no stoke but with fill color
//noStroke();
//fill(10,0,0); // color rgb
//rect(150,530,100,100);

////Rectangle with no stoke and fill color with alpha channel
//noStroke();
//fill(10,100,100,25); // color rgb
//rect(300,530,100,100);

//Same rectangle copied 3 times with overlap alpha channel RGBA
//rect(450,530,100,100);
//rect(475,530,100,100);
//rect(450,480,100,100);

////ellipse which is drawn with a (x,y) coordinate center point and 2 values for the radii.
//fill(200,200,0,25); // color rgb
//ellipse(400, 300, 200, 200);
//ellipse(400, 300, 300, 300);
//ellipse(400, 300, 400, 400);

//quad which uses 4 destinct (x,y) coordinates
//quad(200, 200, 400, 200, 400, 300, 200, 300);
//quad(200, 100, 400, 200, 400, 400, 200, 300);
