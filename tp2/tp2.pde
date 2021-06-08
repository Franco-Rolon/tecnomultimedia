//Franco Rolón

//biblioteca para el audio
import ddf.minim.*;

Minim minim;
AudioPlayer player;

//Variables
PImage imagen1,imagen2,imagen3,imagen4,imagen5,imagen6,imagen7;
PFont tipografia;
int pantalla = 0,opacidad=255;
color c1= color(0,0,0);
float tNombre=30,tOcupacion=15;
String nombre,ocupacion;


void setup(){
  size(500,300);
  
  minim = new Minim(this);
  player = minim.loadFile("music.mp3");
  
  tipografia = loadFont("Candara-30.vlw");
  textFont(tipografia);
  textAlign(CENTER);
  imagen1 = loadImage("imagen1.jpg");
  imagen2 = loadImage("creador.jpg");
  imagen3 = loadImage("imagen3.jpg");
  imagen4 = loadImage("imagen4.jpg");
  imagen5 = loadImage("imagen5.jpg");
  imagen6 = loadImage("imagen6.jpg");
  imagen7 = loadImage("imagen7.jpg");
}
void draw(){
  //Audio
  if(pantalla>=0){
      player.play();
  }  
  //Animacion de tamaño en los textos
  if(tNombre>25 && pantalla<=6){
    tNombre-=0.02; 
  }
  else{
    tNombre=30;
  }
  if(tOcupacion>=10 && pantalla<=6){
    tOcupacion-=0.02;
  }
  else if(tNombre<25){
    tOcupacion=15;
  }
  //Cambio de opacidad de los textos
  if(tNombre>25 && pantalla<=6){
    opacidad--;
  }
  else{
    opacidad=255;
  }  
  //Cambio de patanlla
  if(tNombre<25 && pantalla < 7){
    pantalla++;
  }  
  //Tamaño,color y opacidad de los texos
  fill(c1,opacidad);
  textSize(tNombre);
  
  //Pantalla 1  
  if(pantalla == 0 && tNombre>25){
    //Imagen de fondo
    image(imagen1,0,0);  
    //Título
    nombre= ("THE WITCHER 3");
    text(nombre,120, 60);
  }  
  //Pantalla 2
  if(pantalla==1 && tNombre > 25){
     //Imagen de fondo
     image(imagen2,0,0);
     //Cabeza de estudio
     pushStyle();
     textSize(tOcupacion);
     ocupacion = ("STUDIO HEAD");
     text(ocupacion,120, 35);
     popStyle();     
     nombre= ("ADAM BADOWSKI");
     text(nombre,120, 60);  
  }
   //Pantalla 3
  if(pantalla==2 && tNombre > 25){
     //Imagen de fondo
     image(imagen3,0,0);
     //Productor ejecutivo
     pushStyle();
     textSize(tOcupacion);
     ocupacion = ("EXECUTIVE PRODUCER");
     text(ocupacion,120, 35);
     popStyle();     
     nombre= ("JOHN MAMAIS");
     text(nombre,110, 60);  
  }
   //Pantalla 4
  if(pantalla==3 && tNombre > 25){
     //Imagen de fondo
     image(imagen4,0,0);
     //Game director
     pushStyle();
     textSize(tOcupacion);
     ocupacion = ("GAME DIRECTOR");
     text(ocupacion,170, 15);
     popStyle();     
     nombre= ("KONRAD TOMASZKIEWICZ");
     text(nombre,190, 40);  
  }
  //Pantalla 5
  if(pantalla==4 && tNombre > 25){
     //Imagen de fondo
     image(imagen5,0,0);
     //Productor ejecutivo
     pushStyle();
     textSize(tOcupacion);
     ocupacion = ("LEAD PRODUCER");
     text(ocupacion,135, 35);
     popStyle();     
     nombre= ("PITOR KRZYWONOSIUK");
     text(nombre,145, 60);  
  }
  //Pantalla 6
  if(pantalla==5 && tNombre > 25){
     //Imagen de fondo
     image(imagen6,0,0);
     //Director de arte
     pushStyle();
     textSize(tOcupacion);
     ocupacion = ("TECHICAL ART DIRECTOR");
     text(ocupacion,135, 35);
     popStyle();     
     nombre= ("KRZYSZTOF KRZYSCIN");
     text(nombre,145, 60);  
  }
  //Pantalla 7
  if(pantalla==6 && tNombre > 25){
     //Imagen de fondo
     image(imagen7,0,0);
     //Director de musica
     pushStyle();
     textSize(tOcupacion);
     ocupacion = ("MUSIC DIRECTOR");
     text(ocupacion,410, 25);
     popStyle();     
     nombre= ("MARCIN PRZYBYLOWICZ");
     text(nombre,360, 45);  
  } 
}
//Reiniciar los creditos
void mousePressed(){
    pantalla=0;
    player.rewind();
  }
