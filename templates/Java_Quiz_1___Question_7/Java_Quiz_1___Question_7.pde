void setup() {
  size(400, 400);
  main();
  double reward = 0.2;
  boolean solved = false;
  printResult(solved);
}

void draw() {
  exit();
  return;
}

/*
  Java Quiz 1 - Question 7
*/

void main() {
  /*
  ¿Cuál será el valor de la variable result tras
  ejecutar el siguiente código?
  */
  int result = myFunction(3, 7);
  println(result);
}

int myFunction(int a, int b) {
  if (a > b) {
    return 1;
  }
  else if (a < b) {
    return -1;
  }
  else {
    return 0;
  }
}



































void printResult(boolean solved) {
  if (solved) {
    println("Nuestra función devuelve ");
  }
}
