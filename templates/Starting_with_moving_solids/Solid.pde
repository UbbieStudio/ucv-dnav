class Solid {
  // Magnitudes
  PVector location;
  PVector speed;
  float topSpeed;
  
  // Size
  int size;
  
  // Color
  int r;
  int g;
  int b;
  
  // Hit
  boolean hit;
  
  
  
  Solid() {
    topSpeed = (int) random(3, 9);
    size = (int) random(16, 32);
    int[] randDirection = getRandomCoords();
    int[] randLocation = getRandomCoords();
    PVector direction = new PVector(randDirection[0], randDirection[1]);
    location = new PVector(randLocation[0], randLocation[1]);
    speed = PVector.sub(direction, location);
    
    r = (int) random(0, 255);
    g = (int) random(0, 255);
    b = (int) random(0, 255);
    
    hit = false;
  }
  
  Solid(int s) {
    this();
    size = s;
  }
  
  Solid(int red, int green, int blue) {
    this();
    r = red;
    g = green;
    b = blue;
  }
    
  void update() {
    
    if(hit) {
      return;
    }
    
    if(location.x > (width - size/2) || location.x < size/2) {
      speed.x = speed.x * -1;
    }
    
    if(location.y > (height - size/2) || location.y < size/2) {
      speed.y = speed.y * -1;
    }
    
    speed.limit(topSpeed);
    location.add(speed);
  }

  void display() {
    if(hit) {
      stroke(1);
      strokeWeight(0);
      fill(1);
    }
    else {
      stroke(255);
      strokeWeight(1);
      fill(r, g, b);
    }
    
    ellipse(location.x, location.y, size, size);
  }
  
  int[] getRandomCoords() {
    int[] coords = {(int) random(2 * size, width - 2 * size), (int) random(2 * size, height - 2 * size)};
    return coords;
  }
  
  void hasBeenHit(int x, int y) {
    if(Math.abs(x - location.x) < size / 2 && Math.abs(y - location.y) < size / 2) {
      println("Hit at " + x + ", " + y + "!");
      hit = true;
      location = new PVector(-99999, -99999);
    }
  }
}
