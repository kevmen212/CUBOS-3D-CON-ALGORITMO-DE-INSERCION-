float cubos[] = new float[10];
float temp, actual;
int p, j;
float aux;

void setup() {
  fullScreen(P3D);
  for (int i = 0; i < cubos.length; i++) {
    cubos[i] = random(100);
  }
}

void draw() {
  if (mousePressed == true) {
    p++;
    if ((p+1)>=cubos.length) noLoop();
    aux= cubos[p];
    j=p-1;
    while ((j>=0) && (aux <cubos[j])) {
      cubos[j+1]=cubos[j];
      j--;
    }
    cubos[j+1]=aux;
  }
  mostrar();
}

void mostrar() {
  background(255);
  for (int i = 0; i < cubos.length; i++) {
    pushMatrix();
    stroke(0);
    translate(map(i, 0, cubos.length, width/cubos.length, width), height/2);
    rotateX(0.5);
    fill(0,0,random(50,220));
    box(cubos[i]);
    popMatrix();
  }
}
