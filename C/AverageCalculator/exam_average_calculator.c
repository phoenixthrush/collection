#include <stdio.h>
#include <stdlib.h>

int main() {
    double *ptr;
    double sum = 0.0;
    int n;

    printf("How many grades? -> ");
    scanf("%d", &n);

    ptr = (double*) malloc (n * sizeof(double));

    for (int i = 0; i < n; i++) {
        printf("Enter value [%d]: ", i);
        scanf("%lf", &ptr[i]);
        sum += ptr[i];
    }

    double avg = sum / n;

    printf("Avg: %.2lf\n", avg);

    if (avg < 5) {
        printf("RIP... :(\n");
    } else {
        printf("Everything fine :)\n");
    }

    free(ptr);
    return 0;
}
