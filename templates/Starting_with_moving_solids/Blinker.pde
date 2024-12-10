class Blinker extends Solid {
  
  Blinker() {
    super();
    r = 0;
    g = 0;
    b = 255;
  }
  
  String toString() {
    return "Blinker";
  }
  
  void update() {
    if(Math.random() < 0.01) {
      if(hit) {
        return;
      }
      int dist = (int)(Math.random() * (size * 3 - size + 1)) + size;
      speed.setMag(dist);
      speed.rotate((float) Math.random() * 2 * PI);
      PVector temp = PVector.add(location, speed);
      if(temp.x + speed.x < (width - size/2) && location.x + speed.x > size/2 && location.y + speed.y < (height - size/2) && location.y + speed.y > size/2) {
        location.add(speed);
      }
    }
    else {
      super.update();    
    }
  }
}
