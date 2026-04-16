void imprimirEstampa(float x, float y){
  float tamaño = anchoCelda*0.8;
  float diferencia = anchoCelda*0.08;

  fill(#000000);
  square(x-(tamaño/2), y-(tamaño/2), tamaño);
  fill(#62B486);
  square(x-(tamaño/2)+diferencia/2, y-(tamaño/2)+diferencia/2, tamaño-diferencia);
  fill(#000000);
  circle(x, y, tamaño - diferencia*4);
  fill(#8B66B7);
  circle(x, y, tamaño - diferencia*5);
}
