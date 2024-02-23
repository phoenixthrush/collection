#include <stdio.h>

#define LIFE_EXPECTANCY_WOMAN 83.2
#define LIFE_EXPECTANCY_MEN 78.3

int main() {
    float currentAge;

    printf("Enter your current age: ");
    scanf("%f", &currentAge);

    float yearsLeftMen = LIFE_EXPECTANCY_MEN - currentAge;
    float lifePercentageMen = (currentAge / LIFE_EXPECTANCY_MEN) * 100;

    float yearsLeftWomen = LIFE_EXPECTANCY_WOMAN - currentAge;
    float lifePercentageWomen = (currentAge / LIFE_EXPECTANCY_WOMAN) * 100;

    printf("\nMen:\nYears left: %.1f\n", yearsLeftMen);
    printf("Years lived: %.1f%%\n", lifePercentageMen);

    printf("\nWomen:\nYears left: %.1f\n", yearsLeftWomen);
    printf("Years lived: %.1f%%\n", lifePercentageWomen);

    return 0;
}
