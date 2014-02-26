int i = 0; 
 
float x2; //x-coordinate of line for point on circumference of circle
float y2; //y-coordinate of line for point on circumference of circle
float angle; // in radians
 
void setup() {   
    
    // set the background color
    background(255);
    
    // canvas size (Integers only, please.)
    size(300, 300); 
      
    // smooth edges
    smooth();
    
    // limit the number of frames per second; draw() function is run
    frameRate(7);
    //row1
    drawFancyCircle(38, 38, 30);
    drawFancyCircle(113, 38, 30);
    drawFancyCircle(188, 38, 30);
    drawFancyCircle(263, 38, 30);
    
    //row2
    drawFancyCircle(38, 113, 30);
    drawFancyCircle(113, 113, 30);
    drawFancyCircle(188, 113, 30);
    drawFancyCircle(263, 113, 30);
    
    //row3
    drawFancyCircle(38, 188, 30);
    drawFancyCircle(113, 188, 30);
    drawFancyCircle(188, 188, 30);
    drawFancyCircle(263, 188, 30);
    
    ///row4
    drawFancyCircle(38, 263, 30);
    drawFancyCircle(113, 263, 30);
    drawFancyCircle(188, 263, 30);
    drawFancyCircle(263, 263, 30);
    } 
void draw() {   
    drawLine(38, 38, 30);
    drawLine(113, 38, 30);
    drawLine(188, 38, 30);
    drawLine(263, 38, 30);
    
    //row2
    drawLine(38, 113, 30);
    drawLine(113, 113, 30);
    drawLine(188, 113, 30);
    drawLine(263, 113, 30);
    
    //row3
    drawLine(38, 188, 30);
    drawLine(113, 188, 30);
    drawLine(188, 188, 30);
    drawLine(263, 188, 30);
    
    ///row4
    drawLine(38, 263, 30);
    drawLine(113, 263, 30);
    drawLine(188, 263, 30);
    drawLine(263, 263, 30);
} 
 
/* 
 * drawFancyCircle
 * purpose:       one sentence summary
 *
 * parameters:    int x, int y    - The centre of the fancy circle (0 to 300)
 *                int radius      - The size of the circle
 */  
void drawFancyCircle(int x, int y, int radius) {
    
    // set the width of the line. 
    //draws circle with random sttroke, colour and location
    strokeWeight(5);
    stroke(random(0,255),random(0,255),random(0,255));
    ellipse(x,y,radius*2+10,radius*2+10);
 
}
 
void drawLine(int x, int y, int radius) {
    
    // declare any local variables
    //draws lines in circle
    angle = random(0,TWO_PI);    
    y2 = sin(angle)*radius;   
    x2 = cos(angle)*radius;   
    stroke(random(0,255),random(0,255),random(0,255));
    line (x, y, x2 + x, y - y2);
}
