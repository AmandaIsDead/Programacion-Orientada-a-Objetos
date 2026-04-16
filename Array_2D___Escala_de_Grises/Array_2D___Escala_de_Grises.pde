float [][] grilla;
int columnas=10;
int filas=10;

void setup(){
size(1000, 800);
grilla = new float[columnas][filas];
}


void draw(){
  
float anchoCelda = width/columnas;
float altoCelda = height/filas;
float x, y = 0;
float celdaX, celdaY = 0;
float gris = 0;
float distancia = 0;
float distanciaMax = dist(0, 0, width, height);

for (int i = 0; i < columnas; i++) {
  for (int j = 0; j < filas; j++) {
    x = i * anchoCelda;
    y = j * altoCelda;
    celdaX = i * anchoCelda + anchoCelda/2;
    celdaY = j * altoCelda + altoCelda/2;
    distancia = dist(celdaX, celdaY, mouseX, mouseY);
    grilla[i][j] = distancia;
    gris = map(grilla[i][j], 0, distanciaMax, 255, 0);
    noStroke();
    fill(gris);
    rect(x, y, anchoCelda, altoCelda);
  }
}

}
