import ddf.minim.*;          // package that allows us to use mic input
import ddf.minim.signals.*;  // package that allows for wave generation
import ddf.minim.analysis.*; // package that allows for audio input analysis
import ddf.minim.effects.*;  // package that allows for audio effects (frequency filtering)

// Declare objects needed to process audio input
Minim minim;    // core Minim functionality accessed through this object
AudioInput in;  // information picked up by microphone accessed through this object

// Declare global variables
float level = 0;
float r = 0;
float c = 0;

void setup()
{
    // Create canvas
    size( 640, 480 );

    // Smooth edges of all shapes to be drawn
    smooth();

    // Create an instance of the Minim class
    minim = new Minim( this );

    // Create an instance of the AudioInput class (named "in")
    // First arguemnt – process input in stereo
    // Second argument - buffer size in samples
    //                   (basically, lag time between audio input and response on screen)
    //                   (smaller buffer, fewer samples, less to process, less lag time)
    in = minim.getLineIn( Minim.STEREO, 512 );

    // Black background
    background( 0 );
}

void draw()
{
    // Paint a slightly transparent black rectangle over the entire canvas
    // (an entirely opaque rectangle removes the fade effect)
    // (try changing line below to fill(0) -- and opaque black fill -- to see this)
    fill( 0 , 12);
    noStroke();
    //rect( 0, 0, width, height);

    // Change stroke colour to white and no fill for shapes
    stroke( 255 );
    noFill();

    // Get the current level (amplitude) of all the samples in the buffer
    level = in.mix.level();

    // Set a radius that is 1000 times larger than the level
    r = level * 2000;
    ellipse( width/2, height/2, r, r );
}

void stop()
{
    in.close();
    minim.stop();
    super.stop();
}
