void setup() {
  size(400, 400);
  main();
}

void draw() {
  exit();
  return;
}

void main() {
  // Define una función que reciba un String y devuelva su longitud
  println(longitud("Hola mundo"));
  
}

int longitud(String s) {
  int l = s.length();
  return l;
}
