Movil [] robots;
int cant = 10;

void setup() {
  size(800, 600);
  float separacion = width/cant;
  robots = new Movil[cant];
  for (int i = 0; i<cant; i++) {
    float posicionX = (separacion * i) + (separacion/3);
    robots[i] = new Movil(posicionX, height*0.7);
  }
}

void draw() {
  background(#FFFFFF);
  strokeWeight(7);
  stroke(#AA0000);
  line(0, height*0.6, width, height*0.6);

  for (int i = 0; i<cant; i++) {
    robots[i].mover();
    strokeWeight(1);
    stroke(#000000);
    robots[i].mostrar();
  }
}
