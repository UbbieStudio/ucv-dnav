void setup() {
  size(400, 400);
  main();
}

void draw() {
  exit();
  return;
}

void main() {
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
  println(students[rnd(students.length)]);
  

}

int rnd(int max) {
  return (int) Math.floor(Math.random() * max);
}



































int getRndInteger(int min, int max) {
  return (int) Math.floor(Math.random() * (max - min + 1) ) + min;
}
