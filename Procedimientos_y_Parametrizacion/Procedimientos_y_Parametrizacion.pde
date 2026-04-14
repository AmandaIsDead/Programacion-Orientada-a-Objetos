void setup(){
  size(1000, 800);
  background(#457283);
}

void draw(){
  if(mousePressed && (mouseButton == LEFT)){
  imprimirEstampa(mouseX, mouseY);
  }
  if(mousePressed && (mouseButton == RIGHT)){
    background(#457283);
  }
}
