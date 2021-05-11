int cont;
int posY[] = new int[5];
int posX[] = new int[5];

    
void setup() {
  size(300, 300);
}

void draw() {
  background(0);
  posY[cont % 5] = mouseY;
  posX[cont % 5] = mouseX;
  rect(mediaX(), mediaY(), 10, 10);
  cont++;
  rect(desvioPadraoX(), desvioPadraoY(), 5, 5);
}

float mediaY() {
  int soma = 0;
  for (int i=0; i<5; i++)
    soma = soma + posX[i];
  return int(soma / 5.0);
}

float mediaX() {
  int soma = 0;
  for (int i=0; i<5; i++)
    soma = soma + posY[i];
  return int(soma / 5.0);
}

float varianciaY() {
  float valorMedia = mediaY();
  int tam = posY.length;
  float soma = 0.0;
  for (int cont=0; cont<tam; cont++) {
    float aux = posY[cont] - valorMedia;
    soma += sq(aux);
  }
  return (soma/(tam));
  
}
float varianciaX() {
  float valorMedia = mediaX();
  int tam = posX.length;
  float soma = 0.0;
  for (int cont=0; cont<tam; cont++) {
    float aux = posX[cont] - valorMedia;
    soma += sq(aux);
  }
  return (soma/(tam));
}

float desvioPadraoY() {
  return sqrt(varianciaY());
}

float desvioPadraoX() {
  return sqrt(varianciaX());
}
