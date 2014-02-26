void setup () {
  size(100, 100);

  noStroke();

  background(0, 0, 0);

  for (int x = 0; x <= 100; x+=10) {
    for (int y = 0; y<=100; y +=10) {
      drawShape(x, y);
    }
  }
}

void drawShape (int x, int y) {
  pushMatrix();
  translate(x, y);
  if (y %20==0) { 
    if (x % 20 == 0) {
      fill(255, 0, 0);
    }
    else {
      fill(0, 0, 255);
    }
  } 
  else {
    if (x%20 == 0) {
      fill(0, 0, 255);
    }
    else {
      fill(255, 0, 0);
    }
  }
  rect(-5, -5, 10, 10);
  popMatrix();
}
