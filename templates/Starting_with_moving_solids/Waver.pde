class Waver extends Solid {
  
  int minSize, maxSize;
  double realSize, rate;
  boolean increasing;
  
  Waver(int min, int max) {
    super(1);
    minSize = min;
    maxSize = max;
    realSize = size;
    rate = Math.random() * 2;
    r = 0;
    g = 255;
    b = 0;
    increasing = Math.random() * 1000 % 2 == 0;
  }
  
  Waver(int min, int max, int changeRate) {
    super(1);
    minSize = min;
    maxSize = max;
    realSize = size;
    rate = changeRate;
    r = 0;
    g = 255;
    b = 0;
    increasing = Math.random() * 1000 % 2 == 0;
  }
  
  String toString() {
    return "Waver";
  }
  
  void update() {
    
    if(hit) {
      return;
    }
    
    if((size >= maxSize && increasing) || (size <= minSize && !increasing)) {
      increasing = !increasing;
    }
    
    realSize = realSize + (increasing ? rate : -rate);
    size = (int) realSize;
    
    super.update();
  }
}
