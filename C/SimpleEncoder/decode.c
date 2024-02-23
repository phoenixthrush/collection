#include <stdio.h>
#include <stdlib.h>

#define BUFFER_SIZE 256

int main() {
    char text[BUFFER_SIZE];
    char encode[BUFFER_SIZE];

    printf("Please say something ->\n\nOriginal: ");

    if (fgets(text, sizeof(text), stdin) == NULL) {
        perror("Error reading input. Exiting.");
        return 1;
    }

    size_t text_length = 0;
    while (text[text_length] != '\0' && text[text_length] != '\n') {
        text_length++;
    }

    for (size_t i = 0; i < text_length; i++) {
        encode[i] = text[i] + 1;
    }
    encode[text_length] = '\0';

    printf("Encoded:  %s\n\nExiting.\n", encode);

    return 0;
}
