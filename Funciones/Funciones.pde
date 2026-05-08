
float posicionX;
float posicionY;
float r;

void setup() {
  size(800, 600);
  background(255);

  r = random(100, 400);
  posicionX = random(width);
  posicionY = random(height);
}

void draw() {
  if (hayColision(posicionX, posicionY, r)) {
    fill(#6E15AF);
  } else {
    fill(255);
  }
  circle(posicionX, posicionY, r);
}
