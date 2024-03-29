import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        System.out.println("Enter your number: ");

        Scanner scanner = new Scanner(System.in);
        int num = scanner.nextInt();
        scanner.close();

        if (num % 2 == 0) {
            System.out.println("Is Even.");
        } else {
            System.out.println("Is Odd.");
        }
    }
}