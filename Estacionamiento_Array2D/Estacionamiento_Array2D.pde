Movil [][] autos;
int filas = 2;
int columnas = 3;

void setup() {
  size(800, 600);

  autos = new Movil[columnas][filas];

  float separacionX = width/columnas;
  float separacionY = height/filas;

  for (int i = 0; i<columnas; i++) {
    for (int j = 0; j<filas; j++) {
      float posicionX = (i * separacionX) + (separacionX/2);
      float posicionY = (j * separacionY) + (separacionY/2);
      autos[i][j] = new Movil(posicionX, posicionY);
    }
  }
}

void draw() {
  background(#FFFFFF);

  for (int i = 0; i<columnas; i++) {
    for (int j = 0; j<filas; j++) {
      autos[i][j].mover();
      autos[i][j].mostrar();
    }
  }
}
