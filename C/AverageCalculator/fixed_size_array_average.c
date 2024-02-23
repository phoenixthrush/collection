#include <stdio.h>

#define MAX_ELEMENTS 32

int main() {
    int sum = 0, n;
    int array[MAX_ELEMENTS];

    printf("How many elements [max: %d]: ", MAX_ELEMENTS);
    scanf("%d", &n);

    if (n > MAX_ELEMENTS) {
        printf("Too many elements!\n");
        return 1;
    }

    for (int i = 0; i < n; i++) {
        printf("Enter value [%d]: ", i);
        scanf("%d", &array[i]);
        sum += array[i];
    }

    printf("Avg: %.2lf\n", (double) sum / n);

    return 0;
}
