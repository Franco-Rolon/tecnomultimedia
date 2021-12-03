//TP Final
//Franco Rolón
//Link video de YouTube: https://www.youtube.com/watch?v=2rOf_UAqEZ8
Aventura aventura;

//Bilbioteca de audio
import ddf.minim.*;
//
Minim minim;
AudioPlayer audio;

void setup() {
  size(800, 600);
  //Cargo el audio
  minim=new Minim(this);
  audio = minim.loadFile("piano.mp3");
  audio.loop();
  aventura = new Aventura();
}

void draw() {
  aventura.draw_();
 
}

void mousePressed() {
  aventura.mousePressed_();
}
