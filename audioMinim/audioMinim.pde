
import ddf.minim.*;

Minim minim;
AudioPlayer tuaudio;

void setup()
{
  size(512, 200);
  
  minim = new Minim(this);
  
 
  tuaudio = minim.loadFile("tuaudio.mp3");
}

void draw()
{
  background(0);
  stroke(255);
  tuaudio.play();

}