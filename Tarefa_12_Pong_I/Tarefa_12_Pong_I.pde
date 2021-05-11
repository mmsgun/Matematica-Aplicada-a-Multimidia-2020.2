int bastaoY = 0;
int bolaX = 300;
int bolaY = 300;
int dX = 5;
int dY = 10;

void setup() {
  size(600, 600);
}

void draw() {
  background(0);
  ellipse(bolaX,bolaY,20,20);
  bolaX = bolaX + dX;
  bolaY = bolaY + dY;
  if((bolaX >= 590) || (bolaX <= 10)) {
    dX = -dX;
  }
  if((bolaY >= 590) || (bolaY <=10)){
    dY = -dY;
  }
  
  
  rect(570, bastaoY, 20, 100);
  if ((keyPressed == true) && (keyCode == DOWN)) {
    bastaoY = bastaoY + 7;
    if (bastaoY >= 500) {
      bastaoY=500;
    }
  }
  if ((keyPressed == true) && (keyCode == UP)) {
    bastaoY = bastaoY - 7;
    if (bastaoY <= 0) {
      bastaoY=0;
    }
  }
}


/*
Professor, percebi a relação dessa atividade com a do lançamento oblíquo
quando resolvi o movimento diagonal infinito da bola ao aumentar a velocidade
somente do eixo Y, exatamente o que eu fazia nas atividades de MRU e de MRUV -
basta mudar uma variável para o código se comportar da maneira desejada.
*/
