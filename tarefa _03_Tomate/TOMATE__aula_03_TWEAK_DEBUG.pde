int tomate;

void setup() {
  size(500, 500);
  noStroke();
  frameRate(24);
  tomate = 1;
}

void draw() {
  if ((mouseY>250 && mouseX<250) || (mouseY<250 && mouseX>250)) {
    fill(random(-105), random(255), random(255));
    ellipse(mouseX, mouseY, tomate, tomate); //<>//
  } else {
    fill(62,37,37);
    ellipse(mouseX, mouseY, tomate, tomate); //<>//
    tomate = tomate+1;
  }
}

//tweak pode ser usado para mudar as cores
//debug checa se as funções if e else funcionam corretamente
