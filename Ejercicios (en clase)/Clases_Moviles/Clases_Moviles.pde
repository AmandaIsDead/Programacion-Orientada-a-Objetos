Movil m;
Movil otro;

void setup(){
size(800, 600);

m = new Movil(width/2, height/2);
otro = new Movil(100, 300);
}

void draw(){
  
  background(#98CAD1);
  
m.mover();
otro.mover();

m.contener();
otro.contener();

m.mostrar();
otro.mostrar();
}
