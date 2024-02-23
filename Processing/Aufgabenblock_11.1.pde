/* TASK 1a

void setup() {
  isTrue(true);
  isTrue(false);
}

void isTrue(boolean istKorrekt) {
  if (istKorrekt) {
    println("richtig");
  } else {
    println("falsch");
  }
}
*/

/* TASK 1b
void setup() {
  equal(true, true);
  equal(false, false);
  equal(false, true);
  equal(true, false);

}

void equal(boolean foo, boolean bar) {
  if (foo == bar) {
    println("gleich");
  } else {
    println("ungleich");
  }
}
*/

/* TASK 1c
void setup() {
  aGreaterB(68, 69); // false - smaller
  aGreaterB(69, 69); // false - equal
  aGreaterB(69, 68); // true - bigger
}

void aGreaterB(int a, int b) {
  boolean agb;
  if (a > b) {
    agb = true;
    println(agb);
  }
}
*/

/* TASK 2a
boolean foo = true;

foo = !foo;

println(foo);

foo = !foo;

println(foo);
*/

/* TASK 2b

boolean visible = true;

void draw() {
  background(205);
  fill(0);
  if (visible) {
    circle(width / 2, height / 2, width * 0.35);
  } 
}

void mousePressed() {
  visible = !visible;
}
*/

/* TASK 2c
boolean isRect; // default false

void setup() {
  size(100, 100);
  rectMode(CENTER);
}

void draw() {
  background(205);
  if (isRect) {
    fill(0);
    rect(mouseX, mouseY, 20, 20);
  } else {
    fill(255);
    circle(mouseX, mouseY, 30);  
  }
}

void keyPressed() {
  isRect = !isRect;
}
*/

/* TASK 2d
boolean vertical;

void draw() {
  background(205);
  if (vertical) {
    circle(width / 2, frameCount % height, 25);
  } else {
    circle(frameCount % width, height / 2, 25);
  }
}

void mousePressed() {
  vertical = !vertical;
}
*/
