ArrayList <Cuadrado> tubos;

Pelota bird;
float ultimoPar = 0;
PVector G = new PVector(0, 2);

void setup() {
  size(800, 600);
  tubos = new ArrayList <Cuadrado>();
  bird = new Pelota(100, height/2);
}

void draw() {
  background(0);
  agregarTubos();
  bird.agregarFuerza();
  bird.mover();
  borrarTubos();

  for (Cuadrado t : tubos) {
    t.mover();
    t.mostrar();
  }

  bird.mostrar();
}

void borrarTubos() {
  for (int i=tubos.size()-1; i>=0; i--) {
    Cuadrado aux = tubos.get(i);
    if (aux.pos.x < 0) {
      tubos.remove(i);
    }
  }
}

void agregarTubos() {
  float tActual = millis();
  float dt = tActual - ultimoPar;
  if (dt>5000) {
    tubos.add(new Cuadrado(10, 10));
    tubos.add(new Cuadrado(20, 20));
    ultimoPar = tActual;
  }
}
