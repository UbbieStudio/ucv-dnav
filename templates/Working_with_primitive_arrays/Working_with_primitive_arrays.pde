void setup() {
  size(400, 400);
  main();
}

void draw() {
  exit();
  return;
}

void main() {
  double[] myArray = new double[10];
  int[] myIntArray = new int[10];
  String[] myStringArray = new String[10];
  
  //println(myStringArray);
  
  myStringArray[8] = "Hola";
  //println(myStringArray);
  
  for(int i = 0; i < myStringArray.length; i++) {
    //println(i);
    myStringArray[i] = String.valueOf(i);
  }
  
  println(myStringArray);
  
}





// Dentro del main!!!!
int[] indices = new int[1];
indices = miFuncion(indices, 4);

/* Define una función que reciba un vector de tamaño x (el que sea) y un valor, y devuelva UN NUEVO vector
de tamaño x+1 incluyendo el nuevo valor al final
*/
int[] miFuncion(int[] old, int value) {
  int[] nuevo = new int[old.length + 1];
  
  ...
  
  return nuevo;
}
