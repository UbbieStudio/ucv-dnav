void setup() {
  size(400, 400);
  main();
}

void draw() {
  exit();
  return;
}

void main() {
  
  float x, x_0, v, t, t_0;
  
  x_0 = 0;
  t_0 = 0;
  t = 5;
  v = 10;
  
  getFinalPos(x_0, v, t, t_0);
  
  
  // Un cuerpo se mueve a 5m/s ¿cuánto tiempo tardará en recorrer un kilómetro?

  // Si un cuerpo que viaja a 30m/s ha recorrido 7km ¿cuánto tiempo ha estado moviéndose?
  
  // ¿Qué distancia recorrerá un cuerpo que se mueve a 10km/h en 5s?
}

float getStartPos(float x, float v, float t, float t_0) {
  return x - v * (t - t_0);
}

float getFinalPos(float x_0, float v, float t, float t_0) {
  return x_0 + v * (t - t_0);
}
