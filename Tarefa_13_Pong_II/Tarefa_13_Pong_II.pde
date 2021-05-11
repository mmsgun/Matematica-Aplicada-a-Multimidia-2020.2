int cor = 255;
void setup() {
  size(600, 600);
  noStroke();
}

void bolao() {
  fill(cor);
  circle(300, 300, 100);
}

void bolinha() {
  fill(cor);
  circle(mouseX, mouseY, 50);
}

void draw() {
  background(0);
  bolao();
  bolinha();
  float distancia = dist(300, 300, mouseX, mouseY);
  if (distancia<75) {
    cor = cor - int(random(0, 255));
  }
}


/*
Acredito que a função "dist" pode ser implementada no jogo pong para detectar
a colisão das barras e da bola com as bordas do cenário.

Hipotetizando:
dist(xBola, yBola, xBarra, yBarra)
se dist < raio bola + largura barra
xBola e yBola = -xBola e -yBola

*/
