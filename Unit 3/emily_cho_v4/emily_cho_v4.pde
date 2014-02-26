//global variables: for all functions
int hLineShiftA=0;
int hLineShiftB=0;
int quadShift=0;
int shiftHLineGradient=0;
int shiftHCurveGradient=0;
int hCurveShift=0;
int shiftCGradient=0;
int rotateBy=0;
float x=-53;
float y=0;
float x2; //x-coordinate of line for point on circumference of circle
float y2; //y-coordinate of line for point on circumference of circle
float angle; // in radians

void setup() {   
  //colour mode set HSBT
  colorMode(HSB, 360, 100, 100, 100);

  // set the background color
  background(0, 0, 100, 0);

  // canvas size (Integers only, please.)
  size(1200, 500); 

  // smooth edges
  smooth();

  // limit the number of frames per second; draw() function is run
  frameRate(20);
} 
//this gets drawn repeatedly 
void draw() {   
  //draw e: shows coordinates to start lines for e
  drawLine(100, 310, 80);
  drawESpace();

  //draw h: quadratic line for h
  if (quadShift <=11) {
    drawHCurve();
  }
  drawHLine();

  //draw C: drawing the background and the white letter
  drawCBox();
  drawLetterC();

  //call function of drawing letter o
  drawLetterO();

  //call funciton to draw letter m
  noStroke();
  fill(0, 0, 100, 8);
  rect(190, 220, 250, 200);
  drawLetterM(260, 250);
  drawLetterM(360, 250);
}

//draw letter e
void drawLine(int x, int y, int radius) {

  // declare any local variables
  //draws lines in circle
  //using trigonometry to determine the angle from the terminal angle
  angle = random(0, TWO_PI);    
  y2 = sin(angle)*radius;   
  x2 = cos(angle)*radius;   
  strokeWeight(3);
  stroke(random(0, 360), 30, 90); 
  line (x, y, x2 + x, y - y2);
}

//draw white spaces of e
void drawESpace() {
  fill(0, 0, 100);
  noStroke();
  arc(100, 305, 130, 130, PI, TWO_PI);
  arc(100, 315, 130, 130, 0, PI);
  rect(150, 315, 35, 30);
}

//draw lines of letter H
void drawHLine() {  
  //draw the lines of h: as long as the elipse has shifted less than
  //270 and 120 continue to shift it 
  if (hLineShiftA <=270) {
    hLineShiftA +=3;
  }
  if (hLineShiftB <=120) {
    hLineShiftB +=3;
  }
  shiftHLineGradient +=1;
  noStroke();
  fill(180, 0+shiftHLineGradient, 90);
  ellipse(905, 100+ hLineShiftA, 20, 20);
  ellipse(1011, 250+hLineShiftB, 20, 20);
}

//draw curves of letter H
void drawHCurve() {
  // shift the ellipse in a quadratic shape by 3^2
  if (quadShift <=11) {
    quadShift +=(hLineShiftA^2)/20;
    hCurveShift +=3;
    shiftHCurveGradient +=3;
  }
  // draw curve using quadratic
  noStroke();
  fill(180, 0, 90);
  ellipse(960+hCurveShift, 240+ quadShift, 20, 20);
  fill(180, 0+shiftHCurveGradient, 90);
  ellipse(960-hCurveShift, 240+ quadShift, 20, 20);
}

//draw letter C
void drawCBox() {
  noStroke();
  //colour change shifting and when it reaches a certain colour
  //it goes back to the original colour and repeats
  if (shiftCGradient == 360) {
    shiftCGradient -= 360;
  }
  else {
    shiftCGradient += 10;
  }
  //rounded rectangle
  //draws the rectangle with arcs for the rounded corners
  //shifts the colour
  fill(shiftCGradient, 30, 80);
  arc(855, 360, 40, 40, 0, PI/2);
  arc(755, 260, 40, 40, PI, TWO_PI-PI/2);
  arc(855, 260, 40, 40, TWO_PI-PI/2, TWO_PI);
  arc(755, 360, 40, 40, PI/2, PI);
  rect(755, 240, 100, 140);
  rect(735, 260, 140, 100);
}

//draw inverse of letter c
// this draws the white c portioninside the coloured box
void drawLetterC () {
  stroke(0, 0, 100);
  strokeWeight(15);
  noFill();
  arc(808, 310, 110, 110, PI/6, (11*PI)/6);
}

//draw letter o with rotating lines usint a shifted origin
//rotate the line
void drawLetterO() {
  rotateBy +=3; 
  stroke(80, 80, 80, 30);
  strokeWeight(3);
  pushMatrix();
  translate(1110, 310);
  rotate(rotateBy);
  line(40, 10, 60, 40);
  popMatrix();
}

void drawLetterM (int xM, int yM) {
  fill(60, 90, 80);
  stroke(0,0,100);
  pushMatrix();
  translate(xM, yM);
  if (x<52) {
    x+=1.5;
  }
  if (x>=51) {
    x= -53;
  }
  y=0.05*x*x;
  ellipse(x, y, 25, 25);
  popMatrix();
}
