size(500,700);

//mainbody
fill(230,255,74);
rect(100,100,300,400);

//pants
fill(166,123,16);
rect(100,400,300,100);

//shirt
fill(255);
rect(100,400,300,20);

//tie top
fill(199,12,12);
triangle(230,400,270,400,250,420);

//tie top
fill(199,12,12);
triangle(230,400,270,400,250,420);

//tie bottom
fill(199,12,12);
quad(250,420,230,480,250,500,270,480);

//eyes white
fill(255);
ellipse(200,200,100,110);
ellipse(300,200,100,110);

//eyes blue
fill(31,234,255);
ellipse(200,200,60,70);
ellipse(300,200,60,70);

//eyes black
fill(0);
ellipse(200,200,30,40);
ellipse(300,200,30,40);

//small white eye reflection
fill(255);
noStroke();
ellipse(192.5,185,10,10);
ellipse(292.5,185,10,10);

//eyelashes
stroke(0);
strokeWeight(5);
line(200,144,200,120);
line(175,150,160,130);
line(225,150,240,130);
line(300,144,300,120);
line(275,150,260,130);
line(325,150,340,130);

//smile
noFill();
arc(250,220,200,200, PI/6, PI/1.2);
line(155,268,170,262);
line(330,263,345,269);

//teeth
fill(255);
quad(215,315,240,320,240,350,215,350);
quad(260,320,285,315,285,350,260,350);

//shirt
fill(255);
strokeWeight(1);
triangle(100,400,100,450,70,450);
triangle(400,400,400,450,430,450);

//pantlegs
fill(166,123,16);
rect(150,500,50,20);
rect(300,500,50,20);

//arms and legs
//hands
fill(230,255,74);
rect(80,450,15,80);
rect(405,450,15,80);
rect(165,520,20,60);
rect(315,520,20,60);
ellipse(90,520,40,40);
ellipse(410,520,40,40);

//shoes
fill(0);
ellipse(160,580,60,30);
ellipse(340,580,60,30);
