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
  Estas dos variables definen el número de lados del dado a lanzar y el número de veces que hemos de lanzarlo
  */
  
  int ladosDado = 6;
  int numTiradas = 1000000;
  
  
  
  /**********************************************************************
    ¡¡¡NI UN ÁPICE DE CÓDIGO HA DE TOCARSE DENTRO DE ESTAS LÍNEAS!!!
  ***********************************************************************/
  int[] tiradas = lanzarDados(ladosDado, numTiradas);
  double[] histograma = recuentoTiradas(ladosDado, tiradas);
  double[] porcentajes = calcularPorcentajes(numTiradas, histograma);
  mostrarResultados(numTiradas, histograma, porcentajes);
  /**********************************************************************/
  
}

// Esta función lanza dados de tantos lados como le indiquemos 'n' veces y almacena el resultado en un array.
int[] lanzarDados(int lados, int n) {
  int[] tiradas = new int[n]; // La palabra clave 'new' CONSTRUYE un nuevo elemento del tipo indicado a continuación, en nuestro caso, un array de números enteros de 'n' dimensiones
  
  /*###########################################
  TU CÓDIGO HA DE IR AQUÍ ENTRE ESTAS LÍNEAS
  ############################################*/
  
  /*##########################################*/
  
  return tiradas;
}

// Esta función recoge el vector con todas las tiradas, crea otro de tantas dimensiones como lados tengan los dados, y recuenta cuántas veces ha ocurrido cada tirada
double[] recuentoTiradas(int lados, int[] tiradas) {
  double[] resultados = new double[lados];
  
  /*###########################################
  TU CÓDIGO HA DE IR AQUÍ ENTRE ESTAS LÍNEAS
  ############################################*/
  
  /*##########################################*/
  
  return resultados;
}

// Esta función recoge el histograma (recuento de tiradas) y calcula qué porcentaje del total de tiradas supone cada uno.
double[] calcularPorcentajes(int n, double[] histograma) {
  double[] porcentajes = new double[histograma.length];
  
  /*###########################################
  TU CÓDIGO HA DE IR AQUÍ ENTRE ESTAS LÍNEAS
  ############################################*/
  
  /*##########################################*/
  
  return porcentajes;
}

// Esta función realiza una tirada aleatoria entre 1 y el número de lados del dado
int dado(int lados) {
  return (int)((Math.floor(Math.random() * lados) + 1));
}

// Esta función simplemente muestra el resultado de ejecutar el programita de manera visual y agradable.
void mostrarResultados(int n, double[] hist, double[] perc) {
  
  println("Número de tiradas: " + n);
  
  String txt = "Número de ocurrencias (1-" + hist.length + "): [";
  for(int i = 0; i < hist.length; i++) {
    txt += (int)hist[i];
    if(i < hist.length - 1) {
      txt += ", ";
    }
  }
  txt += "]";
  println(txt);
  
  txt = "Porcentaje de ocurrencias (1-" + perc.length + "): [";
  for(int i = 0; i < perc.length; i++) {
    txt += perc[i];
    if(i < perc.length - 1) {
      txt += ", ";
    }
  }
  txt += "]";
  println(txt);
}
