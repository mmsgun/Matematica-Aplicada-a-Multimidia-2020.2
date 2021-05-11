float mod1 = 60;
float mod2 = 60+10;

void setup() {
  noStroke();
  size(800, 600);
  fill(255, 0, 0);
  rect(0, 0, mod1*3 + mod2*2, mod1*3 + mod2*2);
  fill(255);
  rect(mod1 + mod2, mod1, mod1, mod2); //em cima
  rect(mod1 + mod2, mod1 + mod2, mod1, mod1); //centro
  rect(mod1 + mod2, mod1*2 + mod2, mod1, mod2); //embaixo
  rect(mod1, mod1 + mod2, mod2, mod1); //esquerda
  rect(mod1*2 + mod2, mod1 + mod2, mod2, mod1); //direita
}

/*
O código foi feito seguindo as proporções da imagem em anexo, utilizando
dois módulos em vez de um só.
Cada retângulo representa uma fração da cruz.
*/
