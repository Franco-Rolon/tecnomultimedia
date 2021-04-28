/*
Nombre: Franco Rolón
Fecha:27-4-2021
Trabajo: TP1 Cirulo cromático
*/
PFont miFuente;
 void setup(){
   size(500,400);
   miFuente=loadFont("Verdana-Bold-11.vlw");
 }
 void draw(){
   background(0);
   
 //Construccion de triangulos
   noStroke();
   
   fill(120,40,140);//Violeta
   triangle(250,200,250,25,337,50);
   triangle(301,25,250,26,337,51);
   
   fill(255,0,255);//Magenta
   triangle(250,200,337,50,403,112);
   triangle(385,67,337,50,403,112);
   
   fill(255,0,128);//Fucsia
   triangle(250,200,403,112,425,200);
   triangle(430,148,403,112,425,200);
   
   fill(255,0,0);//Rojo
   triangle(250,200,425,200,403,288);
   triangle(430,246,425,200,403,288);
   
   fill(255,128,0);//Naranja
   triangle(250,200,403,288,337,350);
   triangle(384,327,402,287,337,349);
   
   fill(255,255,0);//Amarillo
   triangle(250,200,337,350,250,375);
   triangle(297,373,336,350,250,374);
   
   fill(191,255,0);//Lima
   triangle(250,200,250,375,163,350);
   triangle(200,376,250,374,163,349);
   
   fill(0,255,0);//Verde
   triangle(250,200,163,350,97,288);
   triangle(111,329,164,350,98,288);
   
   fill(0,255,128);//Verde Cian
   triangle(250,200,97,288,75,200);
   triangle(68,250,98,288,76,200);
   
   fill(0,255,255);//Cian
   triangle(250,200,75,200,97,112);
   triangle(66,153,76,200,98,112);
   
   fill(0,125,213);//Ceruleo
   triangle(250,200,97,112,163,50);
   triangle(114,67,98,113,164,50);
   
   fill(0,0,255);//Azul
   triangle(250,200,163,50,250,25);
   triangle(163,51,250,26,198,20);
   
   //Nombres de los colores 
   fill(0);

   textFont(miFuente);
   text("VIOLETA",265,60);
   text("MAGENTA",324,110);
   text("FUCSIA",340,180);
   text("ROJO",345,230);
   text("NARANJA",310,284);
   text("AMARILLO",254,331);
   text("LIMA",205,331);
   text("VERDE",140,284);
   text("VERDE CIAN",100,230);
   text("CIAN",118,180);
   text("CERÚLEO",127,110);
   text("AZUL",200,60);   
  
 }
