float vMRU = random(0, 101);
float tAtual = 0;
float vMRUV = random(0, 101);
float aAtual = -9.8;
float dHorizontal;
float dVertical;
float intervalo = 1.0/60;

void setup() {
  size(600, 600);
  frameRate(120);
}

void draw() {
  background(255);
  mostraMundo();
  dHorizontal = MRU(vMRU, tAtual);
  dVertical = MRUV(vMRUV, aAtual, tAtual);
  fill(155,0,155);
  ellipse(300 + dHorizontal, 300 - dVertical, 10, 10);
  tAtual = tAtual + intervalo;
}

void mostraMundo(){
  for (int i=0; i<12; i++){
    line(0, i*100, 600, i*100);
    line(i*100, 0, i*100, 600);
  }
}

float MRU(float v, float t){
  float d;
  d=v*t;
  return(d);
}

float MRUV(float v, float a, float t) {
  float d;
  d = v*t+a*t*t/2.0;
  return(d);
}

/*
Comentários:
O que foi feito nesse código foi basicamente a junção do código desenvolvido
na aula anterior com o explicado na aula atual.
*/

/*
TESTES:
Percebi que aumentando as velocidades, consequentemente
as distâncias aumentam, tanto em MRU como em MRUV, então
se quiser aumentar a distância horizontal, aumenta-se a velocidade do MRU, o 
mesmo valendo para a distancia vertical com MRUV.
Negativando as velocides, inverte-se os movimentos.
Zerando as velocidades, anula-se o movimento referente
ex.: com a velocidade do MRU = 0, o corpo só sobe e cai, verticalmente.
*/
