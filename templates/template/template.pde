import java.util.Random;

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
  
  double array[] = {1, 4, 7};
  double matrix[][] = {{1, 4, 7}, {6, 9, 13}};

  println(suma(a, b));
  println(v);

  println(sqrt(25));
  println(pow(2, 8));
  println(random(1));
  
  println(array.length);
  println(matrix.length);
  println(array);
  println(Math.PI);
  
  Random rand = new Random();
  println(rand.nextInt(10));
  println(rand.nextDouble());
  println(Math.random());
  
  println(str(3.15));
}

int suma(int a, int b) {
  return a + b;
}
