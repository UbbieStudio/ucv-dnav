class Solid {
  
  PVector location;
  PVector speed;
  
  float topSpeed;
  
  int r;
  int g;
  int b;
  
  
  Solid() {
    location = new PVector(width/2, height/2);
    speed = new PVector(-2, -3);
    
    topSpeed = 10;
    
    r = (int) random(0, 256);
    g = (int) random(0, 256);
    b = (int) random(0, 256);
  }
  
  Solid(int red, int green, int blue) {
    location = new PVector(width/3, height/3);
    speed = new PVector(0, 0);
    
    topSpeed = 10;
    
    r = red;
    g = green;
    b = blue;
  }
  
  void update() {
    
    if(location.x > width || location.x < 0) {
      speed.x *= -1;
    }
    
    if(location.y > height || location.y < 0) {
      speed.y *= -1;
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
  
}
