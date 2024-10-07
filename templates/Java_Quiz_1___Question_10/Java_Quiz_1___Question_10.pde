void setup() {
  size(400, 400);
  main();
  double reward = 0.25;
  boolean solved = true;
  printResult(solved);
}

void draw() {
  exit();
  return;
}

/*
  Java Quiz 1 - Question 10
*/

void main() {
  /*
  ¿Cuál será el valor de la variable 'result' tras ejecutar el siguiente código?
  */
  double result = myFunction(8, 9);
  println(result);
}

double myFunction(int x, int y) {
  if (x >= 10) {
    if (x % 2 == 0) {
      return 0;
    }
    else {
      return 1;
    }
  }
  else {
    return Math.sqrt(y);
  }
}







































void printResult(boolean solved) {
  if (solved) {
    println("Nuestra función devuelve 0 si la primera variable es mayor o igual que 10 y es par, y 1 si es impar. En caso de que sea menor que 10, devuelve la raiz cuadrada de la segunda variable. En nuestro caso: 3.");
  }
}
