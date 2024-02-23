/* TASK 1a
int x = 0;
int y = 0;

void draw() {
  line(x, 0, x, y);
  x += 2;
  y++;
}
*/

/* TASK 1b
int x = 0;
int y = 0;

void draw() {
  line(x, 0, x, y);
  x += 2;
  y += 2;
}
*/

/* TASK 1c
int x = 0;
int y = height;

void draw() {
  line(x, 0, x, y);
  x++;
  y--;
}
*/

/* TASK 1d
int x = 0;
int y = 0;
int a = 0;

void draw() {
  stroke(a);
  line(x, 0, x, y);
  x++;
  y++;
  a += 2;
}
*/

/* TASK 2
int x = 0;

void setup() {}
void draw() {
  background(205);
  circle(frameCount % 100, 50, 25);
  x++;
}
*/

/* TASK 3
void setup() {
  fill(0);
}

void draw() {
  background(205);
  textAlign(CENTER);
  text(key, width / 2, height / 2);
}
*/

/* TASK 4
size(111, 77);
circle(width / 2, height / 2, width / 4);
*/

/* TASK 5
void setup() {
  frameRate(1);
  fill(0);
}

void draw() {
  background(205);
  textAlign(CENTER, CENTER);
  text(frameCount, width / 2, height / 2);
}

void mousePressed() {
  frameCount = 0;
}
*/
