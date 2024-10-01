void setup() {
  size(400, 400);
  main();
  double reward = 0.25;
  boolean solved = false;
  printResult(solved);
}

void draw() {
  exit();
  return;
}

/*
  Java Quiz 1 - Question 8
*/

void main() {
  /*
  ¿Cuál será el valor de la variable result tras
  ejecutar el siguiente código?
  */
  double result = myFunction(5, 2);
  println(result);
}

double myFunction(double x, double y) {
  if (Math.pow(x, y) % 2 == 0) {
    return customFunction1(x, y);
  }
  else {
    return customFunction2(y);
  }
}

double customFunction1(double x, double y) {
  return Math.pow(x, y);
}

double customFunction2(double x) {
  return Math.pow(x, x);
}



































void printResult(boolean solved) {
  if (solved) {
    println("Nuestra función invoca a customFunction1 si el primer número elevado al segundo da un número par y a customFunction2 en caso contrario. Como 5² es igual a 25, invocaremos a customFunction2, pero CUIDADO, la variable que le pasamos es 'y', así que customFunction2 nos devolverá 2², es decir, 4.");
  }
}
