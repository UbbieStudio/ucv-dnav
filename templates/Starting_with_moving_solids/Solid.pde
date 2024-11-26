class Solid {
  
  /* CAMPOS DE LA CLASE SOLID */
  
  // Magnitudes
  PVector location;
  PVector speed;
  float topSpeed;
  
  // Size and mass
  int size;
  
  // Color
  int r;
  int g;
  int b;
  
  // Hit
  boolean hit;
  long hitTime;
  
  /********************************/
  
  
  /* CONSTRUCTORES */
  
  Solid() {
    topSpeed = (int) random(3, 6);
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
    hitTime = 0;
  }
  
  Solid(int x, int y) {
    this();
    location = new PVector(x, y);
    size = 10;
    r = 255;
    g = 255;
    b = 255;
  }
  
  Solid(int red, int green, int blue) {
    this();
    r = red;
    g = green;
    b = blue;
  }
  
  /******************************/
  
  
  
  String toString() {
    return "Solid";
  }
  
  
    
  void update() {
    
    if(hit) {
      return;
    }
    
    if(location.x + speed.x > (width - size/2) || location.x + speed.x < size/2) {
      speed.x = speed.x * -1;
    }
    
    if(location.y + speed.y > (height - size/2) || location.y + speed.y < size/2) {
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
  
  
  
  
  
  
  
  
  
  
  
  
  void hasBeenHit(int x, int y, long start) {
    if(Math.abs(x - location.x) < size / 2 && Math.abs(y - location.y) < size / 2) {
      hit = true;
      hitTime = System.currentTimeMillis() - start;
      location = new PVector(-99, -99);
      
      println(this + " hit at " + x + ", " + y + " and after " + prettyTime(hitTime));
    }
  }
  
  

  
  
  
  
  
  
  
  
  
  
  
  
  
  void hasCrashed(Solid s) {
    PVector distance = PVector.sub(location, s.location);
    
    if(distance.mag() <= size / 2.0 + s.size / 2.0) {
      PVector newSpeed1 = PVector.fromAngle(s.speed.heading()).setMag(s.speed.mag());
      PVector newSpeed2 = PVector.fromAngle(speed.heading()).setMag(speed.mag());

      speed = newSpeed1;
      //location.add(speed);
      update();
      s.speed = newSpeed2;
      s.update();
      //s.location.add(s.speed);
    }
  }
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  void overlaps(Solid s) {
    PVector distance = PVector.sub(location, s.location);
    
    if(distance.mag() < size / 2.0 + s.size / 2.0 - 2) {
      PVector newSpeed1 = PVector.fromAngle(s.speed.heading()).setMag(2 * s.speed.mag());
      PVector newSpeed2 = PVector.fromAngle(speed.heading()).setMag(2 * speed.mag());

      speed = newSpeed1;
      location.add(speed);
      s.speed = newSpeed2;
      s.location.add(s.speed);
    }
  }
  
  
  
  
  
  
  
  
  
  String prettyTime(long t) {
    ArrayList<String> output = new ArrayList();
    long ms = t % 1000;
    long s = t / 1000 % 60;
    long m = t / 1000 / 60 % 60;
    long h = t / 1000 / 60 / 60 % 24;
    
    if(h > 0) {
      output.add(Long.toString(h) + "h");
    }
    if(m > 0) {
      output.add(Long.toString(m) + "m");
    }
    if(s > 0) {
      output.add(Long.toString(s) + "s");
    }
    if(ms > 0) {
      output.add(Long.toString(ms) + "ms");
    }
    
    return String.join(" ", output);
  }
  
  // Diana 
  String dianaTime(long millis){
    return (((millis - startTime)/100000) + " hours, " + ((millis - startTime)/10000) + " minutes, and " + (millis - startTime)/1000 + " seconds");
  }
  
  // Jari
  String jariTime(long time) {
    long totalSeconds = time/1000;
    int sec = 0;
    int min = 0;
    int hour = 0;
   
    while (totalSeconds > 60) {
      totalSeconds -= 60;
      min ++;
      while (min > 60) {
        min -= 60;
        hour ++;
      }
    }
    sec = (int) totalSeconds;
    return ("Tiempo: " + hour + " horas " + min + " minutos " + sec + " segundos ");
  }
  
  // Nicolás
  String nicolasTime(long milis) {
    long sec = milis / 1000;
    long min = sec / 60;
    long ho = min / 60;
   
    sec = sec % 60;
    min = min % 60;
    if(ho > 0){
    return(ho + " hours : " + min + " minutes : " + milis / 1000.0 + " seconds.");
    }
    if(min > 0){
      return(min + " minutes : " + milis / 1000.0 + " seconds.");
    }else{
      return(milis / 1000.0 + " seconds.");
    }
  }
  

}
