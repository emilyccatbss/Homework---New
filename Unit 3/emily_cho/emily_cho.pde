int i = 0; 

int hLineShiftA=0;
int hLineShiftB=0;
int quadShift=0;
int shiftGradient=0;
int hCurveShift=0;
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
  //draws o by giving values for the x coordinate, y and the radius
  drawLine(1100, 300, 75);

  //draw h by calling quadratic animation for the curve of the h 
  //and by animating a straight line for the line of h
  drawHCurve();
  drawHLine();
}

void drawLine(int x, int y, int radius) {

  // declare any local variables
  //draws lines in circle
  //using trigonometry to determine the angle from the terminal angle
  angle = random(0, TWO_PI);    
  y2 = sin(angle)*radius;   
  x2 = cos(angle)*radius;   
  strokeWeight(3);
  stroke(60, 90, 90);
  line (x, y, x2 + x, y - y2);
}

void drawHLine() {  
  //draw the lines of h: as long as the elipse has shifted less than
  //270 and 120 continue to shift it 
  if (hLineShiftA <=270){
    hLineShiftA +=3;
  }
   if (hLineShiftB <=120){
    hLineShiftB +=3;
  }
  shiftGradient +=1;
  noStroke();
  fill(180, 0+shiftGradient, 90);
  ellipse(855, 100+ hLineShiftA, 20, 20);
  ellipse(965,250+hLineShiftB,20,20);
}

void drawHCurve(){
 // shift the ellipse in a quadratic shape by 3^2
  if (quadShift <=13){
    quadShift +=(hLineShiftA^2)/20;
    hCurveShift +=3;
  }
 // draw curve using quadratic
  noStroke();
  fill(180, 0+shiftGradient, 90);
  ellipse(910+hCurveShift, 240+ quadShift, 20, 20);
  ellipse(910-hCurveShift, 240+ quadShift, 20, 20);
}
