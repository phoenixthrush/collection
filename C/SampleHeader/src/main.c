#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "../include/calc.h"

int main(int argc, char *argv[]) {
    if (argc != 4) {
        printf("Usage: %s <operation> <number1> <number2>\n", argv[0]);
        return 1;
    }

    char *operation = argv[1];
    int num1 = atoi(argv[2]);
    int num2 = atoi(argv[3]);
    int result;

    if (strcmp(operation, "--add") == 0) {
        result = add(num1, num2);
    } else if (strcmp(operation, "--subtract") == 0) {
        result = subtract(num1, num2);
    } else if (strcmp(operation, "--divide") == 0) {
        result = divide(num1, num2);
    } else if (strcmp(operation, "--multiply") == 0) {
        result = multiply(num1, num2);
    } else {
        printf("Invalid operation: %s\n", operation);
        return 1;
    }

    printf("%d\n", result);
    return 0;
}
