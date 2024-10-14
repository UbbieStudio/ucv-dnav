import java.util.*;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

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
    0- Introduce tu nombre y apellidos en el siguiente vector (array) en lugar de los valores por defecto.
  */
  String[] nameparts = {"Nombre", "Primer apellido", "Segundo apellido"};
  
  
  
  /*
    1- Consulta la documentación de la clases Date de Java (https://www.w3schools.com/java/java_date.asp) y conociendo las diferentes clases y métodos (funciones)
    que nos ofrece, crea una variable llamada 'now' con la FECHA Y HORA local y muéstrala por consola (No olvides importar la clase al inicio de este documento).
  */
  
  LocalDateTime now = LocalDateTime.now();
  println(now);
  
  
  
  /*
    2- Utilizando la clase que nos ofrece Java para formatear fechas (también en la documentación), formatea la variable 'now' para que muestre tanto la fecha
    como la hora en formato numérico, empezando por la hora, en formato 24h (nada de AM, PM), separada por ':' (hora:minuto:segundo), siguiendo por un guión 
    entre dos espacios (' - ') y terminando con la fecha separada por '/' (dia/mes/año). Guarda este valor en una variable de texto llamada 'formattedDateTime'
    y muéstrala por consola.
  */
  
  DateTimeFormatter formatter = DateTimeFormatter.ofPattern("HH:mm:ss - dd/MM/yyyy");
  String formattedDateTime = formatter.format(now);
  println(formattedDateTime);
  
  
  
  /*
    3- Utilizando el método (función) 'split()' de Java (https://www.w3schools.com/java/ref_string_split.asp), divide el valor de la variable 'formattedDateTime',
    creada en el ejercicio anterior en diferentes partes, y almacena por separado el valor numérico para cada campo (hora, minuto, segundo, día, mes y año).
    Es probable que tengas que utilizar la función split() varias veces. Para convertir tus textos en números enteros, puedes usar la función 
    Integer.parseInt(myString).
  */
  
  String[] dateTimeParts = formattedDateTime.split(" - ");
  String[] timeParts = dateTimeParts[0].split(":");
  String[] dateParts = dateTimeParts[1].split("/");
  
  int hour = Integer.parseInt(timeParts[0]);
  int minute = Integer.parseInt(timeParts[1]);
  int second = Integer.parseInt(timeParts[2]);
  int day = Integer.parseInt(dateParts[0]);
  int month = Integer.parseInt(dateParts[1]);
  int year = Integer.parseInt(dateParts[2]);
  
  println("Hour: " + hour + ", minute: " + minute + ", second: " + second + ", day: " + day + ", month: " + month + ", year: " + year);
  
  
  
  /*
    4- Utilizando el método (función) 'join()' de Java (https://www.w3schools.com/java/ref_string_join.asp), concatena los tres valores de nuestra
    variable 'nameparts' en una sola variable de texto llamada 'fullname', separados por espacios y muéstrala por consola.
  */
  
  String fullname = String.join(" ", nameparts);
  println(fullname);
  
  
  
  /*
    5- Utilizando la función 'random()' de la librería Math (https://www.w3schools.com/java/java_howto_random_number.asp) define una nueva función llamada
    'randomInt()' que devuelva un número entero aleatorio entre 0 y el límite que le pasemos como argumento de entrada - 1. Recuerda que las funciones/métodos
    han de definirse FUERA DEL MAIN. Invoca tu función tres veces y muestra el resultado por consola para comprobar que funciona.
  */
  
  println(randomInt(5));
  println(randomInt(5));
  println(randomInt(5));
  
  
  
  /*
    6- Como ya sabemos, los vectores o arrays primitivos de Java tienen una serie de limitaciones, como que no pueden ser redimensionados, para buscar elementos
    dentro de ellos tenemos que recorrerlos con un bucle, etc. Para paliar todos estos problemas, Java nos ofrece una clase llamada ArrayList, que nos permite
    trabajar con listas de elementos de una manera más cómoda y sencilla, con multitud de métodos/funciones que nos agilizan el trabajo. Podemos consultar la
    documentación aquí: https://www.w3schools.com/java/java_arraylist.asp.
    
    A continuación tenemos declarado un ArrayList de variables tipo String, que almacena los nombres de todos los estudiantes de la clase, ordenados alfabéticamente.
    Utilizando la función que hemos definido anteriormente, hemos de generar una lista de índices (números del 0 al tamaño de nuestra lista - 1) aleatorios. Esto es,
    todos los números deben estar incluidos y ninguno debe repetirse. Para comprobar si un número ya está en la lista, podemos utilizar la función 'contains()' de los
    ArrayList: https://www.w3schools.com/java/ref_arraylist_contains.asp.
    
    Una vez tengamos todos los índices, hemos de declarar otro ArrayList llamado 'shuffledList' y rellenarlo con los nombres de los estudiantes ordenados de forma
    aleatoria (siguiendo los índices que hemos generado). Podemos crear un bucle que recorra nuestra nueva lista y muestre los nombres uno a uno para comprobar que
    todo funciona correctamente.
  */
  
  ArrayList<String> students = new ArrayList<String>(
            Arrays.asList("AGUDELO URREGO, SEBASTIAN",
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
  
  int rnd;
  while(indices.size() < students.size()) {
    rnd = randomInt(students.size());
    if(!indices.contains(rnd)) {
      indices.add(rnd);
    }
  }
  
  ArrayList<String> shuffledStudents = new ArrayList<String>();
  for(int i = 0; i < indices.size(); i++) {
    shuffledStudents.add(students.get(indices.get(i)));
    println(shuffledStudents.get(shuffledStudents.size() - 1));
  }

}

int randomInt(int limit) {
  return (int)(Math.random() * limit);
}
