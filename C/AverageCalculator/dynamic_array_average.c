#include <stdio.h>
#include <stdlib.h>

int main() {
    double *ptr;
    double sum = 0.0;
    int n;

    printf("How many elements? -> ");
    scanf("%d", &n);

    ptr = (double*) malloc(n * sizeof(double));

    for (int i = 0; i < n; i++) {
        printf("Enter value [%d]: ", i);
        scanf("%lf", &ptr[i]);
        sum += ptr[i];
    }

    printf("Avg: %.2lf\n", sum / n);

    free(ptr);
    return 0;
}
