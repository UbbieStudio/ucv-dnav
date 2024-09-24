void setup() {
  size(400, 400);
  //stroke(255);
  //background(192, 64, 0);
  main();
}

void draw() {
  //line(150, 25, mouseX, mouseY);
  exit();
  return;
}

void main() {

  int a = 3;
  int b = 5;

  byte v = 127;

  System.out.println(suma(a, b));
  System.out.println(v);

  System.out.println(sqrt(25));
  System.out.println(pow(2, 8));
}


int suma(int a, int b) {
  return a + b;
}
