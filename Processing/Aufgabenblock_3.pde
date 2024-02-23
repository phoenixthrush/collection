void setup() {
  size(500, 500);
  /* Aufgabe 2a
    print("Start");
  */
  
  /* Aufgabe 2e
    rectMode(CORNER);
    fill(0);
    rect(width / 4, height / 4, width / 2, height / 2);
  */
  
  /* Aufgabe 2g
    ellipseMode(CENTER);
    ellipse(width / 2, height / 2, width / 2, height / 2);
  */
  
  /* Aufgabe 2i
    rectMode(CENTER);
    rect(width / 2, height / 2, width / 2, height / 2);
  */
}

void draw() {
  /* Aufgabe 2a
    frameRate(2);
    println("Tick.");
  */
  
  /* Aufgabe 2b
    frameRate(2);
    println(mouseX);
  */
  
  /* Aufgabe 2c
    frameRate(30);
    background(210);
    line(0, 0, mouseX, mouseY);
  */
  
  /* Aufgabe 2d
    frameRate(30);
    background(210);
    line(mouseX + width * 0.05, mouseY, mouseX - width * 0.05, mouseY);
    line(mouseX, mouseY + height * 0.05, mouseX, mouseY - height * 0.05);
  */
  
  /* Aufgabe 2e
    stroke(205); // just a guess for the default bg color
    strokeWeight(15);
    point(mouseX, mouseY);
  */
}

/* Aufgabe 2f
void keyPressed() {
  rectMode(CORNER);
  rect(width / 4, height / 4, width / 2, height / 2);
}
*/

/* Aufgabe 2g
void mousePressed() {
  background(210);
}
*/

/* Aufgabe 2h
void keyPressed() {
  ellipseMode(CENTER);
  ellipse(mouseX, mouseY, 20, 20);
}
*/

/* Aufgabe 2g
void mousePressed() {
  rectMode(CENTER);
  rect(mouseX, mouseY, 20, 20);
}
*/

/* Aufgabe 2i
void keyPressed() {
  background(210);
  fill(255, 0, 0);
  rectMode(CENTER);
  rect(width / 2, height / 2, width / 2, height / 2);
}
*/

/* Aufgabe 2i
void mousePressed() {
  background(210);
  fill(0, 255, 0);
  rectMode(CENTER);
  rect(width / 2, height / 2, width / 2, height / 2);
}
*/
