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
  
  /* Escribe una función que recoja el resultado de timeElapsed y lo imprima "bonito", y muestre el tiempo transcurrido en segundos en lugar de milisegundos */
  
  /* Viendo lo que tarda de media tu código ¿se te ocurre alguna forma de optimizarlo para que sea más rápido? */
  
  long finish = System.currentTimeMillis();
  long timeElapsed = finish - start;
  println(timeElapsed);
}
