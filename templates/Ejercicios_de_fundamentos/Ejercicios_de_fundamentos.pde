void setup() {
  size(400, 400);
  main();
}

void draw() {
  exit();
  return;
}

/************************************************************/
/******** EJERCICIOS DE FUNDAMENTOS DE PROGRAMACIÓN *********/
/************************************************************/

void main() {
  /*                  VARIABLES Y OPERADORES                  */
  
  
  
  // 1- Declara 3 variables, 'a', 'b' y 'c'. Asigna a 'a' cualquier valor par mayor que 10, asigna a 'b' el valor '12' y haz que 'c' valga el producto de 'a' y 'b'. Por último, muestra el valor de las tres variables por consola.
  
  double a = 16;
  double b = 12;
  double c = a * b;
  println("A es igual a " + a + ", B es igual a " + b + " y C es igual a " + c);
  
  // 2- Reusando las dos primeras variables del ejercicio anterior, asígnales dos valores aleatorios (usando Math.random()), y haz que otra variable 'comp' sea el resultado de comparar si 'a' es mayor que 'b'. Por último, muestra el valor de las tres variables por consola.
  
  a = Math.random();
  b = Math.random();
  boolean comp = a > b;
  println("A es igual a " + a + ", B es igual a " + b + " y Comp es igual a " + comp);
  
  // 3- Declara una variable 'd', asígnale un valor de tipo String (cadena de texto) con cualquier palabra a tu elección. Usando la función '.length()' que tienen los Strings (al igual que los arrays) muestra por consola cuántas letras tiene la palabra que has elegido.
  
  String d = "Fórmula";
  println("La palabra " + d + " tiene " + d.length() + " letras.");
  
  // 4- Declara una variable 'e', asígnale un valor de tipo string (cadena de texto) distinto del asignado a 'd' en el ejercicio anterior. Por último, muestra por consola el resultado de concatenar 'd' y 'e' con un ';' entre ellos.
  
  String e = "Esternocleidomastoideo";
  println(d + ";" + e);
  
  
  
  /*                 ESTRUCTURAS CONDICIONALES                */
  
  
  // 5- Define dos variables, asígna a cada una un valor numérico a tu elección y escribe una estructura condicional que muestre por consola el mayor de ellos.
  
  int tres = 3;
  int dos = 2;
  
  if (tres > 2) {
    println(tres);
  }
  else {
    println(dos);
  }
  
  // 6- Usando las dos variables anteriores, escribe una estructura condicional que muestre por consola ambos valores ÚNICAMENTE si la primera es mayor o igual que la segunda.
  
  if (tres > dos) {
    println("La primera variable vale " + tres + " y la segunda vale " + dos);
  }
  
  // 7- Usando dos variables de tipo String (cadena de texto), con valores a tu elección, escribe una estructura condicional que muestre por consola el valor de la que sea más larga, y en el caso de que sean igual de largas, que muestre el texto "Ambas variables tienen la misma longitud".
  
  String f = "solecito";
  String g = "lunita";
  
  if (f.length() > g.length()) {
    println(f);
  }
  else if (f.length() == g.length()) {
    println("Ambas variables tienen la misma longitud");
  }
  else {
    println(g);
  }
  
  // 8- Declara una variable y asígnale un valor numérico aleatorio (usando Math.random()). A continuación, escribe una estructura condicional que nos diga por consola si el valor se encuentra en el primer cuartil (entre 0 y 0.25), en el segundo cuartil (entre 0.25 y 0.5), en el tercero (entre 0.5 y 0.75) o en el último (entre 0.75 y 1). Y por último, muestra por consola el valor de la variable.
  
  double h = Math.random();
  
  if (h <= 0.25) {
    println("H está en el primer cuartil");
  }
  else if (h <= 0.5) {
    println("H está en el segundo cuartil");
  }
  else if (h <= 0.75) {
    println("H está en el tercer cuartil");
  }
  else {
    println("H está en el cuarto cuartil");
  }
  
  println(h);
  
  
  /*                    BUCLES INDEXADOS (for)                */
  
  
  // 9- Escribe un bucle indexado que imprima por consola los números enteros entre 1 y 10 (ambos inclusive).
  
  for (int i = 1; i < 11; i++) {
    println(i);
  }
  
  int j = 1;
  while(j < 11) {
    println(j);
    j++;
  }
  
  // 10- Escribe un bucle indexado que imprima por consola los números enteros entre 10 y 0 (ambos inclusive).
  
  for(int i = 10; i >= 0; i--) {
    println(i);
  }
  
  // 11- Escribe un bucle indexado que imprima por consola los múltiplos de 3 entre 3 y 30 (ambos inclusive). No debes comprobar si son múltiplos o no, simplemente utiliza el índice de tu bucle, incrementándolo en 3 unidades tras cada iteración.
  
  for(int l = 1; l <= 10; l++) {
    println(l * 3);
  }
  
  // 12- Escribe una función, con el nombre que elijas, que reciba un argumento de tipo String y que muestre cada una de sus letras en líneas separadas. A continuación invócala varias veces con diferentes palabras para comprobar que funciona correctamente. Utiliza la función charAt(index) de los Strings para acceder a cada letra.
  
  String z = "ayuda";
  for(int x = 0; x < z.length(); x++) {
    println(z.charAt(x));
  }
  
  
  /*                 BUCLES NO INDEXADOS (while)              */
  
  
  // 13- Declara una variable llamada 'aleatoria', a continuación, escribe un bucle no indexado que vaya asignándole valores aleatorios mientras el valor obtenido sea menor que 0.9. Por último, muestra por consola el valor de la variable 'aleatoria'.
  
  double aleatoria = Math.random();
  while(aleatoria < 0.9) {
    aleatoria = Math.random();
  }
  println(aleatoria);
  
  
  /*                         FUNCIONES                        */
  
  
  // 14- Declara una función, con un nombre a tu elección, que reciba un parámetro de entrada y que lo imprima por consola. A continuación invoca tu función con el valor que tú quieras para comprobar que funciona.
  
  // 15- Declara una función, con un nombre a tu elección, que reciba dos parámetros de entrada, y que devuelva 1 si el primer parámetro es mayor que el segundo, 0 si son iguales, y -1 si el segundo es mayor que el primero. A continuación, invócala usando diferentes valores y muestra los resultados por consola para comprobar que funciona correctamente (la función en sí NO TIENE QUE MOSTRAR NADA POR CONSOLA).
  
  // 16- Declara una función que se llame 'esPar', que reciba un parámetro de entrada y que devuelva 'true' si el parámetro es un número par y 'false' en caso contrario. A continuación, invoca tú función varias veces usando diferentes valores y muestra los resultados por consola para comprobar que funciona correctamente.
  
  // 17- Declara una función que se llame 'esMultiplo', que reciba dos parámetros de entrada y que devuelva 'true' si el primer parámetro es divisible entre el segundo y 'false' en caso contrario. A continuación, invoca tú función varias veces usando diferentes valores y muestra los resultados por consola para comprobar que funciona correctamente.
  
  // 18- Escribe una función que realice la misma tarea que el ejercicio 13, pero que nos permita decidir el límite. A continuación, invoca tu función varias veces con límites 0.25, 0,7 y 0,9 e imprime por consola los valores que devuelve la función en cada caso.  
}
