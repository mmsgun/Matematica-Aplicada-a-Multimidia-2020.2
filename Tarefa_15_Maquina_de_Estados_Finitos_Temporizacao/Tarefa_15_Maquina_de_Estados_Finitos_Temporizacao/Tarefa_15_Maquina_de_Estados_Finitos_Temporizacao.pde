//Estados Possiveis
final int PARADO = 0;
final int MARTELANDO = 1;
final int PULANDO = 2;

//Estado inicial
int estadoPersonagem = PARADO;

//Imagens
PImage imgParado, imgMartelando, imgPulando;

//Tempo
int tempoParado = 0;
int tempoMartelando = 0;
int tempoPulando = 0;

//Configuração inical
void setup() {
  size(600, 600);
  imgParado = loadImage("parado.png");
  imgMartelando = loadImage("martelando.png");
  imgPulando = loadImage("pulando.png");
}

//Maquina de Estados Finitos Temporização
void MEF() {
  if ((keyPressed == true) && (key == ' ')) {
    estadoPersonagem = MARTELANDO;
  } 
  if ((keyPressed == true) && (keyCode == UP)) {
    estadoPersonagem = PULANDO;
  }
  if ((estadoPersonagem == MARTELANDO) || (estadoPersonagem == PULANDO)) {
    tempoMartelando++;
    tempoPulando++;
    if ((tempoMartelando >= 60) && (estadoPersonagem == MARTELANDO)) {
      estadoPersonagem = PARADO;
      tempoMartelando = 0;
    } else if ((tempoPulando >= 60) && (estadoPersonagem == PULANDO)) {
      estadoPersonagem = PARADO;
      tempoPulando = 0;
    }
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
  println("BONK: ", tempoMartelando);
  println("Pulo: ", tempoPulando);
}
