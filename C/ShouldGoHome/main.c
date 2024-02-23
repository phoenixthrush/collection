#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main(void) {
    int res[3] = {0};

    srand(time(NULL));
    for (int i = 0; i < 100; i++) {
        int random_result = rand() % 3;
        res[random_result]++;
    }

    printf("Von 100 Zufallsergebnissen:\n\nNach Hause gehen:\t%d\nMit Aylin sus sein:\t%d\nHier bleiben:\t\t%d\n\n", res[0], res[1], res[2]);
    
    int max_count = res[0];
    int max_index = 0;
    for (int i = 1; i < 3; i++) {
        if (res[i] > max_count) {
            max_count = res[i];
            max_index = i;
        }
    }

    switch (max_index) {
        case 0:
            printf("Nach Hause gehen.\n");
            break;
        case 1:
            printf("Mit Aylin sus sein.\n");
            break;
        case 2:
            printf("Hier bleiben.\n");
            break;
        default:
            printf("Oh versuch es nochmal.\n");
            break;
    }

    return 0;
}
