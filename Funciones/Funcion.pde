boolean hayColision(float x, float y, float r) {
r = r /2;

  float d = dist(mouseX, mouseY, x, y);

  if (d > r) {
    return false;
  } else {
    return true;
  }
}
