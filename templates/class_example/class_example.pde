
Solid mySolid, mySolid2;

void setup() {
  size(600, 600);
  
  mySolid = new Solid();
  mySolid2 = new Solid(255, 150, 0);
  
  
 //Operador AND && y operador OR ||
}

void draw() {
  background(0);
  mySolid.update();
  mySolid2.update();
  mySolid.display();
  mySolid2.display();
}

void mouseClicked() {
  println(mouseX + ", " + mouseY);
}
