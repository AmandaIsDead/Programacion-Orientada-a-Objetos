void setup(){
  size(1000, 800);
}

void draw(){
  
  float tamaño = height*0.3;
  float diferencia = height*0.03;
  
  fill(#000000);
  square(width/2 - (tamaño)/2, height/2 - tamaño/2, tamaño);
  fill(#62B486);
  square(width/2 - (tamaño-diferencia)/2, height/2 - (tamaño-diferencia)/2, tamaño-diferencia);
  fill(#000000);
  circle(width/2, height/2, tamaño - diferencia*4);
  fill(#8B66B7);
  circle(width/2, height/2, tamaño - diferencia*5);
}
