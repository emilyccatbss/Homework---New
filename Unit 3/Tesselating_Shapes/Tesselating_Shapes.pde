void setup() {
  size(1000, 600);
  background(228,200,223);
  
  //draw shapes
  for (int i = 0 ; i <= 1000; i += 200) {
    for (int m = 0 ; m <= 600; m += 200) {
      drawShape(i, m);
    }
  }
}

void drawShape(int x, int y) {

  //Save translation
  pushMatrix();

  //transform origin
  translate(x, y);

  //shape
  fill(18,255,316);
  triangle(0, 0, 50, 100, 100, 50);
  fill(216,55,244);
  triangle(200, 0, 100, 50, 150, 100);
  fill(156,155,244);
  triangle(0, 200, 50, 100, 100, 150);
  fill(28,255,134);
  triangle(200, 200, 150, 100, 100, 150);

  //resotre origin
  popMatrix();
}
