/* Task 1
void setup() {
  checkPositiveNegative(-5);
  checkPositiveNegative(0);
  checkPositiveNegative(5);
}

void checkPositiveNegative(int x) {
  if (x >= 0) {
    println("positive");
  } else {
    println("negative");
  }
}
*/

/* TASK 2
void setup() {
  checkExamPassed(0);
  checkExamPassed(15);
  checkExamPassed(25);
  checkExamPassed(35);
  checkExamPassed(45);
}

void checkExamPassed(int grade) {
  if (grade <= 10) {
    println("Durchgefallen");
  } else if (grade <= 20) {
    println("Naja");
  } else if (grade <= 30) {
    println("Mittelgut");
  } else if (grade <= 40) {
    println("Gut");
  } else {
    println("Super");
  }
}
*/

/* TASK 1b
int zustand = 0;

void setup() {
  textAlign(CENTER, CENTER);
  textSize(20);
}

void draw() {
  if (zustand == 0) {
      background(0);
      text("Hallo", width/2, height/2);
    } else if (zustand == 1) {
      background(0);
      text("mein", width/2, height/2);    
    } else if (zustand == 2) {
      background(0);
      text("Name", width/2, height/2);   
    } else if (zustand == 3) {
      background(0);
      text("ist", width/2, height/2);  
    } else if (zustand == 4) {
      background(0);
      text("Hase", width/2, height/2);   
    } else if (zustand == 5) {
      background(0);
      text("Tschüss!", width/2, height/2);    
    }
}

void mousePressed() {
  if (zustand == 5) { zustand = 0; } else { zustand++; }
}
*/
