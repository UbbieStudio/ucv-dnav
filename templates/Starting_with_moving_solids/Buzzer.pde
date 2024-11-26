class Buzzer extends Solid {
  
  Buzzer() {
    super(1);
    r = 255;
    g = 0;
    b = 0;
  }
  
  String toString() {
    return "Buzzer";
  }
  
  void update() {
    
    double r = Math.random();
    if(r < 0.7) {
      int turn = Math.floor(r * 1000) % 2 == 0 ? 30 : -30;
      speed.rotate(radians(turn));
    }
    
    super.update();
  }
}
