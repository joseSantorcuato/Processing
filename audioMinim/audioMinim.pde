
import ddf.minim.*;

Minim minim;
AudioPlayer player;

void setup()
{
  size(512, 200);
  
  minim = new Minim(this);
  
 
  player = minim.loadFile("groove.mp3");
}

void draw()
{
  background(0);
  stroke(255);
  player.play();

}