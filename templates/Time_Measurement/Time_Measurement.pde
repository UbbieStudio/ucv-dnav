void setup() {
  size(400, 400);
  main();
}

void draw() {
  exit();
  return;
}

void main() {
  long start = System.currentTimeMillis();
  
  String[] students = {"SEBASTIAN AGUDELO URREGO",
                      "NICOLAS ARNAU MARTORELL",
                      "IVAN MATIAS BERMÚDEZ CORTELL",
                      "LAURA BOADELLA BERMUDEZ",
                      "IGNACIO CARRASCOSA BROTONS",
                      "SUSANA CHACOPINO CAUDET",
                      "LAURA ESPINÓS ALEGRE",
                      "HUGO FERRER PLAZA",
                      "CLARA GARCÍA PARDO",
                      "MIREIA GRANERO CAMPILLO",
                      "ANGELO MICHAEL HECKLER HECKLER",
                      "ANDREA HERNÁNDEZ ARENAS",
                      "JOSÉ MARÍA LAJARA VILANA",
                      "ALONSO MIRALLES FERNÁNDEZ",
                      "SARA ORTEGA MONTOYA",
                      "DIANA ORTOLA MORENO",
                      "DANIEL PÉREZ CHAZARRA",
                      "JUAN PABLO POSADA PATIÑO",
                      "LUIS SANCHIS VALLS",
                      "JOSE TATAY REVERT",
                      "JUAN PABLO VANEGAS RODRÍGUEZ",
                      "BELÉN VIVES GIMENO"};
                      
  /* Escribe tu propio código que ordene el array de estudiantes de manera aleatoria. Finalmente, comprueba que todos los estudiantes están en el nuevo array y que ningún nombre se repite */
  
  String[] shuffledList = new String[students.length];
  int[] indices = new int[students.length];
  for(int i = 0; i < students.length; i++) {
    indices[i] = -1;
  }
  
  int i = 0;
  int rand;
  boolean found;
  while(i < students.length) {
    rand = (int) Math.floor(Math.random() * students.length);
    
    found = false;
    for(int j = 0; j < students.length; j++) {
      if(indices[j] == rand) {
        found = true;
        break;
      }
    }
    if(!found) {
      indices[i] = rand;
      shuffledList[i] = students[rand];
      println(shuffledList[i]);
      i++;
    }
  }
  
  /* Escribe una función que recoja el resultado de timeElapsed y lo imprima "bonito", y muestre el tiempo transcurrido en segundos en lugar de milisegundos */
  
  /* Viendo lo que tarda de media tu código ¿se te ocurre alguna forma de optimizarlo para que sea más rápido? */
  
  printTimeElapsed(System.currentTimeMillis() - start);
}

void printTimeElapsed(long t) {
  println(t/1000.0 + " seconds");
}
