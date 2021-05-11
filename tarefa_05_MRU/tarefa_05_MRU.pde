int v = 5;
int t;
int d;
int raio;
void setup() {
  frameRate(60);
  size(600, 600);
}

void draw() {
  background(255);
  mostraMundo();
  d = MRU(v, t);
  println("Tempo ", t, "Distancia ", d);
  t++;
  circulo(d, 0, raio);
}

void mostraMundo() {
  for (int i=0; i<12; i++) {
    line(i*50, 0, i*50, 600);
    line(0, i*50, 600, i*50);
  }
}

void circulo(int d, int y, int r) {
  ellipse(d, 50, 20, 20);
}

int MRU(int v, int t) {
  int d; 
  d=v*t;
  return(d);
}
