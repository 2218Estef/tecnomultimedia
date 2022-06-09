void setup() {
  size(700,700);
  background(255);
  //noSmooth();
  
}



void draw() {
  
  blendMode(REPLACE);
    strokeWeight(7);
    stroke(0);
  background(255);
  for (int j = 0; j <width*2; j=j+20) {
    line(j, 0, 0, j);
  }
  blendMode(DIFFERENCE);
  fill(255);
  noStroke();
  textSize(width*2/10);
  textAlign(CENTER, CENTER);
  
  for (int j= -200; j <height+200; j=j+width/int(map(mouseY, 0, height,3,10)))
  text("MI BONITA", width/2, j);

if (keyPressed) {
if (key == 'b'  || key == 'B') {
fill(0);
}
} else {
fill(255);
}
rect(25, 25, 50, 50);

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
rect(50, 50, 50, 50); // Lower-right
}

  
  
  
  
