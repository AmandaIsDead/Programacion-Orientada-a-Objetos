void setup(){
  size(800, 600);
}

void draw(){
  int cantColumnas=10;
  int cantFilas=8;
  float separacionX=width/cantColumnas;
  float separacionY=height/cantFilas;
  
  for(int i=0; i<cantColumnas; i++){
    for(int j=0; j<cantFilas; j++){
      float x=i*separacionX;
      float y=j*separacionY;
      square(x, y, 200);
    }
  }
}
