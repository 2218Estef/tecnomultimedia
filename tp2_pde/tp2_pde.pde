//https://youtu.be/2ZvZY02fKT8

float d, L, blanco, negro;
int limite = 9;
void setup() {
size( 400, 400 );
ellipseMode( CENTER );
noStroke();
smooth();
}
void draw() {
background(0);
d = width;
L = d / sqrt(2);

for ( int i=0 ; i<limite ; i++ ) {
blanco = map( i, 0, limite, 259, 40);
fill( blanco );
ellipse( width/4, height/4, d,d );
ellipse( width/2, height/2, d, d );
ellipse( width/4, height/4, L, L );
negro = map( i, 0, limite, 0, 257);
fill(negro);
ellipse( width/2, height/2, L, L );
ellipse( width/2, height/2, L, L );
ellipse( width/3, height/3, L, L );
ellipse( width/4, height/4, L, L );
ellipse( width/5, height/5, L, L );
d = L;
L = d / sqrt(2);
float angle = map(mouseX, 0, width, 0, TWO_PI);
translate(400, 400);
rotate(angle);
line(0, 0, 100, 0);
if (mouseX < 100) 
rect(0, 0, 50, 100); // Izquierda
//else 
rect(50, 0, 50, 100); // Derecha
if ((mouseX <= 50) && (mouseY <= 50)) 
rect(0, 0, 50, 50); // Upper-left
else if ((mouseX <= 50) && (mouseY > 50)) 
rect(0, 50, 50, 50); // Lower-left
else if ((mouseX > 50) && (mouseY < 50)) 
rect(50, 0, 50, 50); // Upper-right
rect(50, 50, 50, 50); 

}
}
