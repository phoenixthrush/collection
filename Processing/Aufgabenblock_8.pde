// SPOILER: Bad Variable Naming lol

/* TASK 1a

void setup() {
  checkBigger50(49); // kleiner als 50
  checkBigger50(50); // gleich 50 aber nicht größer
  checkBigger50(51); // größer also ok
}

void checkBigger50(int foo) {
  if (foo > 50) {
    println("OK");
  }
}
*/

/* TASK 1b
void setup() {
  checkATenBiggerB(19, 10); // a neun größer als 10
  checkATenBiggerB(20, 10); // gleich 10 aber nicht größer
  checkATenBiggerB(21, 10); // 11 größer also ok
}

void checkATenBiggerB(int a, int b) {
  if (a > b + 10) {
    println("a gewinnt");
  }
}
*/

/* TASK 1c
void setup() {
  checkABBiggerCD(3, 1, 3, 2); // AB: 4 CD: 5 cd gewinnt
  checkABBiggerCD(3, 2, 3, 2); // AB: 5 CD: 5 unentschieden
  checkABBiggerCD(3, 2, 3, 1); // AB: 5 CD: 4 ab gewinnt
}

void checkABBiggerCD(float a, float b, float c, float d) {
  if (a + b > c + d) {
    println("Team ab gewinnt");
  }
}
*/

/* TASK 1d
void setup() {
  checkEqual(68, 69); // ungleich
  checkEqual(69, 69); // gleich :)
  checkEqual(69, 68); // ungleich
}

void checkEqual(int z1, int z2) {
  if (z1 == z2) {
    println("gleich");
  } else {
    println("ungleich");
  }
}
*/

/* TASK 2a
void setup() {
  checkEqual(68); // gerade
  checkEqual(69); // ungerade :) 
  checkEqual(70); // gerade
}

// I would change task 1d checkEqual() to checkZ1EqualZ2()
void checkEqual(int x) {
  if (x % 2 == 0) {
    println("gerade");
  } else {
    println("ungerade");
  }
}
*/

/* TASK 2b (a is lesser than b, && not allowed, recursion sucks...)
void setup() {
  checkXBiggerALesserB(68, 70, 68); // kleiner als a
  checkXBiggerALesserB(68, 70, 69); // drinn
  checkXBiggerALesserB(68, 70, 70); // größer als b
}

void checkXBiggerALesserB(int a, int b, int x) {
  if (a < x) {
    if (x < b) {
      println("drin");
    }
  }
}
*/

/* TASK 2c
void setup() {
  checkExamPassed(0);
  checkExamPassed(15);
  checkExamPassed(25);
}

void checkExamPassed(int grade) {
  if (grade <= 4) {
    println("Durchgefallen");
  } else if (grade <= 9) {
    println("Bestanden");
  } else if (grade <= 15) {
    println("Bestanden mit Auszeichnung");
  } else {
    println("Bitte Eingabe überprüfen.");
  }
}
*/

/* TASK 2d
int x = 0;

void draw() {
  background(255);
  ellipse(x, 50, 20, 20);
  
  if (x != width / 2) {
    x++;
  }
}
*/

/* TASK 2e
int y = 0;

void draw() {
  background(255);
  ellipse(50, y, 20, 20);
  
  if (y != height / 2) {
    y++;
  }
}
*/

/* TASK 2f
int x = 0;
int diameter = 20;

void draw() {
  background(255);
  ellipse(x, 50, diameter, diameter);
  x++;
  
  if (x > width) {
    x = 0;
    diameter += 10;
  }
}
*/

/* TASK 2g
int x = 0;
int diameter = 20;

void draw() {
  background(255);
  ellipse(x, 50, diameter, diameter);
  x++;
  
  if (x > width) {
    x = 0;
    if (diameter == height) {
      diameter = 20;
    } else {
      diameter += 10;
    }
  }
}
*/

/* TASK 2h
void setup() {
  size(500, 500);
  rectMode(CENTER);
}

void draw() {
  background(205);
  if (mouseX >= 250) {
    fill(0);
    rect(mouseX, mouseY, 50, 50);
  } else {
    fill(255);
    circle(mouseX, mouseY, 50);
  }
}
*/

/* Timer 1
void setup() {
  frameRate(1);
}

void draw() {
  print(".");
}
*/

/* Timer 2
int count = 0;
void setup() {}

void draw() {
  count++;
  if (count % 60 == 0) {
    print(".");
  }
}
*/

/* Lottery
int winProbability = 20;

void draw() {}

void keyPressed() {
  if (random(0, 100) >= winProbability ) {
    println("won");
  }
}
*/
