int[] posY = new int[50];
int[] posX = new int[50];
int cont;

void setup() {
  size(300, 300);
}

void draw() {
  background(0);
  posY[cont % 50] = mouseY;
  posX[cont % 50] = mouseX;
  rect(mediaX()-5, mediaY()-5, 10, 10);
  cont++;
}

float mediaY() {
  int soma = 0;
  for (int i=0; i<50; i++)
    soma = soma + posY[i];
  return int(soma / 50.0);
}

float mediaX() {
  int soma = 0;
  for (int i=0; i<50; i++)
    soma = soma + posX[i];
  return int(soma / 50.0);
}
