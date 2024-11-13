import java.util.ArrayList;

int n = 5;
ArrayList<Solid> mySolids = new ArrayList<Solid>();
long startTime = System.currentTimeMillis();


void setup() {
  size(800, 800);
  textSize(32);
  for(int i = 0; i < n; i++) {
    mySolids.add(new Solid(193, 210, 225));
  }
}


void draw() {
  background(0);
  boolean anyActive = false;

  for(Solid s : mySolids) {
    if(!s.hit) {
      anyActive = true;
    }
    s.update();
    s.display();
  }
  
  String txt = "Dist: 10m";
  fill(255, 255, 255);
  //text(txt, 700, 40, 780, 100);
  
  if(!anyActive) {
    println("Finished game in " + (System.currentTimeMillis() - startTime)/1000.0 + " seconds!");
    exit();
  }
}

void mousePressed() {
  for(Solid s : mySolids) {
    s.hasBeenHit(mouseX, mouseY, startTime);
  }
}

/* RETO PARA LA PRÓXIMA SESIÓN: Hacer que cada bolita, al ser golpeada por primera vez, reduzca su tamaño a la mitad y 
doble su velocidad. Al ser golpeada por segunda vez, ha de desaparecer como veníamos haciendo hasta ahora */
