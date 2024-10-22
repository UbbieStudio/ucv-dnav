import java.util.ArrayList;

int n = 5;
ArrayList<Solid> mySolids = new ArrayList<Solid>();
long startTime = System.currentTimeMillis();

void setup() {
  size(800, 800);
  for(int i = 0; i < n; i++) {
    mySolids.add(new Solid());
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
  
  if(!anyActive) {
    println("Finished game in " + (System.currentTimeMillis() - startTime)/1000.0 + " seconds!");
    exit();
  }
}

void mousePressed() {
  for(Solid s : mySolids) {
    s.hasBeenHit(mouseX, mouseY);
  }
}
