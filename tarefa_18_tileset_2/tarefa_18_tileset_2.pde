PImage imgGrama, imgPedra;
int[][] mapa = { 
  {0, 0, 0, 0, 1, 0, 0, 0, 0, 0}, 
  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, };

void setup() {
  size(500, 580);
  rectMode(CENTER);
  imgGrama = loadImage("Grass Block.png");
  imgPedra = loadImage("Stone Block.png");
  mostraMapa();
}
void mostraMapa() {
  for (int i=0; i<10; i++) 
    for (int j=0; j<10; j++) 
      switch(mapa[j][i]) {
      case 0:
        circle((50-i*5+j*5)*3, (4+i*5+j*5)*3, 21);
        break;
      case 1:
        square((50-i*5+j*5)*3, (4+i*5+j*5)*3, 21);
        break;

      }
}
