// Contains the starting, or intial, word (axiom)
String axiom = "F+F";

//contain the new word
String word = "";

// Will contain all the rules that apply for this L-system
StringDict rules; 

// This function runs once.
void setup() {

  // Create the canvas
  size(800, 600);

  // White background
  background(255, 255, 255);

  // Black text
  fill(0, 0, 0);

  // Set text size
  textSize(24);
  
  //set framerate
  frameRate(1);
  
  //Create the string dictionary object
  // "Using the StringDict class, creat a new StringDict object, named 'rules"
  rules = new StringDict();

  //add rules (key value pairs_
  rules.set("F", "F-F");
}

// This function runs repeatedly ( unless we stop it with noLoop() )
void draw() {

  //repainting the background
  background(255, 255, 255);

  // Print text to the screen
  // Arguments:
  //   string, x, y
  text("The axiom is: " + axiom, 0, 100);

  //show what frame is being displayed
  text("current frame is: " + frameCount, 0, 200);
  
  //check each character - if it matches a rule, replace it
  if (axiom.charAt(frameCount -1) == 'F'){
    //replace
    word += rules.get("F");
  } else {
    //copy the character
    word += axiom.charAt(frameCount -1);
  }
  word+= axiom.charAt(frameCount-1); 
  
  //take each character from the axiom and copy it to the new word
  if (frameCount == axiom.length()){
    noLoop();
  }
  
  text("Current word is: " + word, 0, 300);
}

