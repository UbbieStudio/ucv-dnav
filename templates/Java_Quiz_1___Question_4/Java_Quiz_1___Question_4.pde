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
  Java Quiz 1 - Question 4
*/

void main() {
  /*
  ¿Cuál será el valor de la variable result tras
  ejecutar el siguiente código?
  */
  boolean result = myFunction(17, 4);
  println(result);
}

boolean myFunction(int a, int b) {
  if (a % b == 0) {
    return true;
  }
  else {
    return false;
  }
}



































void printResult(boolean solved) {
  if (solved) {
    println("Nuestra función devuelve 'true' si el primer número es divisible entre el segundo, y false en caso contrario.");
  }
}
