//Imagens
PImage imgParado, imgMartelando, imgPulando;

//Configuração inical
void setup() {
  size(600, 600);
  imgParado = loadImage("parado.png");
  imgMartelando = loadImage("martelando.png");
  imgPulando = loadImage("pulando.png");
}

//Estados Possiveis
final int PARADO = 0;
final int MARTELANDO = 1;
final int PULANDO = 2;

//Estado inicial
int estadoPersonagem = PARADO;

//Maquina de Estados Finitos
void MEF() {
  if (keyPressed == true) {
    if (key==' ')
      estadoPersonagem = MARTELANDO;
      if (key==UP)
      estadoPersonagem = PULANDO;
  }
}
  //Representação gráfica
  void mostraPersonagem(int estado) {
    background(255);
    if (estado == PARADO)
      image(imgParado, 150, 150);
    else if (estado == MARTELANDO)
      image(imgMartelando, 150, 150);
    else if (estado == PULANDO)
      image(imgPulando, 150, 150);
  }
  //Laço principal
  void draw() {
    mostraPersonagem(estadoPersonagem);
    MEF();
  }
