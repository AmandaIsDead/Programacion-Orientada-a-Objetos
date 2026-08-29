class Pelota {
  PVector pos;
  PVector vel;

  float r = 30;
  color c = color(#EAC321);

  Pelota(float x, float y) {
    pos = new PVector(x, y);
    vel = new PVector(4, 3);
    PVector G = new PVector(0,2);
  }
  
  void mover(){
  pos.add(vel);
  }
  
  void agregarFuerza(){
  vel.add(G);
  }

  void mostrar() {
    fill(c);
    noStroke();
    ellipse(pos.x, pos.y, r * 2, r * 2);
  }

  boolean ChocaConRect(PVector rpos, float rw, float rh) {

    float cercaX = constrain(pos.x, rpos.x, rpos.x + rw);
    float cercaY = constrain(pos.y, rpos.y, rpos.y + rh);

    PVector puntoCercano = new PVector(cercaX, cercaY);

    return ChocaCon(puntoCercano);
  }

  boolean ChocaCon(PVector otro) {

    float distancia = dist(
      pos.x,
      pos.y,
      otro.x,
      otro.y
    );

    return distancia < r;
  }
}
