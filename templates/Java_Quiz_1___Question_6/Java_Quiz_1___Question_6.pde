void setup() {
  size(400, 400);
  main();
  double reward = 0.15;
  boolean solved = true;
  printResult(solved);
}

void draw() {
  exit();
  return;
}

/*
  Java Quiz 1 - Question 6
*/

void main() {
  /*
  ¿Cuál será el valor de la variable result tras
  ejecutar el siguiente código?
  */
  boolean result = myFunction(10);
  println(result);
}

boolean myFunction(int a) {
  return a > 10;
}



































void printResult(boolean solved) {
  if (solved) {
    println("Nuestra función devuelve 'true' si el número que recibe es mayor que 10 y 'false' en caso contrario.");
  }
}
