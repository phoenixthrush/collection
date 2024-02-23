#include <stdio.h>

int main() {
    int N, sum = 0;

    printf("Enter a positive integer: ");
    scanf("%d", &N);

    for (int i = 2; i <= N; i += 2) {
        sum += i;
    }

    printf("The sum of even numbers from 1 to %d is %d\n", N, sum);

    return 0;
}
