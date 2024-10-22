import java.util.ArrayList;

Solid mySolid, mySolid2, mySolid3;

ArrayList<Solid> mySolids = new ArrayList<Solid>();

void setup() {
  size(800, 800);
  //mySolids.add(new Solid());
  //mySolids.add(new Solid(128, 14, 99));
  //mySolids.add(new Solid(195, 114, 99));
  
  for(int i = 0; i < 30; i++) {
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
