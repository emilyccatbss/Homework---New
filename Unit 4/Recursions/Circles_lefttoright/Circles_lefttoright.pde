void setup(){
  size(600,600);
  noFill();
  ellipse(0,height/2,height/2,height/2);
  drawCircle(height/2,0);
}

void drawCircle(float radius, float x){
  //new ellipse- smaller
  ellipse(x+10, height/2, radius-20, radius-20);
  
  if (radius>20){
    //recurse
    drawCircle(radius-20,x+10);
  }
}
