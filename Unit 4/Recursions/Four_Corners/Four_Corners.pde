void setup() {
  size(600, 600);
  noFill();
  drawCircle1(height/2, height/2, height/2, 20, 20);
  drawCircle1(height/2, height/2, height/2, 20, -20);
  drawCircle1(height/2, height/2, height/2, -20, 20);
  drawCircle1(height/2, height/2, height/2, -20, -20);
}
void drawCircle1(float radius, float x, float y, float xDiff, float yDiff) {
  //new ellipse- smaller
  ellipse(x+xDiff, y+yDiff, radius-20, radius-20);

  if (radius>20) {
    //recurse
    drawCircle1(radius-20, x+xDiff, y+yDiff, xDiff, yDiff);
  }
}
