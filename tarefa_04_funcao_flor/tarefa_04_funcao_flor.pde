int x, y, r;
void setup() {
  size(300, 300);
  noStroke();
}

void draw() {
  background(0);
  flor4(x, y, r);
  circulo(x,y,r);
  r = 30;
}

void flor4(float i, float j, float l) {
  fill(255,0,0);
  circle(mouseX+30, mouseY, l);
  circle(mouseX-30, mouseY, l);
  circle(mouseX, mouseY+30, l);
  circle(mouseX, mouseY-30, l);
}

void circulo(float i, float j, float l){
  fill(0,255,0);
  circle(mouseX, mouseY, l);
}
