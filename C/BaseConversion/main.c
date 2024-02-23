#include <stdio.h>

char intToChar(int value) {
    if (value >= 0 && value <= 9) {
        return value + '0';
    } else {
        return value - 10 + 'A';
    }
}

void convertDezBinary(int buffer) {
    printf("The bin of %d is: ", buffer);

    for (int i = 31; i >= 0; i--) {
        printf("%d", (buffer >> i) & 1);
    }

    printf("\n");
}

void convertDezHex(int buffer) {
    printf("The hex of %d is: 0x", buffer);

    for (int i = 7; i >= 0; i--) {
        printf("%c", intToChar((buffer >> (i * 4)) & 0xF));
    }

    printf("\n");
}

int main() {
    int buffer;

    printf("Enter an integer: ");
    scanf("%d", &buffer);

    convertDezBinary(buffer);
    convertDezHex(buffer);

    return 0;
}
