float th = 150;
PImage imgOriginal;
PImage imgNova =
  createImage(320, 240, RGB);
void setup() {
  size(640, 240);
  imgOriginal =
    loadImage("original.png");
  processaImagem();
  image(imgOriginal, 0, 0);
  image(imgNova, 320, 0);
}
void processaImagem() {
  color corOriginal, corDestino;
  float r, g, b;
  for (int x = 0; x < 320; x++) {
    for (int y = 0; y < 240; y++) {
      corOriginal = imgOriginal.get(x, y);
      r = red(corOriginal);
      g = green(corOriginal);
      b = blue(corOriginal);
      
      if (r>th)
      r = 255;
      else
      r = 0;
      if (g>th)
      g = 255;
      else
      g = 0;
      if (b>th)
      b = 255;
      else
      b = 0;
      
      float s = r+g+b;
      corDestino = color(s, s, s);
      imgNova.set(x, y, corDestino);
    }
  }
}
