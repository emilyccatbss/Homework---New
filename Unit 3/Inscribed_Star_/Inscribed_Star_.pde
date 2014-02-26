// This sketch builds on a prior work, "Inscribed Circle 2. ", created by Russell Gordon & Emily Cho & Jamie Haberman
// http://bss.sketchpad.cc/sp/pad/view/ro.AFxt32kf0ilf1c/rev.2212

int i = 0;

int x = 150;
int y = 150;
float x1;
float y1;
float x2; //x-coordinate of line for point on circumference of circle
float y2; //y-coordinate of line for point on circumference of circle
float angle; // in radians
float angle2; 


void setup() {   

  // set the background color
  background(255);

  // canvas size (Integers only, please)
  size(300, 300); 

  // smooth edges
  smooth();
  strokeWeight(10);

  //To draw line structure of star
  stroke(153);

  stroke(155, 154, 11);
  fill(13, 17, 199);
  beginShape();
  vertex(100*cos(0)+x, y-100*sin(0));
  vertex((x+100*cos(0.2*PI)+x)/2, (y +y-100*sin(0.2*PI))/2);
  vertex(100*cos(0.4*PI)+x, y-100*sin(0.4*PI));
  vertex((x+100*cos(0.6*PI)+x)/2, (y+y-100*sin(0.6*PI))/2);
  vertex(100*cos(0.8*PI)+x, y-100*sin(0.8*PI));
  vertex((x+100*cos(1.0*PI)+x)/2, (y+y-100*sin(1.0*PI))/2);
  vertex(100*cos(1.2*PI)+x, y-100*sin(1.2*PI));
  vertex((x+100*cos(1.4*PI)+x)/2, (y+y-100*sin(1.4*PI))/2);
  vertex(100*cos(1.6*PI)+x, y-100*sin(1.6*PI));
  vertex((x+100*cos(1.8*PI)+x)/2, (y+y-100*sin(1.8*PI))/2);
  vertex(100*cos(0)+x, y-100*sin(0));
  vertex((x+100*cos(0.2*PI)+x)/2, (y+y-100*sin(0.2*PI))/2);
  endShape();
}
