int cantFilas = 15;
int cantColumnas = 9;
boolean fueCliqueado[][];

void setup() {
size(900, 600);
background(#FFFFFF);
fueCliqueado = new boolean[cantColumnas][cantFilas];
}

void draw() {
float ancho = width/cantColumnas;
float alto = height/cantFilas;

for(int i=0; i<cantColumnas; i++){
  for(int j=0; j<cantFilas; j++){
    
    float x = i*ancho;
    float y = j*alto;
    float limiteDerecho = x+ancho;
    float limiteInferior = y+alto;
    
    if((x<mouseX) && (mouseX<limiteDerecho) && (y<mouseY) && (mouseY<limiteInferior) && (mousePressed == true)){
    fueCliqueado[i][j] = true;
    }
    
    if(fueCliqueado[i][j]){
    fill(0);
    } else fill(255); 
    
    rect(x, y, ancho, alto);
    
    }
  }
}
