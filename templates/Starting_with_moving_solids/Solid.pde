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
  
  
  
  Solid() {
    int[] randDirection = getRandomCoords();
    int[] randLocation = getRandomCoords();
    PVector direction = new PVector(randDirection[0], randDirection[1]);
    location = new PVector(randLocation[0], randLocation[1]);
    speed = PVector.sub(direction, location);
    topSpeed = 3;
    size = 24;
    r = (int) random(0, 255);
    g = (int) random(0, 255);
    b = (int) random(0, 255);
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
    
    if(location.x > width || location.x < 0) {
      speed.x = speed.x * -1;
    }
    
    if(location.y > height || location.y < 0) {
      speed.y = speed.y * -1;
    }
    
    speed.limit(topSpeed);
    location.add(speed);
  }

  void display() {
    stroke(255);
    strokeWeight(1);
    fill(r, g, b);
    ellipse(location.x, location.y, size, size);
  }
  
  int[] getRandomCoords() {
    int[] coords = {(int) random(0, width), (int) random(0, height)};
    return coords;
  }
  
}
