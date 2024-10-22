class Solid {
  PVector location;
  PVector speed;
  
  int r;
  int g;
  int b;
  float topSpeed;
  
  
  Solid() {
    int[] randDirection = getRandomCoords();
    int[] randLocation = getRandomCoords();
    PVector direction = new PVector(randDirection[0], randDirection[1]);
    location = new PVector(randLocation[0], randLocation[1]);
    speed = PVector.sub(direction, location);
    topSpeed = 7;
    r = (int) random(0, 255);
    g = (int) random(0, 255);
    b = (int) random(0, 255);
  }
  
  Solid(int red, int green, int blue) {
    this();
    r = red;
    g = green;
    b = blue;
  }
    
  void update() {
    
    if(location.x > 800 || location.x < 0) {
      speed.x = speed.x * -1;
    }
    
    if(location.y > 800 || location.y < 0) {
      speed.y = speed.y * -1;
    }
    
    speed.limit(topSpeed);
    location.add(speed);
  }

  void display() {
    stroke(255);
    strokeWeight(1);
    fill(r, g, b);
    ellipse(location.x, location.y, 24, 24);
  }
  
  int[] getRandomCoords() {
    int[] coords = {(int) random(0, width), (int) random(0, height)};
    return coords;
  }
  
}
