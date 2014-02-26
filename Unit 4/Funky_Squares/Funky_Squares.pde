void setup() {
  size(600, 600);
  strokeWeight(5);

  colorMode(HSB, 360, 100, 100, 100);
  splitRect(width, height);
}

void splitRect(float newWidth, float newHeight) {
  float randomWidth= random(newWidth/5, (newWidth/5)*4);
  float randomHeight= random(newHeight/5, (newHeight/5)*4);
  
  rect(0, 0, randomWidth, randomHeight);
  rect(randomWidth, 0, newWidth-randomWidth, randomHeight);
  rect(0, randomHeight, randomWidth, newHeight-randomHeight );
  rect(randomWidth, randomHeight, newWidth-randomWidth, newHeight-randomHeight);

  if (randomWidth>10) {
    splitRect(randomWidth, randomHeight);
  }
}

