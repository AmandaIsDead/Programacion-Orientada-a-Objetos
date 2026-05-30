class Movil {
  PVector pos, vel;

  Movil(float x, float y) {
    pos = new PVector(x, y);
    vel = new PVector(random(-2, 2), random(-2, 2));
  }

  void mover() {
    pos.add(vel);
    contener();
  }

  void mostrar() {
    rect(pos.x, pos.y, width/20, height/15);
  }

  void contener() {
    if (pos.x < 0 || pos.x > width) {
      pos.sub(vel);
      vel.x = vel.x * (-1);
    }
    if (pos.y < 0 || pos.y > height) {
      pos.sub(vel);
      vel.y = vel.y * (-1);
    }
  }
}
