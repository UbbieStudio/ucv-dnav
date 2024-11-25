class Waver extends Solid {
  int minSize, maxSize, rate;
  boolean increasing;
  
  Waver(int min, int max) {
    super();
    minSize = min;
    maxSize = max;
    rate = (int) Math.floor(Math.random() * 3 + 1);
    r = 0;
    g = 255;
    b = 0;
    increasing = Math.random() * 1000 % 2 == 0;
  }
  
  Waver(int min, int max, int changeRate) {
    super();
    minSize = min;
    maxSize = max;
    rate = changeRate;
    r = 0;
    g = 255;
    b = 0;
    increasing = Math.random() * 1000 % 2 == 0;
  }
  
  void update() {
    
    if(hit) {
      return;
    }
    
    if((size >= maxSize && increasing) || (size <= minSize && !increasing)) {
      increasing = !increasing;
    }
    
    size = size + (increasing ? rate : -rate);
    
    if(location.x + speed.x > (width - size/2) || location.x + speed.x < size/2) {
      speed.x = speed.x * -1;
    }
    
    if(location.y + speed.y > (height - size/2) || location.y + speed.y < size/2) {
      speed.y = speed.y * -1;
    }
    
    speed.limit(topSpeed);
    location.add(speed);
  }
}
