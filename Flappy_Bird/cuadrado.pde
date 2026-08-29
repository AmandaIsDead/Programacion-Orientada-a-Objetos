class Cuadrado {
  PVector pos;
  int tamAlto = 120;
  int tamAncho = 30;

  color c = color(#205F2B);

  Cuadrado(float x, float y) {
    pos = new PVector(x, y);
  }

  void mover() {
  
  }

  void mostrar() {
    fill(c);
    rect(pos.x, pos.y, tamAncho, tamAlto);
  }
}
