int i = 0; 

int hLineShiftA=0;
int hLineShiftB=0;
int quadShift=0;
int shiftHLineGradient=0;
int shiftHCurveGradient=0;
int hCurveShift=0;
int shiftCGradient=0;
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
  frameRate(10);
} 
void draw() {   
  //draw o
  drawLine(1100, 300, 75);

  //draw h
  if (quadShift <=11) {
    drawHCurve();
  }
  drawHLine();
  
  //draw C
  drawCBox();
  drawLetterC();
}

//draw letter o
void drawLine(int x, int y, int radius) {

  // declare any local variables
  //draws lines in circle
  //using trigonometry to determine the angle from the terminal angle
  angle = random(0, TWO_PI);    
  y2 = sin(angle)*radius;   
  x2 = cos(angle)*radius;   
  strokeWeight(3);
  stroke(random(0,360), 30, 90);
  line (x, y, x2 + x, y - y2);
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
  ellipse(885, 100+ hLineShiftA, 20, 20);
  ellipse(991, 250+hLineShiftB, 20, 20);
}

//draw curves of letter H
void drawHCurve() {
 // shift the ellipse in a quadratic shape by 3^2
  if (quadShift <=11) {
    quadShift +=(hLineShiftA^2)/20;
    hCurveShift +=3;
    shiftHCurveGradient +=1;
  }
  // draw curve using quadratic
  noStroke();
  fill(180, 0+shiftHCurveGradient, 90);
  ellipse(940+hCurveShift, 240+ quadShift, 20, 20);
  ellipse(940-hCurveShift, 240+ quadShift, 20, 20);
}

//draw letter C
void drawCBox() {
  noStroke();
  //colour change evvect
  if (shiftCGradient == 360) {
    shiftCGradient -= 360;
  }
  else {
     shiftCGradient += 5;
  }
  //rounded rectangle
  fill(shiftCGradient, 30, 80);
  arc(830, 360, 40, 40, 0, PI/2);
  arc(730, 260, 40, 40, PI, TWO_PI-PI/2);
  arc(830, 260, 40, 40, TWO_PI-PI/2, TWO_PI);
  arc(730, 360, 40, 40, PI/2, PI);
  rect(730, 240, 100, 140);
  rect(710, 260, 140, 100);
}


void drawLetterC () {
  stroke(0, 0, 100);
  strokeWeight(15);
  noFill();
  arc(808, 310, 110, 110, PI/6, (11*PI)/6);
}
