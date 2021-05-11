PImage imgGrama, imgGramaAlta, imgFlor, imgPedra;

int[][] mapa = { 
  {2, 2, 2, 3, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1}, 
  {2, 2, 3, 0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 1, 3, 1}, 
  {2, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 2, 1, 1}, 
  {2, 3, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 2, 1}, 
  {2, 0, 0, 0, 0, 0, 0, 2, 2, 2, 0, 0, 1, 1, 2, 2}, 
  {0, 0, 0, 0, 0, 0, 2, 2, 2, 2, 2, 0, 0, 1, 1, 1}, 
  {0, 0, 0, 0, 0, 2, 2, 2, 2, 2, 2, 2, 0, 0, 0, 1},
  {3, 0, 0, 0, 0, 2, 2, 2, 3, 2, 2, 2, 0, 0, 0, 0},
  {1, 1, 1, 0, 0, 2, 2, 2, 2, 2, 2, 2, 0, 0, 0, 0},
  {1, 1, 1, 1, 0, 0, 2, 2, 2, 2, 2, 0, 0, 0, 0, 0},
  {1, 1, 1, 3, 0, 0, 0, 2, 2, 2, 0, 0, 0, 0, 0, 0},
  {1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0},
  {1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1},
  {1, 3, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0, 0, 3, 1, 1},
  {1, 1, 1, 1, 1, 3, 0, 0, 0, 0, 0, 0, 0, 1, 1, 2},
  {1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 2, 1}, };

void setup() {
  size(256, 256);
  imgGrama = loadImage("pokeGrama.png");
  imgGramaAlta = loadImage("pokeGramaAlta.png");
  imgFlor = loadImage("pokeFlor.png");
  imgPedra = loadImage("pokePedra.png");
  mostraMapa();
}

void mostraMapa() {
  for (int i=0; i<16; i++)
    for (int j=0; j<16; j++)
      switch(mapa[j][i]) {
      case 0:
        image(imgGrama, i*16, j*16);
        break;
      case 1:
        image(imgGramaAlta, i*16, j*16);
        break;
      case 2:
        image(imgFlor, i*16, j*16);
        break;
        case 3:
        image(imgPedra, i*16, j*16);
        break;
      }
}
