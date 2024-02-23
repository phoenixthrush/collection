/* TASK 1
int breite = 5;


void setup() {
  for (int i = 0; i < breite; i++) {
    print("* ");
  }
}
*/

/* TASK 2
int breite = 5;
int hoehe = 3;

void setup() {
  for (int j = 0; j < hoehe; j++) {
    for (int i = 0; i < breite; i++) {
      print("* ");
    }
    println();
  }
}
*/

/* TASK 3 - not working as expected
int breite = 9;
int hoehe = 5;
int leadingWhitespace = 0;

void setup() {
  for (int j = 0; j < hoehe; j++) {
    for (int i = 0; i < breite; i++) {
      print("* ");
    }
    println();
    breite--;
  }
}
*/
