//TP n°3 Ilusion optica interactiva
//Franco Rolón

//Link a youtube: 
//https://youtu.be/c06vR-R54f8

//Variables

//Colores de las barras
color col1 = color(255,0,0);
color col2 = color(0,255,0);
color col3 = color(0,0,255);
color col1aux = color(255,0,0);
color col2aux = color(0,255,0);
color col3aux = color(0,0,255);
//Color del circulo
color c1= color(250, 219, 172);
//Variables de la cantidad y alto de las franjas
float cant;
float altoFranja;
//Contador del boton superior
float contador=0;

void setup(){ 
  
  size(500,400);  
  //Cantidad de franjas
  cant=66;
}
void draw(){

  //Alto de cada franja es igual al alto de la pantalla dividido la cantidad
  altoFranja = (float)height/cant;
  
  noStroke();
  
////////////////////////////////////Parte superior de la pantalla   
  for(int i=0; i<cant/3/3; i++){
    
    //Variables para poder correr el centro
    float centroX=width/2;
    float centroY=i*18;
    
    pushMatrix();
    rectMode(CENTER);
    translate(centroX,centroY);    
    //Dibuja franjas Rojas
    fill(col1); 
    rect(0,0+altoFranja/2,width,altoFranja);
    popMatrix();    
    pushMatrix();    
    translate(centroX,centroY);
    //Dibuja franjas Verde
    fill(col2);
    rect(0,(0+altoFranja/2)+6,width,altoFranja);    
    popMatrix();
    
    // Creando circulo
    fill (c1);
    ellipse(70,70,100,100);

      for(int j = 0; j<cant/3/3; j++){
        pushMatrix();    
        centroY=j*18;
        translate(centroX,centroY);
        //Dibuja franjas azules
        fill(col3);
        rect(0,(0+altoFranja/2)+12,width,altoFranja);    
        popMatrix();
    }
  }
////////////////////////////////////Parte media de la pantalla   
  for(int i=0; i<cant/3/3; i++){   
    
    //Variables para poder correr el centro
    float centroX=width/2;
    float centroY=i*18;
    
    pushMatrix();  
    rectMode(CENTER);
    translate(centroX,centroY); 
    //Dibuja franjas Azules
    fill(col3);
    rect(0,0+altoFranja*23,width,altoFranja);
    popMatrix();
    
    pushMatrix();    
    translate(centroX,centroY);
    //Dibujar franjas Verdes
    fill(col2);
    rect(0,(0+altoFranja*23)+6,width,altoFranja);  
    popMatrix(); 

    // Creando circulo
    fill (c1);
    ellipse(170,180,100,100);


      for(int j = 0; j<cant/3/3; j++){
        pushMatrix();    
        centroY=j*18;
        translate(centroX,centroY);
        //Dibuja franjas Rojas
        fill(col1);
        rect(0,(0+altoFranja*23)+12,width,altoFranja);    
        popMatrix();
    }
  }
////////////////////////////////////Parte inferior de la pantalla   
  for(int i=0; i<cant/3/3; i++){   
    //Variables para poder correr el centro
    float centroX=width/2;
    float centroY=i*18;
    
    pushMatrix();    
    translate(centroX,centroY);    
    //Dibuja franjas azules
    fill(col3);
    rect(0,0+altoFranja*46,width,altoFranja);
    popMatrix();
    
    pushMatrix();    
    translate(centroX,centroY);
    //Dibuja franjas Rojas
    fill(col1);
    rect(0,(0+altoFranja*46)+6,width,altoFranja);    
    popMatrix();

    // Creando circulo
    fill (c1);
    ellipse(70,320,100,100);

      for(int j = 0; j<cant/3/3; j++){
        pushMatrix();    
        centroY=j*18;
        translate(centroX,centroY);
        // Dibuja franjas verdes
        fill(col2);
        rect(0,(0+altoFranja*46)+12,width,altoFranja);    
        popMatrix();
    }
  }
  //Sector de botones
  fill(180);
  rect(width-50,height/2,100,height);

  //Boton circular superior
  fill(0);
  ellipse(width-50,height/4,90,90);
  
  //Boton circular medio
  fill(0);
  ellipse(width-50,height/2,90,90);
  
  //Boton circular infeior
  fill(0);
  ellipse(width-50,height/2+100,90,90);

}

void mousePressed(){
  
  //Boton Superior intercambia entre los 3 colores base  
  if(dist(mouseX,mouseY,width-50,height/4)<90/2){
    contador += 1;    
  }
  if(contador==1){
    
    col1= col2aux;
    col2= col3aux;
    col3= col1aux;
  }
  else if(contador==2){ 
    col1= col3aux;
    col2= col1aux;
    col3= col2aux;
  }
  else if(contador == 3){
    col1= col1aux;
    col2= col2aux;
    col3= col3aux;
    
    contador = 0;
  }  
  //Boton Medio ( barras blancas
  if(dist(mouseX,mouseY,width-50,height/2)<90/2){
    col1= color(255);
    col2= color(255);
    col3= color(255);
  }  
  //Boton Inferior barras color aleatorias
  if(dist(mouseX,mouseY,width-50,height/2+100)<90/2){
    pushStyle();
    colorMode(HSB);
    col1= color(random(0,255),255,255);
    col2= color(random(0,255),255,255);
    col3= color(random(0,255),255,255);
    popStyle();  
  }  
}
