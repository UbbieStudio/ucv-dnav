void setup() {
  size(400, 400);
  main();
  double reward = 0.1;
  boolean solved = true;
  printResult(solved);
}

void draw() {
  exit();
  return;
}

/*
  Java Quiz 1 - Question 2
*/

void main() {
  /*
  ¿Cuál será el valor de la variable result tras
  ejecutar el siguiente código?
  */
  double result = myFunction(5, 2);
  println(result);
}

double myFunction(int a, int b) {
  return Math.pow(a, b);
}



































void printResult(boolean solved) {
  if (solved) {
    println("La variable 'result' vale: 25. Con la función pow() de la clase Math, estamos elevando 'a' a la potencia de 'b', en nuestro caso 5^2. Por tanto, 25.");
  }
}
