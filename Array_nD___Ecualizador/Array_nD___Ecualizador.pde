float[] barras;
int cant = 20;

void setup(){
size(1000, 800);
background(255);

barras = new float[cant];
  
}

void draw(){
  background(255);
  
  float x = 0;

  int anchoBarras = width/cant;
  
  for(int i=0; i<cant; i++){
    x = i*anchoBarras;
    fill(#6496FA);
    rect(i * anchoBarras, height - barras[i], anchoBarras, barras[i]);
  }
    
  if (mousePressed) {
   int indice = mouseX / anchoBarras;
  
   if (indice >= 0 && indice < cant) {
    barras[indice] = constrain(height - mouseY, 0, height);
  }
  }
  
}
