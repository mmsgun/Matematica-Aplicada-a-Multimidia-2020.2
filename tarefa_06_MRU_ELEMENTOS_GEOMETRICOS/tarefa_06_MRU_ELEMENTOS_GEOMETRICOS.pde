float v1 = random(1,101);
float v2 = random(1,101);
float t;
float d1;
float d2;
int raio;
void setup() {
  frameRate(60);
  size(600, 200);
  textSize(20);
}

void draw() {
  background(255);
  mostraMundo();
  d1 = MRU1(v1, t);
  d2 = MRU2(v2, t);
  t++;
  fill(0, 0, 255);
  circulo1(d1, 0, raio);
  fill(255, 0, 0);
  circulo2(d2, 50, raio);
  if ((d1>d2) && (d1 > width)) {
    fill(0, 0, 255);
    text("Vitória do Carro 01!", 200, 90);
    noLoop();
  } 
  if ((d2>d1) && (d2 > width)) {
    fill(255, 0, 0);
    text("Vitória do Carro 02!", 200, 90);
    noLoop();
  }
  if ((d2 == width) && (d1 == width)){
    fill(0, 0, 0);
    text("Empate!", 250, 90);
    noLoop();
  }
}

void mostraMundo() {
  for (int i=0; i<12; i++) {
    line(0, i*100, 600, i*100);
  }
}

void circulo1(float d1, int y, int r) {
  ellipse(d1, 50, 20, 20);
}
void circulo2(float d2, int y, int r) {
  ellipse(d2, 150, 20, 20);
}

int MRU1(float v1, float t) {
  float d1; 
  d1=v1*(t/60);
  return(int(d1));
}

int MRU2(float v2, float t) {
  float d2; 
  d2=v2*(t/60);
  return(int(d2));
}

/*
Explicação:
Peguei o código da aula anterior e modifiquei em pequenas partes:
Primeiro, o mostraMundo foi alterado para duas faixas de uma pista de corrida;
A relação FPS e MRU foi devidamente corrigida;
Com a nova função círculo, foram adicionadas novos parâmetros de velocidade, de distância e de cálculo MRU.
Foram adicionados os textos de resultado ao fim da corrida.
*/
