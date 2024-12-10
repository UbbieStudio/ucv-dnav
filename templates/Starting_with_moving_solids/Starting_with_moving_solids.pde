import java.util.Collections;
import java.util.Random;

int n = 3;
ArrayList<Solid> mySolids = new ArrayList<Solid>();
long startTime = System.currentTimeMillis();


void setup() {
  size(600, 600);
  //fullScreen();
  textSize(32);
  for(int i = 0; i < n; i++) {
    //mySolids.add(new Solid());
    mySolids.add(new Buzzer());
    mySolids.add(new Waver(16, 32));
    mySolids.add(new Blinker());
  }
  
  for(int i = 0; i < mySolids.size(); i++) {
    for(int j = i + 1; j < mySolids.size(); j++) {
      mySolids.get(i).overlaps(mySolids.get(j));
    }
  }
}


void draw() {
  background(0);
  boolean anyActive = false;
  shuffleArray(mySolids);

  for(Solid s : mySolids) {
    if(!s.hit) {
      anyActive = true;
    }
    s.update();
    s.display();
  }
  
  for(int i = 0; i < mySolids.size(); i++) {
    for(int j = i + 1; j < mySolids.size(); j++) {
      mySolids.get(i).hasCrashed(mySolids.get(j));
      mySolids.get(i).overlaps(mySolids.get(j));
    }
  }
  
  if(!anyActive) {
    println("Finished game in " + prettyTime((System.currentTimeMillis() - startTime)));
    exit();
  }
}

void mousePressed() {
  new Solid(mouseX, mouseY).display();
  for(Solid s : mySolids) {
    s.hasBeenHit(mouseX, mouseY, startTime);
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

void shuffleArray(ArrayList al) {
  Random r1 = new Random(); 
  for (int i = al.size() - 1; i >= 1; i--) { 
      Collections.swap(al, i, r1.nextInt(i + 1)); 
  } 
}
