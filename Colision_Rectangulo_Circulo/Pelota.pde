class Pelota {

  PVector pos;
  PVector vel;
  float r;

  Pelota(PVector posp, float rp) {
    pos = posp.copy();
    r = rp;
    vel = new PVector(random(2, 5), random(2, 5));
  }

  void mover() {
    pos.add(vel);

    if (pos.x - r < 0 || pos.x + r > width) {
      vel.x *= -1;
    }

    if (pos.y - r < 0 || pos.y + r > height) {
      vel.y *= -1;
    }
  }

  boolean chocaConRect(PVector rpos, float rw, float rh) {
    PVector pmc = new PVector();

    if (pos.x < (rpos.x - rw/2)) {
      pmc.x = rpos.x - rw/2;
    } else if (pos.x > (rpos.x + rw/2)) {
      pmc.x = rpos.x + rw/2;
    } else {
      pmc.x = pos.x;
    }

    if (pos.y < (rpos.y - rh/2)) {
      pmc.y = rpos.y - rh/2;
    } else if (pos.y > (rpos.y + rh/2)) {
      pmc.y = rpos.y + rh/2;
    } else {
      pmc.y = pos.y;
    }

    return chocaCon(pmc);
  }

  boolean chocaCon(PVector otro) {
    return dist(pos.x, pos.y, otro.x, otro.y) < r;
  }
}
