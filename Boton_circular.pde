//Cracion boton circular
void dibujaBotonCircular(String label,float x, float y, float diam){
  pushStyle();
  pushMatrix();
  
  translate(x, y);
  noFill();
  noStroke();
  ellipse(0,0,diam,diam);
  fill(255);
  textAlign(CENTER, CENTER);
  textFont(fuenteBoton);
  textSize(20);
  text(label,0,0);
  
  popMatrix();
  popStyle();
  
}
//Colision con boton circular
boolean colisionSupCircular(float x, float y, float xSup, float ySup, float radio){
  float distancia = dist(x,y,xSup,ySup);
  boolean valor;
  if(distancia < radio){
    valor = true;
  }
  else{
    valor = false;
  }
  return valor;
  
}
