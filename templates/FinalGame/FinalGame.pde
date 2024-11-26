
int n = 10;
ArrayList<Entity> entities = new ArrayList<Entity>();
long startTime = System.currentTimeMillis();

void setup() {
  size(600, 600);
  for(int i = 0; i < n; i++) {
    entities.add(new Dummy());
  }
}

void draw() {
  background(0);
  
  for(Entity e : entities) {
    e.update();
    e.display();
  }
}
