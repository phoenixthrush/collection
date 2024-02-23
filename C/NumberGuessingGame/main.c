#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main() {
    srand(time(NULL));

    int rInt = rand() % 11;
    int uInt;

    printf("Please enter a number between 0 and 10: ");
    scanf("%d", &uInt);

    if (uInt == rInt) {
        printf("You guessed it!!!\n");
    } else {
        printf("Wrong number!\nThe number was: %d\n", rInt);
    }

    return 0;
}
