import java.util.Collections;
import java.util.Random;

int n = 5;
ArrayList<Solid> mySolids = new ArrayList<Solid>();
long startTime = System.currentTimeMillis();


void setup() {
  size(600, 600);
  //fullScreen();
  textSize(32);
  for(int i = 0; i < n; i++) {
    mySolids.add(new Solid());
    //mySolids.add(new Buzzer());
    //mySolids.add(new Waver(16, 32));
    //mySolids.add(new Blinker());
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
    println("Finished game in " + showConvertedTime((System.currentTimeMillis() - startTime)));
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





















String showConvertedTime(long time) {
    long totalMilis = time;
    int milis = 0;
    int sec = 0;
    int min = 0;
    int hour = 0;

    while (totalMilis > 1000) {
      totalMilis -= 1000;
      sec++;
      while (sec > 60) {
        sec -= 60;
        min ++;
        while (min > 60) {
          min -= 60;
          hour ++;
        }
      }
    }
    milis = (int) totalMilis;
    if (hour == 0 && min == 0) {
      //println("  :  " + sec + " segundos " + milis + " milisegundos");
      return(sec + " segundos " + milis + " milisegundos");
    } else if (hour == 0) {
      //println("  :  " + min + " minutos " + sec + " segundos " + milis + " milisegundos");
      return(min + " minutos " + sec + " segundos " + milis + " milisegundos");
    } else {
      //println("  :  " + hour + " horas " + min + " minutos " + sec + " segundos " + milis + " milisegundos");
      return(hour + " horas " + min + " minutos " + sec + " segundos " + milis + " milisegundos");
    }
  }

String convertTime(long milis) {
  long sec = milis / 1000;
  long min = sec / 60;
  long ho = min / 60;

  sec = sec % 60;
  min = min % 60;
  
  if(ho > 0){
  return(ho + " hours : " + min + " minutes : " + milis + " seconds.");
  }
  if(min > 0){
    return(min + " minutes : " + sec + " seconds.");
  }else{
    return(milis / 1000.0 + " seconds.");
  }
}






/* RETO PARA LA PRÓXIMA SESIÓN: Hacer que cada bolita, al ser golpeada por primera vez, reduzca su tamaño a la mitad y 
doble su velocidad. Al ser golpeada por segunda vez, ha de desaparecer como veníamos haciendo hasta ahora */
