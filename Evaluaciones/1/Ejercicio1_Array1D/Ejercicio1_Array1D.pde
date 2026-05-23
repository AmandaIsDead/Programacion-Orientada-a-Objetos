// --- Tema 1 ---
/*
Enunciado: Crea un sketch que simule un monitor de ritmo cardíaco.
 1.  Define un array unidimensional (1D) de tipo entero con un tamaño de 40 elementos llamado lecturas
 y llénalo con valores aleatorios entre de altura (que representarán pulsaciones por minuto).
 2.  Desarrolla un procedimiento llamado dibujarGrafica() que y dibuje una serie de barras verticales
 (o una línea continua que conecte los puntos para punto extra) a lo largo de la pantalla para representar visualmente el historial de datos.
 3.  Diseña una función llamada calcularPromedio() que reciba el arreglo como parámetro, calcule la media de las pulsaciones
 y devuelva ese valor (float). Con ese valor mostrar una línea roja en la pantalla que represente ese promedio.
 */

int lecturas[];
int cantidad = 40;
float altura;

void setup() {
  size(1000, 800);
  background(#FFFFFF);

  lecturas = new int [cantidad];

  for (int i=0; i<cantidad; i++) {
    altura = random(0, 800);
    lecturas[i] = (int)altura;
  }
}

void draw() {

  float anchoBarras = width/cantidad;

  for (int i=0; i<cantidad; i++) {
    float x = i * anchoBarras;
    float y = lecturas[i];
    dibujarGrafica(x, y, anchoBarras, lecturas[i]);
  }

calcularPromedio(lecturas[cantidad]);
}

void dibujarGrafica(float x, float y, float w, int h) {
  fill(#37A559);
  rect(x, y, w, h);
}

void calcularPromedio(int [] lecturas) {

  float contador = 0;
  float resultado = 0;
  for (int i=0; i<cantidad; i++) {
    contador += lecturas[i];
  }
  resultado = contador/cantidad;
  fill(#FF0000);
  line(0, resultado, width, resultado);
}
