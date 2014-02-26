void setup () {
  size(300, 600);
  colorMode(HSB, 360, 100, 100);
  drawRectMonoChromatic();
  drawRectSquaresAnalagous();
  drawRectTriadic();
}

void drawRectMonoChromatic() {
  noStroke();
  fill(0, 70, 90);
  rect(0, 0, 100, 100);
  fill(0, 70, 70);
  rect(100, 0, 100, 100);
  fill(0, 70, 50);
  rect(200, 0, 100, 100);
}

void drawRectSquaresAnalagous() {
  noStroke();
  fill(330, 100, 100);
  rect(0, 100, 100, 100);
  fill(0, 100, 100);
  rect(100, 100, 100, 100);
  fill(30, 100, 100);
  rect(200, 100, 100, 100);
}


void drawRectTriadic() {
  noStroke();
  fill(330, 100, 100);
  rect(0, 200, 100, 100);
  fill(90, 100, 100);
  rect(100, 200, 100, 100);
  fill(210, 100, 100);
  rect(200, 200, 100, 100);
}
