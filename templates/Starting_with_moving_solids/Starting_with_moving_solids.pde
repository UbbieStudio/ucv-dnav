import java.util.ArrayList;

int n = 2;
ArrayList<Solid> mySolids = new ArrayList<Solid>();
long startTime = System.currentTimeMillis();


void setup() {
  size(800, 800);
  //fullScreen();
  textSize(32);
  for(int i = 0; i < n; i++) {
    //mySolids.add(new Solid(193, 210, 225));
    mySolids.add(new Buzzer());
    mySolids.add(new Waver(6, 32));
    mySolids.add(new Blinker());
  }
  
  println(radians(360));
  println(degrees(3*PI/2));
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
  
  for(int i = 0; i < mySolids.size(); i++) {
    for(int j = i + 1; j < mySolids.size(); j++) {
      mySolids.get(i).hasCrashed(mySolids.get(j));
    }
  }
  
  //String txt = "Dist: 10m";
  fill(255, 255, 255);
  //text(txt, 700, 40, 780, 100);
  
  if(!anyActive) {
    println("Finished game in " + prettyTime((System.currentTimeMillis() - startTime)));
    exit();
  }
}

void mousePressed() {
  new Solid(mouseX, mouseY).display();
  for(Solid s : mySolids) {
    s.hasBeenHit(mouseX, mouseY, startTime);
  }
}

String prettyTime(long t) {
  ArrayList<String> output = new ArrayList();
  long ms = t % 1000;
  long s = t / 1000 % 60;
  long m = t / 1000 / 60 % 60;
  long h = t / 1000 / 60 / 60 % 24;
  
  if(h > 0) {
    output.add(Long.toString(h) + "h");
  }
  if(m > 0) {
    output.add(Long.toString(m) + "m");
  }
  if(s > 0) {
    output.add(Long.toString(s) + "s");
  }
  if(ms > 0) {
    output.add(Long.toString(ms) + "ms");
  }
  
  return String.join(" ", output);
}

/* RETO PARA LA PRÓXIMA SESIÓN: Hacer que cada bolita, al ser golpeada por primera vez, reduzca su tamaño a la mitad y 
doble su velocidad. Al ser golpeada por segunda vez, ha de desaparecer como veníamos haciendo hasta ahora */
