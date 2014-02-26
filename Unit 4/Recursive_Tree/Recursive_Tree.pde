float t=0;
float branch=10; 
float angle1; 
float angle2; 

void setup() {
  size (1100, 700);

  colorMode(HSB, 360, 100, 100, 100);
  translate(width/2, height);
  strokeWeight(5);
  rotate(radians(-90));
  drawTree(7, 8);

  frameRate(5);
}

void draw() {
  fill(0, 0, 100, 80);
  rect(0, 0, width, height);

  translate(width/2, height);
  strokeWeight(5);
  rotate(radians(-90));  
  drawTree(7, 8);
}
void drawTree(float depth, float weight) {

  if (depth > 0) {
    map(angle1, 0, 1, -100, 0);
    map(angle2, 0, 1, 0, 100);
    t=t+0.01;

    if (branch>0) {
      branch=-5;
    } 
    else {
      branch+=5;
    }

    stroke(0, 45, 37);
    strokeWeight(weight);
    line(0, 0, 50, 0);
    translate(50, 0);

    //right
    angle1= noise(t);
    angle2= noise(t);
    strokeWeight(weight);
    pushMatrix(); 
    rotate(radians(angle1));
    line(0, 0, 50, 0);
    translate(50, 0);
    drawTree(depth-1, weight-1);
    popMatrix();

    //right

    strokeWeight(weight);
    pushMatrix(); 
    rotate(radians(angle2));
    line(0, 0, 50, 0);
    translate(50, 0);
    drawTree(depth-1, weight-1);
    popMatrix();
  }
}

