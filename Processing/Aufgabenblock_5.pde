/* Task 1a - Circle
int x = 30;
int y = 50;

circle(x, y, 30);
*/

/* Taks 1b - average
float a = random(1,2);
float b = random(1,2);
float c = (a + b) / 2;
println("Der Durchschnitt von " + a + " und " + b + " ist: " + c);
*/

/* Task 1c - printing vars
int a = -5;
float b = 32.01;
boolean c = true;
char d = ' ';

println("Integer: " + a);
println("Float: " + b);
println("Boolean: " + c);
println("Char: \"" + d + "\"");
*/

/* Task 2a - rect

int x = 10;
int y = 10;

rect(x, y, 30, 30);
rect(x + 50, y + 50, 30, 30);
*/

/* Task 2b - smiley
void setup(){
  noFill();
}

void draw() {
  int smileyX = mouseX;
  int smileyY = mouseY;
  
  background(205);
  ellipse(smileyX, smileyY, 80, 80); // head
  ellipse(smileyX - 20, smileyY - 10, 15, 15); // left eye
  ellipse(smileyX + 20, smileyY - 10, 15, 15); // right eye
  arc(smileyX, smileyY + 20, 40, 20, radians(15), radians(155)); // mouth
}
*/

/* Task 2c - mouse position
void setup() {
  frameRate(5);
}

void draw() {
  println("X Coordinate: " + mouseX + " | Y Coordinate: " + mouseY);
}
*/

/* Task 2d - mouse click - x axis

float x = 0;
void draw() {
  background(255);
  ellipse(x, 50, 30, 30);
}

void mousePressed() {
  x += 0.5;
}
*/
