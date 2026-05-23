// --- Tema 1 ---
/*
 Enunciado: Diseña un sketch que genere y renderice una cuadrícula interactiva representando un terreno topográfico utilizando una matriz bidimensional (2D).
 1.  Declara una matriz de enteros de tamaño variable que representará las elevaciones de un terreno.
 En el setup(), asigna a cada celda un valor entero aleatorio entre 0 y 255 mediante el uso de ciclos anidados.
 2.  En el método draw(), recorre la matriz usando ciclos anidados para dibujar la cuadrícula.
 El color de relleno (fill) de cada celda debe corresponder directamente al valor numérico guardado en la matriz (creando un mapa en escala de grises).
 3.  Añade interactividad: cuando el usuario haga clic sobre una celda específica de la cuadrícula,
 el valor de esa posición en la matriz debe incrementarse en 25 unidades (sin superar el límite de 255), provocando que visualmente esa zona se aclare.
 */

int grilla[][];
int filas = 15;
int columnas = 15;

void setup() {
  size(1000, 800);
  background(#FFFFFF);

  grilla = new int [columnas][filas];

  for (int i=0; i<columnas; i++) {
    for (int j=0; j<filas; j++) {
      float colorCelda = random(0, 255);
      grilla[i][j] = (int)colorCelda;
    }
  }
}

void draw() {

  float anchoCelda = width/columnas;
  float altoCelda = height/filas;

  for (int i=0; i<columnas; i++) {
    for (int j=0; j<filas; j++) {
      float x = i * anchoCelda;
      float y = j * altoCelda;

      fill(grilla[i][j]);
      rect(x, y, anchoCelda, altoCelda);
    }
  }
}

void mousePressed() {
  
}
