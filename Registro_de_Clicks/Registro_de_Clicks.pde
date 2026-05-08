
float []posX;
float []posY;

int indice = 0;
int totalPuntos = 0;

void setup(){  
  size(1000, 800);
  background(255);
  
  posX = new float[10];
  posY = new float[10];
}

void draw(){
  
  background(255);
  
int limite;
  if (totalPuntos < 10) {
    limite = totalPuntos;
  } else {
    limite = 10;
  }
  
  for (int i = 0; i < limite; i++) {
    fill(0, 150, 255);
    circle(posX[i], posY[i], 30);
  }
}

void mousePressed() {
  posX[indice] = mouseX;
  posY[indice] = mouseY;
  
  indice++;
  if (indice == 10) {
    indice = 0;
  }
  
  totalPuntos++;
}
