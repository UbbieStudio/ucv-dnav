
Solid mySolid, mySolid2;

void setup() {
  size(800, 800);
  mySolid = new Solid();
  mySolid2 = new Solid();
}

void draw() {
  background(0);
  mySolid.update();
  mySolid.display();
  mySolid2.update();
  mySolid2.display();
}
