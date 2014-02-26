void setup() {
  //colour setup (H S B A 
  colorMode(HSB, 360, 100, 100, 100);
  
  //canvas size and colour
  background(0, 0, 0, 10);
  size(480, 640);
  
  //no border
  noStroke();
  
  //slow framerate
  frameRate(100);
}

void draw() {
  //draw semi transparent black rectangle
  fill(0, 50, 0, 10);
  rect(0, 0, width, height);
  
  //draw circles where mouse is 
  fill(180, 10, 90);
  ellipse(random(0, width), random(0, height), 1, 50);
}
