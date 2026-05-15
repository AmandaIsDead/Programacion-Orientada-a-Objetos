// Modificar el programa original para que la pelota no se vaya de la pantalla.

PVector pos, vel;
float d = 40;

void setup() {
  size(800, 600);
  pos = new PVector(width/2, height/2);
  vel = new PVector(4, 3);
}

void draw() {
  background(#B28585);
  pos.add(vel);
  vel.rotate(PI/300);
  // println(pos.x, pos.y);
  if(pos.y >= 600 || pos.y <= 0){
    vel.y = vel.y * (-1);
  }
  
  if(pos.x >= 800 || pos.x <= 0){
    vel.x = vel.x * (-1);
  }
  circle(pos.x, pos.y, d);
}
