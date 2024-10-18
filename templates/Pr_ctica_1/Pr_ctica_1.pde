import java.util.*;

void setup() {
  size(400, 400);
  main();
}

void draw() {
  exit();
  return;
}

/*
################################################
#                PRÁCTICA 1                    #
################################################
*/

void main() {
  /*
    0 (0 puntos)- Introduce tu nombre y apellidos en el siguiente vector (array) en lugar de los valores por defecto.
   */
  String[] nameparts = {"Nombre", "Primer apellido", "Segundo apellido"};
  
  
  
  String s = "Hola qué tal";
  String[]
  
  println(s.split(" "));



  /*
    1 (0.5 puntos)- Consulta la documentación de las clases Date de Java (https://www.w3schools.com/java/java_date.asp) y conociendo las diferentes clases y métodos (funciones)
   que nos ofrece, crea una variable llamada 'now' con la FECHA Y HORA local y muéstrala por consola (No olvides importar la clase al inicio de este documento).
   */



  /*
    2 (1 punto)- Utilizando la clase que nos ofrece Java para formatear fechas (también en la documentación), formatea la variable 'now' para que muestre tanto la fecha
   como la hora en formato numérico, empezando por la hora, en formato 24h (nada de AM, PM), separada por ':' (hora:minuto:segundo), siguiendo por un guión
   entre dos espacios (' - ') y terminando con la fecha separada por '/' (dia/mes/año). Guarda este valor en una variable de texto llamada 'formattedDateTime'
   y muéstrala por consola.
   */



  /*
    3 (2 puntos)- Utilizando el método (función) 'split()' de Java (https://www.w3schools.com/java/ref_string_split.asp), divide el valor de la variable 'formattedDateTime',
   creada en el ejercicio anterior en diferentes partes, y almacena por separado el valor numérico para cada campo (hora, minuto, segundo, día, mes y año).
   Es probable que tengas que utilizar la función split() varias veces. Para convertir tus textos en números enteros, puedes usar la función
   Integer.parseInt(myString).
   */

  String[] dateTimeParts;
  String[] timeParts;
  String[] dateParts;

  int hour = 0;
  int minute = 0;
  int second = 0;
  int day = 0;
  int month = 0;
  int year = 0;



  /*
    4 (0.5 puntos)- Utilizando el método (función) 'join()' de Java (https://www.w3schools.com/java/ref_string_join.asp), concatena los tres valores de nuestra
   variable 'nameparts' en una sola variable de texto llamada 'fullname', separados por espacios y muéstrala por consola.
   */
   
   String fullname = null;



  /*
    5 (1 puntos)- Utilizando la función 'random()' de la librería Math (https://www.w3schools.com/java/java_howto_random_number.asp) define una nueva función llamada
   'randomInt()' que devuelva un número entero aleatorio entre 0 y el límite que le pasemos como argumento de entrada - 1. Recuerda que las funciones/métodos
   han de definirse FUERA DEL MAIN. Invoca tu función tres veces y muestra el resultado por consola para comprobar que funciona.
   */



  /*
    6 (3 puntos)- Como ya sabemos, los vectores o arrays primitivos de Java tienen una serie de limitaciones, como que no pueden ser redimensionados, 
    para buscar elementos dentro de ellos tenemos que recorrerlos con un bucle, etc. Para paliar todos estos problemas, Java nos ofrece una clase llamada 
    ArrayList, que nos permite trabajar con listas de elementos de una manera más cómoda y sencilla, con multitud de métodos/funciones que nos agilizan 
    el trabajo. Podemos consultar la documentación aquí: https://www.w3schools.com/java/java_arraylist.asp .
   
    A continuación tenemos declarado un ArrayList de variables tipo String, llamado 'students' que almacena los nombres de todos los estudiantes de la clase 
    ordenados alfabéticamente.
   
    Haciendo uso de un bucle, y utilizando la función que hemos definido anteriormente, hemos de generar una lista de índices aleatorios (números desde 0 
    hasta el tamaño de nuestra lista - 1). Esto es, todos los números deben estar incluidos y ninguno debe repetirse. Para comprobar si un número ya está 
    en la lista, podemos utilizar la función 'contains()' de los ArrayList: https://www.w3schools.com/java/ref_arraylist_contains.asp.
   
    Hemos de almacenar los índices que vamos generando en nuestro ArrayList 'indices' que tenemos ya declarado. Cuando acabemos de generarlos todos, 
    mostramos 'indices' por consola para cerciorarnos de que todos los números están contemplados, y que ninguno se repite.
   
   */

  ArrayList<String> students = new ArrayList<String>(Arrays.asList(
    "AGUDELO URREGO, SEBASTIAN",
    "ARNAU MARTORELL, NICOLAS",
    "BERMÚDEZ CORTELL, IVAN MATIAS",
    "BOADELLA BERMUDEZ, LAURA",
    "CARRASCOSA BROTONS, IGNACIO",
    "CHACOPINO CAUDET, SUSANA",
    "ESPINÓS ALEGRE, LAURA",
    "FERRER PLAZA, HUGO",
    "GARCÍA PARDO, CLARA",
    "GRANERO CAMPILLO, MIREIA",
    "HECKLER HECKLER, ANGELO MICHAEL",
    "HERNÁNDEZ ARENAS, ANDREA",
    "LAJARA VILANA, JOSÉ MARÍA",
    "MIRALLES FERNÁNDEZ, ALONSO",
    "ORTEGA MONTOYA, SARA",
    "ORTOLA MORENO, DIANA",
    "PÉREZ CHAZARRA, DANIEL",
    "POSADA PATIÑO, JUAN PABLO",
    "SANCHIS VALLS, LUIS",
    "TATAY REVERT, JOSE",
    "VANEGAS RODRÍGUEZ, JUAN PABLO",
    "VIVES GIMENO, BELÉN"));

  ArrayList<Integer> indices = new ArrayList<Integer>();
  
  
  
  /*
    7 (1 punto)- Una vez tengamos todos los índices, hemos de declarar otro ArrayList llamado 'shuffledStudents' y rellenarlo con los nombres de los estudiantes ordenados de forma
   aleatoria (siguiendo los índices que hemos generado). Posteriormente, podemos crear un bucle que recorra nuestra nueva lista y muestre los nombres uno a uno 
   para comprobar que todo funciona correctamente y que, efectivamente, nuestra nueva lista contiene todos los estudiantes en orden aleatorio.
  */
  
  ArrayList<String> shuffledStudents = new ArrayList<String>();
  
  
  
  /*
    8 (0.5 puntos)- Teniendo nuestra lista de estudiantes ordenados de forma aleatoria, y usando de nuevo nuestra función para generar números aleatorios, elige un estudiante
    al azar de entre los cinco primeros y guárda su numbre en una variable de texto llamada 'upperStudent'. A continuación, muéstralo por consola para asegurarte
    de que está entre los cinco primeros de la lista.
  */
  
  String upperStudent = null;
  
  
  
  /*
    9 (0.5 puntos)- Haz lo mismo que en el ejercicio anterior, pero esta vez el estudiante debe encontrarse en los 5 últimos puestos de la lista. Guarda el nombre del estudiante
    en una variable de texto llamada 'bottomStudent'. Muéstrala también por consola para cerciorarte de que se encuentra en los 5 últimos puestos de la lista.
  */
  
  String bottomStudent = null;
  
  
  
  /*
    10 (0 puntos)- Llegados a este punto, cambia el valor de la variable 'finished' para limpiar la consola y que se muestren los resultados de tu práctica. 
    Descomenta también la línea dentro del primer bucle for. Aprovecha para revisar que todo está bien antes de entregarla. Si hay algún error, este es el 
    momento de volver atrás y corregirlo ¡Prohibido alterar ninguna línea más del código dentro del if!
  */
  
  boolean finished = false;
  
  if(finished) {
    ArrayList<Integer> rndNumbers = new ArrayList<Integer>();
    for(int i = 0; i < 10; i++) {
      //rndNumbers.add(randomInt(10) + 1);
    }
    println("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n");
    println("#########################################");
    println("#               RESULTS                 #");
    println("#########################################\n");
    println("Full name: " + fullname);
    println("Hour: " + hour + ", minute: " + minute + ", second: " + second + ", day: " + day + ", month: " + month + ", year: " + year);
    println("Ten random integers between 1 and 10 (both inclusive): " + rndNumbers);
    println("List of indices for shuffling student list: " + indices);
    println("\nShuffled student list:");
    for(int i = 0; i < shuffledStudents.size(); i++) {
      println(shuffledStudents.get(i));
    }
    println("\nUpper student: " + upperStudent);
    println("Bottom student: " + bottomStudent);
  }  
}
