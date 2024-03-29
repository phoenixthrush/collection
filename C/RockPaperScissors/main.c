#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main() {
    srand(time(NULL));
    
    int secret;
    int user_input;

    printf("[0] Rock\n[1] Paper\n[2] Scissors\n\n-> ");
    scanf("%d", &user_input);

    secret = rand() % 3;
    
    if (user_input == secret) {
        printf("It's a draw.\n");
    } else if ((user_input == 0 && secret == 2) || (user_input == 1 && secret == 0) || (user_input == 2 && secret == 1)) {
        printf("You win.\n");
    } else {
        printf("You lose.\n");
    }
    
    return 0;
}
