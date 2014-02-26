void setup() {
  //background
  size(1000,800);
  background(161,161,161);
  
  drawRobot(0,0);
  drawRobot(200,0);
  drawRobot(400,0);
  drawRobot(600,0);
  drawRobot(800,0);
  drawRobot(0,350);
  drawRobot(200,350);
  drawRobot(400,350);
  drawRobot(600,350);
  drawRobot(800,350);
}

void drawRobot(int offset, int offset2) {
  
  //big black ellipse
  fill(0,0,0);
  ellipse(100 + offset,120 + offset2,90,90);
  
  //small white ellipse
  fill(255);
  ellipse(115 + offset,115 + offset2,30,30);
  
  //small black ellipse in white
  fill(0,0,0);
  ellipse(115 + offset,115 + offset2,5,5);
  
  //right grey ellipse
  fill(161,161,161);
  ellipse(133 + offset,127+ offset2,7,7);
  
  //top grey ellipse
  fill(161,161,161);
  ellipse(123 + offset,95 + offset2,9,9);
  
  //left grey ellipse
  fill(161,161,161);
  ellipse(90 + offset,110 + offset2,11,11);
  
  //middle line
  stroke(0,0,0);
  line(100 + offset,165 + offset2,100 + offset,230+ offset2);
  
  //left line
  stroke(0,0,0);
  line(90 + offset,163 + offset2,90 + offset,230+ offset2);
  
  //right line
  stroke(0,0,0);
  line(110 + offset,163 + offset2,110 + offset,230+ offset2);
  
  //bottom circle
  noStroke();
  
  fill(100,100,100);
  ellipse(84 + offset,350 + offset2,65,65);
  
  //bottom rectangle
  fill(0,0,0);
  rect(35 + offset,230 + offset2,95,120);
  
  //stripe on rectangle
  fill(100,100,100);
  noStroke();
  rect(35 + offset,249 + offset2,95,6);
  
  //left diagonal line
  stroke(0,0,0);
  line(67 + offset,80 + offset2,71 + offset,86+ offset2);
  
  //middle diagonal line
  stroke(0,0,0);
  line(108 + offset,84 + offset2,130 + offset,18+ offset2);
  
  //right diagonal line
  stroke(0,0,0);
  line(130 + offset,120 + offset2,168 + offset,130+ offset2);
}
