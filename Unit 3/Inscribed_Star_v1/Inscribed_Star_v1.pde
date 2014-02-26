void setup() {   
    
    // set the background color
    background(255);
    
    // canvas size (Integers only, please.)
    size(300, 300); 
      
    // smooth edges
    smooth();
    strokeWeight(10);
 
    //To draw line structure of star
    stroke(153);
    line(150, 150, 100*cos(0*PI)+150, 150-100*sin(0*PI));
    stroke(11,240,255);
    line(150, 150, 100*cos(0.4*PI)+150, 150-100*sin(0.4*PI));
    stroke(255,11,207);
    line(150, 150, 100*cos(0.8*PI)+150, 150-100*sin(0.8*PI));
    stroke(119,11,207);
    line(150, 150, 100*cos(1.6*PI)+150, 150-100*sin(1.6*PI));
    stroke(234,255,92);
    line(150, 150, 100*cos(1.2*PI)+150, 150-100*sin(1.2*PI));
    
    //To connect lines
    stroke(153);
    line(100*cos(0.8*PI)+150, 150-100*sin(0.8*PI), 100*cos(0*PI)+150, 150-100*sin(0*PI));
    line(100*cos(1.6*PI)+150, 150-100*sin(1.6*PI), 100*cos(0.4*PI)+150, 150-100*sin(0.4*PI));
      line(100*cos(1.2*PI)+150, 150-100*sin(1.2*PI), 100*cos(0.4*PI)+150, 150-100*sin(0.4*PI));
      line(100*cos(0*PI)+150, 150-100*sin(0*PI), 100*cos(1.2*PI)+150, 150-100*sin(1.2*PI));
    line(100*cos(0.8*PI)+150, 150-100*sin(0.8*PI), 100*cos(1.6*PI)+150, 150-    100*sin(1.6*PI));
    }
