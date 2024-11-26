class Entity {
  
  boolean alive;
  
  PVector loc;
  PVector speed;
  
  float radius;
  
  color innerColor;
  
  float energy;
  
  Entity() {
    alive = true;
    radius = random(1, 3);
    loc = new PVector((int) random(radius, width - radius), (int) random(radius, height - radius));
    speed = PVector.random2D().setMag(random(0.1, 1 * radius));
    innerColor = color(random(0, 255), random(0, 255), random(0, 255));    
  }
  
  void display() {
    if(!alive) {
      return;
    }
    stroke(255);
    strokeWeight(1);
    fill(innerColor);
    ellipse(loc.x, loc.y, 2*radius, 2*radius);
  }
  
  void update() {
    if(!alive) {
      return;
    }
    
    if(loc.x + speed.x > (width - radius) || loc.x + speed.x < radius) {
      speed.x = speed.x * -1;
    }
    
    if(loc.y + speed.y > (height - radius) || loc.y + speed.y < radius) {
      speed.y = speed.y * -1;
    }
    
    loc.add(speed);
  }
  
}
