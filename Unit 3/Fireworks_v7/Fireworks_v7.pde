// global variables; they can be accessed or set from any function
float xInt = 200;
float xVertex = 250;
float yVertex = 300;
float currentX = 0;
float currentY = 0;
float hue = 0;
float direction = 0;


// this function runs once only
void setup() {

  // set canvas size
  size(1024, 768); 

  // use HSB (hue-saturation-brightness) color model
  // See https://plus.google.com/106892690517262395732/posts/ht8NSToLPkP for details
  // (post on HSB color model in ICS3U community)
  colorMode(HSB, 360, 100, 100);

  // black background
  background(240, 0, 0);

  // no border on shapes
  noStroke();

  // Set starting x value for firework (horizontal position)
  currentX = xInt;

  // Pick starting colour value
  hue = random(0, 360);

  // speed of animation
  frameRate(30);
}

// this function runs repeatedly, over and over again
void draw() {

  // Set direction that firework will fire  
  if (direction < 1.5) {
    // Fireworks will fire left to right...
    println("left to right");

    // put origin (0,0) in lower left corner
    translate(0, height);

    // flip the scale on the y-axis
    // (so co-ordinate system is like a regular Cartesian
    // system where "y" increases going up the vertical axis)
    //    X   Y
    scale(1, -1);
  } 
  else {

    // Fireworks will fire right to left...
    println("right to left");

    // put origin (0,0) in lower right corner
    translate(width, height);

    // flip the scale on the y-axis
    // (so co-ordinate system is like a regular Cartesian
    // system where "y" increases going up the vertical axis)
    //    X   Y
    scale(-1, -1);
  }    

  // draw black semi-transparent rectangle over canvas
  fill(0, 0, 0, 12);
  rect(0, 0, width, height); 

  // Increment currentX (horizontal position of firework)
  // Also controls speed of animation
  currentX += 3;  

  // Get vertical position of firework based current horizontal position
  currentY = quadraticPath(currentX, xInt, xVertex, yVertex);

  // set colour for firework
  fill(hue, 80, 90);

  // draw circle at current x, y position
  ellipse(currentX, currentY, 5, 5);

  // Pick settings for "new firework" when we reach the halfway
  // point between vertex and second x-int of current firework
  if (currentX > (xVertex + ((xVertex - xInt) / 2) )) {

    // Pick new x-int (but not directly at right edge of canvas)
    xInt = random(0, width - 200);
    // Pick new vertex x value (somewhere between xInt and 50 pixels away from right edge of canvas)
    xVertex = random(xInt + 100, ((width - xInt) / 2));
    // Pick new vertex y value (at least 100 pixels above "ground" and not right at top of canvas)
    yVertex = random(height/2, height - 50);
    // Select next hue based on Golden Ratio
    hue = (hue + 0.618 * 360) % 360;
    // Decide which way firework will fire
    direction = random(1, 2);


    // Reset current x to new x-int
    currentX = xInt;
  }
}

// quadraticPath
// 
// Purpose:   Given a vertex (d, c), an x-intercept (r),
//            and an x value, returns the corresponding y value
float quadraticPath(float x, float r, float d, float c) {

  // Work out the vertical scale factor (a)
  float a = 0;
  a = (0 - c) / ( (r - d) * (r - d) ); 

  // Now that we have the "a" value, return the y value that
  // matches the given "x" value
  return a * ( (x - d) * (x - d) ) + c;
}
