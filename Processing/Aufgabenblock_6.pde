/* TASK 1a
  int x = width / 2;
*/

/* TASK 1b
int x = width / 2;
int y = height / 2;
*/

/* TASK 1c + d
int x = 0;
boolean white;
*/

/* TASK 1e
int x = 0;
int y = 250;
boolean white;
*/

/* TASK 1f
float angle = 0;
float radius = 50;
*/

/* TASK 1g
int x = 0;
float speed = 1;
*/

void setup() {
  size(500, 500);
  
  /* TASK 1b
  rectMode(CENTER);
  */
  
  /* TASK 1b
  rectMode(CENTER);
  */
  
  /* TASK 1g
  fill(255, 0, 0);
  */
  
  // initialising
  // mousePressed();
  // keyPressed(); 
}

void draw() {
  /* TASK 1c
  background(205);
  circle(x, height / 2, width / 4);
  x += 5;
  */
  
  /* TASK 1d
  if (white) {
    background(0);
  } else {
    background(205);
  }
  fill(255, 0, 0);
  circle(x, height / 2, width / 4);
  x += 5;
  */
  
  /* TASK 1e
  if (white) {
    background(0);
  } else {
    background(205);
  }
  fill(255, 0, 0);
  circle(x, y, width / 4);
  x += 5;
  */
  
  /* TASK 1f
  background(205);
  float x = width / 2 + cos(radians(angle)) * radius;
  float y = height / 2 + sin(radians(angle)) * radius;
  ellipse(x, y, 2 * radius, 2 * radius);
  angle += 5;
  */
  
  /* TASK 1g
  background(205);
  if (x > 500 + width / 8) {x = 0 - width / 8;}
  circle(x, height / 2, width / 4);
  x += 1 * speed;
  */
};

void mousePressed() {
  /* TASK 1a
    background(205);
    circle(x, height / 2, width / 4);
    x += 5;
  */
  
  /* TASK 1b
  background(205);
  rect(width / 2, height / 2, x, y);
  x += 5;
  y += 5;
  */
  
  /* TASK 1d
  white = false;
  */
  
  /* TASK 1e
  white = false;
  y += 5;
  */
  
  /* TASK 1g
  speed += 0.25;
  */
}

void keyPressed() {
  /*
  background(205);
  rect(width / 2, height / 2, x, y);
  x -= 5;
  y -= 5;
  */
  
  /* TASK 1d
  white = true;
  */
  
  /* TASK 1e
  white = true;
  y -= 5;
  */
  
  /* TASK 1g
  speed = 1;
  */
}
