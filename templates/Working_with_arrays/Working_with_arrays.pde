import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

PImage img;

void setup() {
  size(1500, 937);
  //img = requestImage("https://ubbie.studio/wp-content/uploads/2024/10/river-surrounded-by-forests-cloudy-sky-thuringia-germany-scaled.jpg");
  //main();
}

void draw() {
  //image(img, 0, 0);
  //loadPixels();
  circle(500, 300, 20);
  println();
  //exit();
  //return;
}

public class Agent {
  PVector position, speed, acceleration;
}

// https://www.w3schools.com/java/java_date.asp
void main() {
  LocalDateTime myObj = LocalDateTime.now();
  DateTimeFormatter myFormatObj = DateTimeFormatter.ofPattern("dd-MM-yyyy HH:mm:ss");
  String formattedDate = myObj.format(myFormatObj);
  println("After formatting: " + formattedDate);
}
