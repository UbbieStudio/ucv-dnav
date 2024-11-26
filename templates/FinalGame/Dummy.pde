class Dummy extends Entity {
  Dummy() {
    super();
    radius = 0.5;
    speed.limit(1);
    energy = random(1, 3);
  }
  
  void hasBeenEaten(Entity e) {
    if(alive && PVector.sub(loc, e.loc).mag() <= radius + e.radius) {
      e.energy += energy;
      alive = false;
    }
  }
}
