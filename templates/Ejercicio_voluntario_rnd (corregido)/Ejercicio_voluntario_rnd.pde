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
  int numTiradas = 1000;
  
  
  
  /**********************************************************************
    ¡¡¡NI UN ÁPICE DE CÓDIGO HA DE TOCARSE DENTRO DE ESTAS LÍNEAS!!!
  ***********************************************************************/
  int[] tiradas = lanzarDados(ladosDado, numTiradas);
  double[] histograma = recuentoTiradas(ladosDado, tiradas);
  double[] porcentajes = calcularPorcentajes(numTiradas, histograma);
  mostrarResultados(numTiradas, histograma, porcentajes);
  /**********************************************************************/
  
}

int[] lanzarDados(int lados, int n) {
  int[] tiradas = new int[n]; // La palabra clave 'new' CONSTRUYE un nuevo elemento del tipo indicado a continuación, en nuestro caso, un array de números enteros de 'n' dimensiones
  
  for(int i = 0; i < n; i++) {
    tiradas[i] = dado(lados);
  }
  
  return tiradas;
}

double[] recuentoTiradas(int lados, int[] tiradas) {
  double[] resultados = new double[lados];
  
  for(int i = 0; i < tiradas.length; i++) {
    resultados[tiradas[i] - 1]++;
  }
  
  return resultados;
}

double[] calcularPorcentajes(int n, double[] histograma) {
  double[] porcentajes = new double[histograma.length];
  
  for(int i = 0; i < histograma.length; i++) {
    porcentajes[i] = histograma[i] * 100 / n;
  }
  
  return porcentajes;
}

int dado(int lados) {
  return (int)((Math.floor(Math.random() * lados) + 1));
}

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
