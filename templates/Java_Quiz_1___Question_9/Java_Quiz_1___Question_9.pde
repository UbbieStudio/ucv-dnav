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
  Java Quiz 1 - Question 9
*/

void main() {
  /*
  ¿Qué valor le darías a la variable 'x' para que 'result' acabe valiendo "Bingo!"?
  */
  int x = 5; // Valor a cambiar
  int y = 3;
  int z = 5;
  String result;
  
  int product = x * y;
  
  if (product % z != 0) {
    if (x > 5) {
      result = "-1";
    }
    else {
      result = "0";
    }
  }
  else {
    if (x > 5) {
      result = "-1";
    }
    else {
      result = "Bingo!";
    }
  }
  
  println(result);
}





































void printResult(boolean solved) {
  if (solved) {
    println("El condicional (if) principal, comprueba si el producto de 'x' e 'y' es divisible entre 'z', en caso negativo, si 'x' es mayor que 5 asignará el valor -1 al resultado, y el valor 0 si es menor o igual.\n\nEn caso de que SÍ sea divisible, se asigna el valor -1 en caso de que 'x' sea mayor que 5, y 'Bingo!' si es menor o igual. La respuesta, pues, es que 'x' debe valer 5, de esa forma 5 * 3 = 15, que es divisible entre 5, y además 'x' es igual a 5, entrando en el último de los casos y obteniendo el resultado esperado: Bingo!");
  }
}
