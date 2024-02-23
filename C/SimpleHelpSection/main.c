#include <stdio.h>
#include <string.h>

int main(int argc, char *argv[]) {
    for (int i = 0; i < argc; i++) {
        if (strcmp(argv[i], "--help") == 0) {
            printf("Usage: %s <bla> <bla>\n", argv[0]);
            return 0;
        }
    }
    return 0;
}
