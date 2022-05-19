PImagen imgOriginal, ingOriginal_1, imgOriginal_2, ingOriginal_3;
Pfont miTipografia, miTipografia_2;
int posY ;
String miTexto;
int pantalla=0;
int posX;
float  random, randonl, random2;
int segundo;

void setup() {
   size(600,800);
   posY= height;
   imgOriginal= loadImagen("portada.jpg");
   imgOriginal_1= loadImagen("portada.jpg");
   miTipografia= loadFont("Arial-BoldItalicKT-48_vlw");
   //miTipografia_2 =loadFond("loadFont("Arial-ItalicNT-48.VLW");
   textFont(miTipografia);
   textAlign(CENTER);
   textSize(30);
   posX= width/2;
   
   segundo= 0;
   surface.setResizable(true);
}
