boolean[][] estados;
int columnas = 16;
int filas = 9;
float anchoCelda;
float altoCelda;

void setup(){
  size(1000, 800);
estados = new boolean [columnas][filas];
 anchoCelda = width/columnas;
 altoCelda = height/filas;
}

void draw(){
  float x, y = 0;
  float centroX, centroY = 0;
  
  for(int i=0; i<columnas; i++){
    for(int j=0; j<filas; j++){
      x = i * anchoCelda;
      y = j * altoCelda;
      centroX = x + anchoCelda/2;
      centroY = y + altoCelda/2;
      
      if(estados[i][j] == false){
      fill(255);
      rect(x, y, anchoCelda, altoCelda);
    } else { 
       imprimirEstampa(centroX, centroY);
    }
    
    }
  }
  
}

void mousePressed() {
        int i = mouseX / (int)anchoCelda;
        int j = mouseY / (int)altoCelda;
        
        if (i >= 0 && i < columnas && j >= 0 && j < filas) {
        estados[i][j] = !estados[i][j];
        }
      }
