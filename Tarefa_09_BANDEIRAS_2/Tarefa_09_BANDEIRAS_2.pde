void setup() {
  size(800, 600);
}
void mostraBandeira(int largura) {
  float modulo = largura / 3.0;
  float altura = 2.0 * modulo;
  float xCentro = 1.0 / 2 * 3 * modulo;
  float yCentro = modulo;
  float diametro = 3.0 / 5 * 2 * modulo;
  fill(255);
  rect((width-3*modulo)/2, (height-2*modulo)/2, largura, altura);
  fill(200,0,0);
  ellipse(xCentro + (width-3*modulo)/2, yCentro + (height-2*modulo)/2, diametro, diametro);
  println(diametro);
}

void draw(){
  background(100);
  mostraBandeira(mouseX);
}


/*
A princípio, só passei o mostraBandeira(mouseX) para o draw e funcionou,
porém sempre a partir das coordenadas que eu setei antes
para a bandeira ficar no centro com a largura 600.
Isso seria facilmente resolvido com a função rectMode!
Mas o desafio é não usá-la, então tive que pensar.
Então, cheguei a conclusão de que precisava aplicar os calculos de x e y
apresentados na aula nas coordenadas do retângulo.
Após isso, foi só ajustar os valores da elipse para seguir o retângulo.
*/
