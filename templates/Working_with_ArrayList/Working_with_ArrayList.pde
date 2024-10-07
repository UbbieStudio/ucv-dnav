import java.util.Random;
import java.nio.charset.Charset;

void setup() {
  size(400, 400);
  main();
}

void draw() {
  exit();
  return;
}

class Student {
  String name, lastname;
  double score;
  
  public Student() {
    this.name = "Sample name";
    this.lastname = "Sample lastname";
    this.score = Math.random();
  }
  
  public Student(String name, String lastname, double score) {
    this.name = name;
    this.lastname = lastname;
    this.score = score;
  }
  
  public String toString() {
    return "Name: " + this.name + ", Lastname: " + this.lastname + " (Score: " + Math.floor(this.score * 100)/100 + ")";
  }
}

void main() {
  ArrayList<Student> studentList = new ArrayList<Student>();
  studentList.add(new Student("Alex", "Stallmann", 7.8));
  println(studentList);
  studentList.add(new Student());
  println(studentList);
  studentList.add(1, new Student("John", "Smith", 4.9));
  println(studentList);
  studentList.set(2, new Student("Jennifer", "Rayl", 6.3));
  println(studentList);
  studentList.remove(0);
  println(studentList);
}
