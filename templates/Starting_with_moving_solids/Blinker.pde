class Blinker extends Solid {
  
  Blinker() {
    super(1);
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
      PVector displacement = speed;
      displacement.setMag(dist);
      displacement.rotate((float) Math.random() * PI);
      PVector temp = PVector.add(location, displacement);
      if(temp.x + displacement.x < (width - size/2) && location.x + displacement.x > size/2 && location.y + displacement.y < (height - size/2) && location.y + displacement.y > size/2) {
        location.add(displacement);
      }
    }
    else {
      super.update();    
    }
  }
}
