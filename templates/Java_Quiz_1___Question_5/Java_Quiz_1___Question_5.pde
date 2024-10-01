void setup() {
  size(400, 400);
  main();
  double reward = 0.15;
  boolean solved = false;
  printResult(solved);
}

void draw() {
  exit();
  return;
}

/*
  Java Quiz 1 - Question 5
*/

void main() {
  /*
  ¿Cuál será el valor de la variable result tras
  ejecutar el siguiente código?
  */
  int result = myFunction(7);
  println(result);
}

int myFunction(int a) {
  if (a % 2 == 0) {
    return a;
  }
  else {
    return a - 1;
  }
}



































void printResult(boolean solved) {
  if (solved) {
    println("Nuestra función devuelve el número que le pasamos si este es par, y el número menos 1 si es impar.");
  }
}
