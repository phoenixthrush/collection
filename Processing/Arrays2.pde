/* TASK 1
float[] fa = {1.5, 3.5, 5.5, 7.5};

for (int i = 0; i < fa.length; i++) {
  println(fa[i]);
}
*/

/* TASK 2
int a[] = new int[10];

for (int i = 0; i < a.length; i++) {
  a[i] = i;
}

println(a);
*/

/* TASK 3
void printArray(int size, int start, int step) {
  int[] fa = new int[size];

  for (int i = 0; i < fa.length; i++) {
    fa[i] = start + step * i;
  }
  
  println(fa);
}

void setup() {
  //printArray(10, 1, 1);
  //printArray(10, -10, 1);
  //printArray(10, 2, 2);
  //printArray(10, 100, 10);
}
*/

/* TASK 4
int[] fa = new int[10];
int[] fb = new int[10];
  
for (int i = 0; i < 10; i++) {
  fa[i] = 1 + i;
  fb[i] = -10 + i;
}

println(fa);
println(fb);
*/

/* TASK 5
int[] bla  = {2, 1, 3, 5};

for (int i = 0; i < bla.length; i++) {
  bla[i] = bla[i] * 2;
}

println(bla);
*/

/* TASK 6
int[] foo = {22, -10, 8, 10};
int sum = 0;

for (int i = 0; i < foo.length; i++) {
  sum += foo[i];
}

println(sum);
*/

/* TASK 7
int[] a  = {1, -2, -25, 6, -3, 5};

for (int i = 0; i < a.length; i++) {
  a[i] = -a[i];
}

println(a);
*/

/* TASK 8
int[] a  = {1, 2, 25, 6};
int[] b  = {9, 18, 5, 34};
int[] c = new int[4];

for (int i = 0; i < 4; i++) {
  c[i] = a[i] + b[i];
}

println(c);
*/

/* TASK 9
int[] foo = {1, 2, 3, 4};
int[] bar = new int[4];

for (int i = 0; i < foo.length; i++) {
  bar[i] = foo[foo.length - i - 1];
}

println(bar);

*/

/* TASK 10
int[] foo = { 1, 2, 3, 4, 5, 6 };
int[] bar = new int[foo.length / 2];

for (int i = 0; i < bar.length; i++) {
  bar[i] = foo[2 * i] + foo[2 * i + 1];
}

println(bar);
*/
