import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        System.out.println("Ich hab dich lieb bebi <3");

        int age = 18;
        if (age > 17) {
            System.out.println("Hi!");
        } else {
            System.out.println("Bye!");
        }

        try (Scanner scanner = new Scanner(System.in)) {
            System.out.print("Enter num1: ");
            int num1 = scanner.nextInt();

            scanner.nextLine();
            System.out.print("Enter the operation [+,-,/,*]: ");
            String operator = scanner.nextLine();

            System.out.print("Enter num2: ");
            int num2 = scanner.nextInt();

            double result;
            switch (operator) {
                case "+":
                    result = num1 + num2;
                    break;
                case "-":
                    result = num1 - num2;
                    break;
                case "*":
                    result = num1 * num2;
                    break;
                case "/":
                    if (num2 != 0) {
                        result = (double) num1 / num2;
                    } else {
                        System.out.println("Cannot divide by zero.");
                        return;
                    }
                    break;
                default:
                    System.out.println("Please enter a valid operator.");
                    return;
            }

            System.out.println("Result: " + result);
        }
    }
}
