//TP 5 Juego
//Franco Rolón
//Link a video youtube: https://www.youtube.com/watch?v=33YG7gKsdkI

//Biblioteca de audio
import ddf.minim.*;
Minim minim;
AudioPlayer audio;


Juego juego;

void setup() {
  size(800, 600);
  
  //Cargo el audio
  minim=new Minim(this);
  audio = minim.loadFile("piano.mp3");
  audio.loop();
  //
  
  juego= new Juego();
}
void draw() {

  background(0);  
  juego.draw_();
}
void mousePressed() {
  juego.mousePressed_();
}
