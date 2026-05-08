int cant = 10;
int sepx, sepy;
void setup() {
  size(800, 600);
  sepx = width/cant;
  sepy = height/cant;
}

void draw() {
  background(255);
  for (int i = 0; i<cant; i++) {
    
    line(0, i*sepy, i*sepx, height);  // Vértice inferior izquierdo.

    line(width, i * sepy, width - (i * sepx), height);  // Vértice inferior derecho.
    
    line(0, height - (i * sepy), i * sepx, 0);  // Vértice superior izquierdo.
    
    line(width, height - (i * sepy), width - (i * sepx), 0);  // Vértice superior derecho.
    
  }
}
