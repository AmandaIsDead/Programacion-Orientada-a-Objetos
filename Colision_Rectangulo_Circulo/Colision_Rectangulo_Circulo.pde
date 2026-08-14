Pelota pelotita;

PVector rectPos;
float rectAncho = 250;
float rectAlto = 150;

void setup() {
  size(800, 600);
  pelotita = new Pelota(new PVector(100, 100), 25);
  rectPos = new PVector(width/2, height/2);
}

void draw() {
  background(255);

  pelotita.mover();

  boolean colisiona = pelotita.chocaConRect(rectPos, rectAncho, rectAlto);

  if (colisiona) {
    background(#9B2232);
  } else {
    background(#34988A);
  }

  fill(0);
  rectMode(CENTER);
  rect(rectPos.x, rectPos.y, rectAncho, rectAlto);

  fill(255);
  ellipse(pelotita.pos.x, pelotita.pos.y, pelotita.r*2, pelotita.r*2);
}
