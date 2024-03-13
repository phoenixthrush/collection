/* TASK 1
 int[][] a = new int[5][5];
 
 for (int i = 0; i < a.length; i++) {
 for (int j = 0; j < a[0].length; j++) {
 print(a[i][j]);
 }
 println();
 }
 */

/* TASK 2
 int[][] a = new int[5][5];
 
 for (int i = 0; i < a.length; i++) {
 for (int j = 0; j < a[0].length; j++) {
 a[i][j] = 9;
 }
 }
 
 for (int i = 0; i < a.length; i++) {
 for (int j = 0; j < a[0].length; j++) {
 print(a[i][j]);
 }
 println();
 }
 */

/* TASK 3
 int[][] a = {
 {4, 0, 2},
 {3, 2, 3},
 {1, 2, 3}
 };
 
 int[] b = new int[3];
 int[] c = new int[3];
 int[] d = new int[3];
 
 for (int i = 0; i < a.length; i++) {
 b[i] = a[0][i];
 }
 
 for (int i = 0; i < a.length; i++) {
 c[i] = a[1][i];
 }
 
 for (int i = 0; i < a.length; i++) {
 d[i] = a[2][i];
 }
 
 println(b);
 println();
 println(c);
 println();
 println(d);
 */

/* TASK 4
int[][] a = new int[3][5];

// Print
for (int i = 0; i < a.length; i++) {
    for (int j = 0; j < a[0].length; j++) {
        print(a[i][j] + " ");
    }
    println();
}
println();

for (int i = 0; i < a.length; i++) {
    a[i][i] = 1;
}

// Print

for (int i = 0; i < a.length; i++) {
    for (int j = 0; j < a[0].length; j++) {
        print(a[i][j] + " ");
    }
    println();
}
println();

for (int i = 0; i < a.length; i++) {
    for (int j = 0; j < a[0].length; j++) {
        a[i][j] = j;
    }
}

// Print

for (int i = 0; i < a.length; i++) {
    for (int j = 0; j < a[0].length; j++) {
        print(a[i][j] + " ");
    }
    println();
}
println();

for (int i = 0; i < a.length; i++) {
    for (int j = 0; j < a[0].length; j++) {
        a[i][j] = i;
    }
}

// Print

for (int i = 0; i < a.length; i++) {
    for (int j = 0; j < a[0].length; j++) {
        print(a[i][j] + " ");
    }
    println();
}
println();

for (int i = 0; i < a.length; i++) {
    for (int j = 0; j < a[0].length; j++) {
        a[i][j] = j + i;
    }
}

// Print

for (int i = 0; i < a.length; i++) {
    for (int j = 0; j < a[0].length; j++) {
        print(a[i][j] + " ");
    }
    println();
}

*/

/* TASK 5
 
 int[][] a = {
 {4, 0, 2, 44},
 {3, 20, 33, -4},
 {12, -30, 6, 110}
 };
 
 int sum = 0;
 
 for (int i = 0; i < a.length; i++) {
 for (int j = 0; j < a[0].length; j++) {
 sum += a[i][j];
 }
 }
 
 println(sum);
 
 */

/* TASK 6

int[][] tabelle = {
  {1001, 5, 500, 0},
  {2001, 23, 1200, 0},
  {3001, 2, 85, 0}
};

for (int i = 0; i < tabelle.length; i++) {
  println(tabelle[i][1] + "x" + " Artikel Nr. " + tabelle[i][0] + " à " + tabelle[i][2] + " EUR = " + tabelle[i][2] * tabelle[i][1]);
}

*/

/* TASK 7
int[][] bibliothek = {
  {101, 3, 15, 0},
  {102, 5, 22, 0},
  {103, 2, 30, 0}
};

for (int i = 0; i < bibliothek.length; i++) {
  println(bibliothek[i][1] + "x Buch ID " + bibliothek[i][0] + " zu " + bibliothek[i][2] + " EUR = " + bibliothek[i][2] * bibliothek[i][1]);
}
*/

/* TASK 8
int[][] m = {
  {1, 1, 2},
  {2, 0, 1}
};

int[] v = { 10, 20, 30 };
int[] w = new int[2];

for (int i = 0; i < m.length; i++) {
    int sum = 0;
    for (int j = 0; j < m[i].length; j++) {
        sum += m[i][j] * v[j];
    }
    w[i] = sum;
}

println("[0] " + w[0]);
println("[1] " + w[1]);
*/
