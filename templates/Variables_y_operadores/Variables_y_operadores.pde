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
      VARIABLES
      --------------------
      * Las variables son entidades en las que podemos almacenar valores con los
      que trabajaremos después. En el momento declaramos una variable, se reserva
      el espacio en memoria necesario para almacenar su valor. Asignamos valores
      a nuestras variables usando el operador de asignación (=). Podemos declarar
      variables y darles valor más adelante.
  */
  
  int a;  // Declaración de variable (sin inicializar con ningún valor)
  a = 13; // Asignación de valor a nuestra variable
  
  println(a);
  
  a = 2;  // Podemos reasignar el valor de nuestra variable en cualquier momento, descartando cualquier valor anterior que tuviese
  println(a);
  
  int b = 7; // Declaración de variable e inicialización en la misma línea
  println(b);
  
  /*
    * Nótese que el tipo de variable, sólo se especifica al declararla. Luego
    simplemente la usamos por su nombre, sin especificar tipo. NO PUEDE HABER
    NUNCA DOS VARIABLES CON EL MISMO NOMBRE, aunque no sean del mismo tipo.
  */
  

  
  
  
  
  /*
      TIPOS DE VARIABLES
      ----------------------
      * Las variables pueden almacenar valores de diferentes tipos, que necesitamos
      especificar en el momento de la declaración de la variable. Estos tipos incluyen:
  */
  
  // Booleanos (true o false)
  boolean booleanVariable = true;
  println("Esto es una variable de tipo boolean: " + booleanVariable);
  
  // Bytes (secuencias de 8 bits), se traducen como números comprendidos entre -127 y +127
  byte byteVariable = 127;
  println("Esto es una variable de tipo byte: " + byteVariable);
  
  // Números enteros
  int integerVariable = 3435;
  long longVariable = 343242352; // Las variables long son números enteros, pero tienen más rango de valores
  println("Esto es una variable de tipo int: " + integerVariable + ", y esta de tipo long: " + longVariable);
  
  // Números reales
  float floatVariable = 3.1415;
  double doubleVariable = 7898.34324; // Las variables double son como los floats, pero con más rango de valores
  println("Esto es una variable de tipo float: " + floatVariable + ", y esta de tipo double: " + doubleVariable);
  
  // Caracteres: valores numéricos que representan letras y símbolos de acuerdo a la tabla ASCII (https://www.asciitable.com/)
  char character1 = '@'; // Los caracteres siempre se escriben entre comillas simples ''
  char character2 = 97;
  println("Esto es una variable de tipo char: " + character1 + ", y esto otra (definida como un número): " + character2);
  
  // Cadenas de texto (String): no es un tipo primitivo de Java, sino una clase, pero se usa muy a menudo
  String stringVariable = "Esto es un texto";
  println("Esto es una variable de tipo String: " + stringVariable);
  
  // Vectores (arrays): son variables que almacenan más de un valor. Se crean con la palabra clave 'new' y tienen un tamaño
  // fijo que definimos al crear el vector. Los vectores pueden ser de cualquier tipo.
  byte[] byteArray = new byte[7];       // Vector de bytes de tamaño 7
  int[] intArray = new int[3];          // Vector de enteros de tamaño 3
  double[] doubleArray = new double[5]; // Vector de números reales de tamaño 5
  char[] charArray = new char[10];      // Vector de caracteres de tamaño 10
  String[] stringArray = new String[4]; // Vector de cadenas de texto de tamaño 4
  
  // Para trabajar con cada posición de nuestros vectores utilizamos índices entre []. Los índices siempre empiezan por 0
  // y llegan hasta el tamaño del vector - 1. Podemos saber la longitud del vector usando la propiedad '.length'.
  stringArray[0] = "Hola"; // Asignación del valor "Hola" a la primera posición del vector de Strings
  stringArray[stringArray.length - 1] = "Adiós"; // Asignación del valor "Adiós" a la última posición del vector
  
  // Generalmente, para recorrer todas las posiciones de un vector utilizamos bucles indexados. Sirviendo el índice del bucle
  // como índice para ir accediendo a cada una de las posiciones en cada iteración.
  for(int i = 0; i < stringArray.length; i++) {
    println(stringArray[i]);
  }
  
  
  
  
  
  /*
    OPERADORES ARITMÉTICOS
    ----------------------
    * Los operadores de tipo aritmético se utilizan para realizar operaciones matemáticas con 
    variables numéricas (y para concatenar Strings en el caso del +).
  */
  
  // Operador suma (+)
  println("El resultado de sumar 7 y 5 es: " + (7 + 5));
  
  // Operador resta (-)
  println("El resultado de restar 7 y 5 es: " + (7 - 5));
    
  // Operador producto (*)
  println("El resultado de multiplicar 7 y 5 es: " + (7 * 5));
  
  // Operador cociente (/)
  println("El resultado de dividir 7 entre 5 es: " + (7 / 5));
  println("Si queremos que el resultado de la división sea un número real, hemos de usar al menos un número real: " + (7 / 5.0));
  
  // Operador resto (%)
  println("El resto de dividir 7 entre 5 es: " + (7 % 5));
  
  // Para usar potencias o raíces cuadradas nos apoyamos en la clase Math:
  println("El resultado de elevar 7 a la 5ª potencia es: " + Math.pow(7, 5));
  println("La raíz cuadrada de 121 es: " + Math.sqrt(121));
  
  // Otras funciones útiles de la clase Math son las de redondeo
  println("La función round() redondea al número más cercano: " + Math.round(7.5) + " --- " + Math.round(7.49));
  println("La función floor() diezma, redondeando al número inferior SIEMPRE: " + Math.floor(7.995));
  println("La función ceil() redondea al número superior SIEMPRE: " + Math.ceil(7.005));
  
  
  
  
  /*
    OPERADORES RELACIONALES
    ----------------------
    * Los operadores de tipo relacional se utilizan para realizar comparaciones. Siempre se evalúan y devuelven
    un valor booleano (true o false). SIEMPRE.
  */
  
  // Operadores 'menor/mayor que'
  println("El operador 'menor que' sólo devuelve 'true' si el primer operando es estrictamente menor que el segundo: " + (7 < 7));
  println("El operador 'menor o igual que' devuelve 'true' si el primer operando es menor que el segundo o si son iguales: " + (7 <= 7));
  println("El operador 'mayor que' sólo devuelve 'true' si el primer operando es estrictamente mayor que el segundo: " + (7 > 7));
  println("El operador 'mayor o igual que' devuelve 'true' si el primer operando es mayor que el segundo o si son iguales: " + (7 >= 7));
  
  // Operadores de igualdad/desigualdad
  println("Para comprobar si dos valores son iguales utilizamos el comparador de igualdad (==): " + (7 == 7));
  println("Para comprobar si dos valores son diferentes utilizamos el comparador de desigualdad (!=): " + (7 != 7));




  /*
    OPERADORES LÓGICOS
    ----------------------
    * Los operadores de tipo lógico se utilizan para encadenar comparaciones o para invertir valores booleanos. 
    Siempre se evalúan y devuelven un valor booleano (true o false). SIEMPRE.
  */
  
  // El operador AND (&&), o multiplicación lógica, sólo devuelve 'true' si ambas condiciones son ciertas,
  // en caso de que sólo una, o ninguna, se cumpla, devuelve 'false'
  println("¿El número 5 es mayor que 0 y menor que 10? --> " + (5 > 0 && 5 < 10));
  
  // El operador OR (||), o suma lógica, sólo devuelve 'false' si ambas condiciones son falsas, en caso de que
  // cualquiera de ellas, o ambas, sean ciertas, devuelve 'true'
  println("¿El número 5 es menor que 0 o mayor que 10? ---> " + (5 < 0 || 5 > 10));
  
  // El operador NOT (!), o negación lógica, invierte cualquier valor booleano, convirtiendo 'true' a 'false' y viceversa
  println("Esto es un valor 'true' negado: " + (!true));
  
  
  
  /*
    * Los operadores relacionales y lógicos son fundamentales para las sentencias condicionales (if), y como condición
    de finalización de cualquier tipo de bucle
  */
}
