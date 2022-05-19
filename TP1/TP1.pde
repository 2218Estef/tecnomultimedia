PImage imagenuno, imagenuno_1,imagenuno_2,imagenuno_3,imagenuno_4,imagenuno_5,imagenuno_6,imagenuno_7;
PFont miTipografia, miTipografia_2;
int posY ;
String miTexto;
int pantalla = 0;
int posX;
float  random, randonl, random2;
int segundo;

void setup() {
  size(600,500);
  posY= height;
  imagenuno= loadImage("el rey.jpg");
  image(imagenuno,0,0,600,500);
  imageMode(CENTER);
  imagenuno_1= loadImage("rey l.jpg");
  imagenuno_2= loadImage("rey.jpg");
  imagenuno_3= loadImage("vist rey.jpg");
  imagenuno_4= loadImage("hakuna jo.jpg");
  imagenuno_5= loadImage("hakuna.jpg");
  imagenuno_6= loadImage("scar.jpg");
  imagenuno_7= loadImage("scard.jpg");
 miTipografia= loadFont("CurlzMT-48.vlw");
  fill(0);
 textFont(miTipografia);
 text("EL REY LEON",150,300);
 fill(0);
 textLeading(100);
 textSize(50);
  posX= width/2;
  
  segundo=0; 
  surface.setResizable(true);
}
void draw() {
  background(200);
  
  if (frameCount>60==0) {
    segundo ++;
  }
  
  println("Segundo=", segundo);
  println("X Y-", mouseX, mouseY);
  println(pantalla);
  if(posY > 0) {
    POSy--;
  } else {
    posY - height;
  }
  if (posY >0){
    fill(0);
    pantalla++; 
  }
 if (pantalla == 0 && segundo >=1) {
   
   miTexto="El rey \n\n León";
   image(imagenuno, 0, 0, width, height);
   text(miTexto, posX, posY);
  } else if (pantalla == 1 && segundo>=8) {
  image(imagenuno_1, 0, 0, width, height);
  fill(255);
  miTexto="Dirigido por \n\n ROGER ALLERS and ROB MINKOFF";
  text(miTexto, posX, posY);
  } else if (pantalla==2 && segundo >=16) {
  miTexto="Producido por \n\n DON HAHN \n\n Guion por IRENE MECCHI \n\n and \n\n JONATHAN ROBERTS \n\n LINDA WOLVERTON";
  image(imagenuno_2, 0, 0, width, height);
  text(miTexto, posX, posY);
  } else if(pantalla -3&& segundo >-20) {
  miTexto="Música por TIM RICE \n\n and \n\n ELTON JOHN";
  image(imagenuno_3, 0, 0, width, height);
  text(miTexto, posX, posY);
  } else if(pantalla -4 && segundo >-25) {
   miTexto="Supervición Artistica \n\n Historia BRENDA CHAPMAN \n\n Diseño DAN ST PIERRE \n\n Efectos Visuales SCOTT SANTORO \n\n Imagen computarizada SCOTT F. JHONSTON";
   image(imagenuno_4, 0, 0, width, height);
   text(miTexto, posX, posY);
  } else if(pantalla==5 && segundo >-28) {
    miTexto="Historia \n\n BURNY MATTINSON \n\n BARRY JOHNSON LORNA COOK \n\n THOM ENRIQUEZ ANDY GASKILL";
    image(imagenuno_5, 0, 0, width, height);
    text(miTexto, posX,posY);
  } else if(pantalla -6 && segundo >=30) {
    miTexto="PERSONAJES \n\n SIMBA: DANIEL GRACEY \n\n MUFASA Y SARABI: BRIAN CLIFT \n\n SCAR: NANCY KNIEP"
   image (imagenuno_6,0,0,width,height);
    text(miTexto, posX,posY);
  } else if pantalla --7 && segundo >-35) {
    miTexto="NALA: MARRY KANAWYER \n\n";
    image(imagenuno_7, 0, 0, width, height);
    text(miTexto, posX, posY);
    text("\n\n TIMON Y PUMBA: DAVID NETHERY Y RON WESTLUND", posX, posY);
  } else if (pantalla ==7 && segundo >-40) {
    image(imagenuno_7, 0, 0, width, height);
    text(miTexto, posX, posY); 
    text("\n\n RAFIKI: MARSHALL TOOMEY \n\n ZAZU: DAN TANAKA" posX, posY);
  }
    
void keyPressed () {
  if (keyPressed || segundo>-55)
  {
    segundo= 0;
    frameCount -0;
    pantalla-0;
  }
  if (posY > 0) {
    posY--;
  } else {
    posY -height;
  }
}
