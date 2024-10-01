void setup() {
  size(400, 400);
  main();
  double reward = 0.1;
  boolean solved = false;
  printResult(solved);
}

void draw() {
  exit();
  return;
}

/*
  Java Quiz 1 - Question 1
*/

void main() {
  /*
  ¿Cuál será el valor de la variable result tras
  ejecutar el siguiente código?
  */
  int result = myFunction(5, 3);
  println(result);
}

int myFunction(int a, int b) {
  return a % b;
}



































void printResult(boolean solved) {
  if (solved) {
    println("La variable 'result' vale: 2. Con el operador resto (%), estamos comprobando si el resto de dividir el primer número entre el segundo es igual a 0. De ser así, el primer número será divisible entre el primero y nuestra función devolverá 'true'. En caso contrario, al no ser divisible, devolverá 'false'");
  }
}
