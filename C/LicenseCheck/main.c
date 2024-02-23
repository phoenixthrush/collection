#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

#define ARRAY_SIZE 30

void generateRandomKey(char array[]) {
    srand(time(NULL));
    for (int i = 0; i < ARRAY_SIZE - 1; i++) {
        if ((i + 1) % 6 == 0 && i != 0 && i != ARRAY_SIZE - 1) {
            array[i] = '-';
        } else {
            array[i] = 'A' + rand() % 26;
        }
    }
    array[ARRAY_SIZE - 1] = '\0';
}

int main(int argc, char **argv) {
    char userinput[ARRAY_SIZE];
    char array[ARRAY_SIZE];

    generateRandomKey(array);

    if (argc == 2 && strcmp(argv[1], "--debug") == 0) {
        printf("DEBUG: %s\n", array);
    }

    printf("Please enter the license key: ");
    scanf("%29s", userinput);

    if (strcmp(userinput, array) == 0) {
        printf("Activated!\n");
    } else {
        printf("Incorrect key.\n");
    }

    return 0;
}
