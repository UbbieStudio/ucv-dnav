void setup() {
  size(400, 400);
  main();
}

void draw() {
  exit();
  return;
}

void main() {
  /*
      SENTENCIAS
      -----------------
      * Las sentencias son líneas de código con instrucciones a ejecutar, y SIEMPRE deben terminarse con un ';'. 
      Esto le indica a la máquina que esa sentencia ha terminado y tiene que seguir evaluando las siguientes. 
      A continuación podemos ver varios ejemplos de sentencias (declaraciones de variables, asignaciones de valores, 
      operaciones matemáticas o lógicas, llamadas a funciones, etc).
  */
  
  int a;
  a = 15;
  String b = "Hola mundo";
  println(b);
  println(a >= 14);
  double c = a * 72 / 4;
  
  /*
      ESTRUCTURAS
      -----------------
      * Las estructuras son mecanismos nativos del lenguaje para ejecutar cierto código de una manera determinada. 
      Esto incluye funciones, condicionales y bucles (hay más, pero escapan al alcance del temario por el momento).
      * Las estructuras SIEMPRE tienen estos elementos en común: tipo de variable que han de devolver, o void si no
      han de devolver nada, palabra clave que las identifica, paréntesis (), y llaves {} en las que incluimos todo 
      el código que tiene que ver con la estructura. A continuación podemos ver ejemplos de estructuras (en pseudo-código) 
      que detallaremos más adelante (los dejo comentados por si queréis ejecutar el script).
      * Las funciones incorporan una parte que el resto de estructuras no tiene: el nombre. El nombre de cada función 
      lo decide quien la escribe, asegurándonos de que no empieza por _ ni símbolos extraños, ni por números, 
      ni por una letra mayúscula (la primera letra mayúscula se reserva para las 'clases').
  */
  
  // void myFunction() {}
  // if (condition) {}
  // for (initialization; condition; increment) {}
  // while (condition) {} 
  
  /*
      ESTRUCTURA IF (condicional)
      --------------------------------
      * Los 'if' son estructuras condicionales, que decidirán si el código que contienen ha de ejecutarse o no, dependiendo de una condición.
      * La condición siempre debe ubicarse dentro del paréntesis del if, y debe ser una expresión que arroje como resultado un valor 
      booleano/binario: true o false. En caso de evaluarse como true, el código contenido entre las llaves se ejecutará, en caso contrario, se ignorará por completo.
  */
  
  if (true) {
    println("Este código se ejecutará");
  }
  
  if (false) {
    println("Este código NO se ejecutará");
  }
  
  /*
      * La estructura 'if' puede incluir también una cláusula (opcional) llamada 'else', que será el código a ejecutar alternativamente, 
      si la condición entre los paréntesis del 'if' no se cumple.
  */
  
  if (false) {
    println("Este código NO se ejecutará");
  }
  else {
    println("En cambio, este código sí");
  }
  
  /*
      * Aparte de las fórmulas 'if' y 'else' podemos incluir cláusulas intermedias 'else if', si las comprobaciones que estamos haciendo 
    admiten más de dos casos. En el momento en el que la condición entre los paréntesis de un 'if' o 'if else' se cumpla, se ejecuta el 
  código incluido entre sus llaves {} y cualquier caso posterior directamente se ignora, no llega ni a evaluarse.
  */
  
  int x = 5;
  if (x > 10) {
    println("La variable x es mayor que diez");
  }
  else if (x > 5) {
    println("La variable x es mayor que cinco");
  }
  else if (x > 0) {
    println("La variable x es mayor que cero"); // Esta será la línea que se ejecuta
  }
  else if (x % 2 != 0) {
    println("La variable x es impar"); // Esta línea NO se ejecutará. Aún siendo cierta la condición, como la comprobación anterior resultó ser cierta antes, estas condiciones subsiguientes ni siquiera se evalúan.
  }
  else {
    println("Ninguna condición se ha cumplido"); // Esta línea TAMPOCO se ejecutará
  }
  
  /*
      ESTRUCTURA FOR (bucle)
      --------------------------------
      * El bucle 'for' se caracteriza por tener un número de iteraciones (o repeticiones) determinadas.
      * Las condiciones en las que ha de ejecutarse el bucle se definen dentro del paréntesis, y siempre incluyen tres partes: inicialización 
      de la variable índice, condición que debe cumplirse para que el bucle siga ejecutándose y por último, incremento/decremento que queremos 
      aplicar a la variable índice tras cada iteración/repetición.
      * Estos tres campos estarán siempre separados por ';'.
      * El código a ejecutar en cada una de las iteraciones/repeticiones, es el código incluido entre las llaves de nuestro bucle {}.
  */
  
  /* Este código imprimirá por consola valores para 'i' comprendidos entre 0 y 24, porque hemos definido que empiece en cero, se ejecute 
  mientras 'i' sea menor que 25, e 'i' irá incrementándose en cada iteración en una unidad. Así que la última ejecución ocurrirá cuando 
  'i' valga 24, y en el momento vaya a volver a empezar, valiendo 'i' 25, se detendrá la ejecución del bucle, porque la condición habrá dejado de cumplirse. */
  for (int i = 0; i < 25; i++) {
    println("El valor de 'i' en esta iteración/repetición es " + i);
  }
  
  // En este otro ejemplo, el bucle empezará por 89, e irá mostrando el resto de números impares mayores que cero, en orden descendente.
  for (int i = 89; i > 0; i -= 2) {
    println("El valor de 'i' en esta iteración/repetición es " + i);
  }
  
  /*
      ESTRUCTURA WHILE (bucle)
      --------------------------------
      * El bucle 'while' se caracteriza por NO tener un número de iteraciones (o repeticiones) determinadas. No sabemos a priori cuándo terminará de repetirse.
      * La/s condición/es en la/s que ha de ejecutarse el bucle se define/n dentro del paréntesis.
      * El código a ejecutar en cada una de las iteraciones/repeticiones, es el código incluido entre las llaves de nuestro bucle {}.
  */
  
  // En este ejemplo, en cada iteración/repetición del bucle, incrementamos 'y' en 1, y decrementamos 'x' en 1. Como la condición es que 'x' sea mayor o igual que 'y' en el momento en que 'x' valga menos que 5 e 'y' valga más que 5, la condición dejará de cumplirse y el bucle terminará
  x = 10;
  int y = 0;
  while (x >= y) {
    println("La variable 'x' vale " + x + " y la variable 'y' vale " + y);
    x--; // Esta instrucción decrementa 'x' en 1 en cada repetición
    y++; // Esta instrucción incrementa 'y' en 1 en cada repetición
  }
  

  
  println(unaFuncionCualquiera(2, 3));
  
  /*
      * Existen funciones predefinidas, que otros programadores muy amables, han incluido en el lenguaje para que podamos usar a nuestro antojo, como las existentes en la clase Array (https://www.w3schools.com/js/js_arrays.asp) o en la clase Math (https://www.w3schools.com/js/js_math.asp) y otras que veremos más adelante. O sin ir más lejos, el propio println() que utilizamos constantemente para imprimir valores por consola.
  */
}

/*
    ESTRUCTURA FUNCTION (función)
    --------------------------------
    * Las funciones son estructuras especiales, que engloban código que podemos invocar A VOLUNTAD cuando lo necesitemos, y tantas veces como queramos. Esto nos ahorra repetir líneas de código que tengamos que ejecutar en diferentes lugares de nuestro código.
    * Declarar/definir una función no ejecuta el código que contienen, han de ser invocadas para que esto ocurra.
    * Las funciones son la única estructura (dentro del alcance que nos compete) que necesitan un nombre.
    * Las variables con las que han de trabajar (indefinidas a priori) se determinan entre sus paréntesis. Pueden no requerir ninguna, como en el caso de Math.random(), pero incluso entonces, HEMOS DE ESCRIBIR LOS PARÉNTESIS, aunque estén vacíos.
    * En caso de tener que devolver algún resultado, lo haremos mediante la palabra clave 'return'.
*/

int unaFuncionCualquiera(int entrada1, int entrada2) {
  return entrada1 + entrada2;
}
