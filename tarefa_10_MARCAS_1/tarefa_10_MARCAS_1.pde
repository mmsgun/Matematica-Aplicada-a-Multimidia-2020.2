float mod = random(1,100);
int bg = 135;
void setup() {
  size(800, 600);
  noStroke();
  ellipseMode(CORNER);
  background(bg);
  coluna01();
  coluna02();
  topo();
  meio();
}

void coluna01 () {
  fill(0);
  rect(mod, mod*2, mod, mod*7);
}

void coluna02() {
  fill(0);
  rect(mod*3.5, mod*2, mod, mod*7);
}

void topo() {
  fill(0);
  rect(mod*2, mod, mod*1.5, mod);
  ellipse(mod, mod, mod*2, mod*2);
  ellipse(mod*2.5, mod, mod*2, mod*2);
  fill(bg);
  rect(mod*2.3, mod*2, mod*1, mod/2);
  rect(mod*2, mod*2.3, mod*1.5, mod);
  ellipse(mod*2, mod*2, mod/2, mod/2);
  ellipse(mod*3, mod*2, mod/2, mod/2);
}

void meio() {
  fill(0);
  rect(mod*2, mod*5.5, mod*1.5, mod);
}
