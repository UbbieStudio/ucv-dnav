import java.util.ArrayList;

Solid mySolid, mySolid2, mySolid3;

ArrayList<Solid> mySolids = new ArrayList<Solid>();

void setup() {
  size(800, 800);
  for(int i = 0; i < 10; i++) {
    mySolids.add(new Solid());
  }
}

void draw() {
  background(0);
  
  for(Solid s : mySolids) {
    s.update();
    s.display();
  }
}

void mousePressed() {
  println(mouseX + ", " + mouseY);
}
