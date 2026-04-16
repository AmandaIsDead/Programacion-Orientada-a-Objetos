void setup() {
  size(800, 600);
}

void draw() {

  int cantLineas=4;
  float separacion=width/cantLineas;
  float x=0;

  for (int i=0; i<=cantLineas; i++){
    line(x, 0, width/2, height/2);
    line(x, height, width/2, height/2);
    x+=separacion;
  }
}
