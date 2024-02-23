/* TASK 1a
void setup() {
  checkX(3, 5, 3); // kleiner
  checkX(3, 5, 4); // innerhalb
  checkX(3, 5, 5); // groesser
}

void checkX(float a, float b, float x) {
  if (a < x && x < b) {
    println("x innerhalb");
  }
}
*/

/* TASK 1b
void setup() {
  checkX(3, 5, 3); // kleiner
  checkX(3, 5, 4); // innerhalb
  checkX(3, 5, 5); // groesser
  
  checkX(5, 3, 3); // kleiner
  checkX(5, 3, 4); // innerhalb
  checkX(5, 3, 5); // groesser
}

void checkX(float a, float b, float x) {
  if (a < x && x < b || b < x && x < a) {
    println("x innerhalb");
  }
}
*/

/* TASK 1c
void setup() {
  checkX(-3, 3, -4); // kleiner
  checkX(-3, 3, 2); // drinne
  checkX(-3, 3, 4); // groesser
}

void checkX(float a, float b, float x) {
  if (x < a || x > b) {
    println("x extrem");
  } 
}
*/

/* TASK 2a
void setup() {
  hire(18, 1.0); // too young
  hire(25, 2.9); // met conditions
  hire(65, 1.0); // too old
}

void hire(int age, float grade) {
  if (age >= 20 && age <= 60 && grade < 3) {
    println("Einstellen!");
  } else {
    println("Lieber nicht.");
  }
}
*/

/* TASK 2b
void setup() {
  hire(1, 6); // einstellen
  hire(3, 5); // einstellen
  hire(2, 6); // zum Gespräch einladen
  hire(6, 4); // zum Gespräch einladen
  hire(5, 3); // ablehnen
}

// grade 1 (best) - 6 (worst), experience 1 (worst) - 5 (best)
void hire(int grade, float experience) {
  if (grade == 1 || experience == 5 && grade == 3) {
    println("einstellen");
  } else if (grade == 2 || experience >= 4) {
    println("zum Gespräch einladen");
  } else {
    println("ablehnen");
  }
}
*/

/* TASK 2c
int x = 0;

void draw() {
  background(0);

  if (x > 25 && x < 75) {
    fill(255, 0, 0);
  } else {
    fill(255);
  }
  
  // Linien zum Markieren der Zone
  stroke(255);
  line(25, 0, 25, height);
  line(75, 0, 75, height);

  // hier wird animiert...
  ellipse(x, 50, 20, 20);
  x++;
  if (x > width) {
    x = 0;
  }
}
*/

/* TASK 2d
int x = 0;

void draw() {
  background(0);

  if (!(x > 25 && x < 75)) {
    fill(255, 0, 0);
  } else {
    fill(255);
  }
  
  // Linien zum Markieren der Zone
  stroke(255);
  line(25, 0, 25, height);
  line(75, 0, 75, height);

  // hier wird animiert...
  ellipse(x, 50, 20, 20);
  x++;
  if (x > width) {
    x = 0;
  }
}
*/
