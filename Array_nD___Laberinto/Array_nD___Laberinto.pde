boolean [][][]laberinto;
int filas = 10;
int columnas = 10;

void setup(){
size(1000, 800);
laberinto = new boolean[filas][columnas][6];

  for(int i=0; i<filas; i++) {
  for(int j=0; j<columnas; j++) {
    for(int k=0; k<6; k++) {
      laberinto[i][j][k] = random(1) > 0.5;
    }
  }
 }
}

void draw(){
  
  background(255);
  
  float altoCelda = height/filas;
  float anchoCelda = width/columnas;

  for(int i=0; i<filas; i++){
    for(int j=0; j<columnas; j++){
        float x = j * anchoCelda;
        float y = i * altoCelda;
        
        if (laberinto[i][j][0]) { 
        line(x, y, x + anchoCelda, y); 
        }
        
        if (laberinto[i][j][1]) { 
        line(x + anchoCelda, y, x + anchoCelda, y + altoCelda);
        }
        
        if (laberinto[i][j][2]) {
        line(x, y + altoCelda, x + anchoCelda, y + altoCelda);
        }
        
        if (laberinto[i][j][3]) { 
        line(x, y, x, y + altoCelda); 
        }
        
        if (laberinto[i][j][4]) {
        line(x, y, x + anchoCelda, y + altoCelda);
        }
        
        if (laberinto[i][j][5]) {
        line(x + anchoCelda, y, x, y + altoCelda);
        }
    }
  }
}
