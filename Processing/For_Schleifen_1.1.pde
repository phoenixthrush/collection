/* TASK 1

int sum = 0;
int n = 10;

for (int i = 1; i <= n; i++) {
  sum += i;
  println(sum);
}
*/

/* TASK 2
int sum = 1;
int n = 10;

for (int i = 1; i <= n; i++) {
  sum *= i;
}

println(sum);
*/

/* TASK 3
void setup() {
  int zahl = 17;
  boolean istPrimzahl = istPrimzahl(zahl);
  
  if (istPrimzahl) {
    println(zahl + " ist eine Primzahl");
  } else {
    println(zahl + " ist keine Primzahl");
  }
}

boolean istPrimzahl(int n) {
  if (n <= 1) {
    return false;
  }
  
  for (int i = 2; i <= n/2; i++) {
    if (n % i == 0) {
      return false;
    }
  }
  
  return true;
}
*/
