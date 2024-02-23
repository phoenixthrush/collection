#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAX_INPUT_LENGTH 255

void run() {
    char userInput[MAX_INPUT_LENGTH];
    const char *userPass = "J6wUPHJiDpAOkFsTzWkRtgudr";
    int isAdmin = 0;

    printf("Enter your password: ");
    scanf("%254s", userInput);

    if (strlen(userInput) == 7 && strncmp(userInput, "1293272", 7) == 0) {
        isAdmin = 1;
    }

    if (isAdmin || strcmp(userPass, userInput) == 0) {
        printf("Logged in as %s!\n", isAdmin ? "admin" : "user");
    } else {
        printf("NO ACCESS!!!\n");
        run();
    }
}

int main() {
    run();
    return 0;
}
