#include <stdio.h>
#include <stdlib.h>

#define BUFFER_SIZE 256

int main() {
    char text[BUFFER_SIZE];
    char encode[BUFFER_SIZE];

    printf("Please say something ->\n\nOriginal: ");

    fgets(text, sizeof(text), stdin);

    size_t i = 0;
    while (text[i] != '\0') {
        i++;
    }

    for (size_t j = 0; j < i; j++) {
        encode[j] = text[j] + 1;
    }
    encode[i] = '\0';

    printf("Encoded:  %s\nExiting.\n", encode);

    return 0;
}
