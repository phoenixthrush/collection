#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[]) {
    if (argc != 2) {
        printf("Usage: %s <int>\n", argv[0]);
        return 1;
    }

    int num = atoi(argv[1]);

    if (num % 2 == 0) {
        printf("%d is even!\n", num);
    } else {
        printf("%d is odd!\n", num);
    }

    return 0;
}
