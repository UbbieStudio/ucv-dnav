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
  Java Quiz 1 - Question 3
*/

void main() {
  /*
  ¿Cuál será el valor de la variable result tras
  ejecutar el siguiente código?
  */
  String result = myFunction("Rojo", "Verde", "Azul");
  println(result);
}

String myFunction(String a, String b, String c) {
  return c + ", " + b + " y " + a;
}



































void printResult(boolean solved) {
  if (solved) {
    println("Nuestra función concatena los textos que le pasemos en una frase, pero OJO, primero concatena el último, luego el segundo y por último el primero, es decir, invierte el orden en que se los pasamos.");
  }
}
