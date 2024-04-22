import java.util.Scanner;
import java.util.Locale;

class PersonalInfo {
    public static void displayPersonalInfo() {
        /*
         * Einen vordefinierten Satz (z.B. "Hallo Welt, ich lerne Java!") verwendet.
         */

        System.out.print("-> Enter a sentence: ");

        Scanner scanner = new Scanner(System.in);
        String userInput = scanner.nextLine();

        System.out.println("Your sentence: " + userInput);

        /*
         * Fordere den Benutzer auf, zwei Zahlen einzugeben, und gib ihre Summe,
         * Differenz und das Produkt aus.
         */

        System.out.println();
        System.out.print("-> Enter first num: ");
        int userNumA = scanner.nextInt();

        System.out.print("-> Enter second num: ");
        int userNumB = scanner.nextInt();
        scanner.nextLine(); // clear \n for nextLine

        System.out.println("Sum: " + (userNumA + userNumB)); // sum
        System.out.println("Difference: " + (userNumA > userNumB ? userNumA - userNumB : userNumB - userNumA)); // difference
        System.out.println("Product: " + (userNumA * userNumB)); // product

        /*
         * Erstelle ein Programm, das den Benutzer nach seinem Vornamen, Nachnamen und
         * Geburtsjahr fragt.
         * Das Programm soll dann eine kurze Begrüßung und das Alter des Benutzers in
         * diesem Jahr ausgeben.
         */

        System.out.println();
        System.out.print("-> Enter your first name: ");
        String firstName = scanner.nextLine();

        System.out.print("-> Enter your last name:  ");
        String lastName = scanner.nextLine();

        System.out.print("-> Enter your Birthdate (dd.mm.yyyy):  ");
        String birthdate = scanner.nextLine();
        int birthyear = Integer.parseInt(birthdate.substring(10 - 4));

        System.out.println("Hello " + lastName + " " + firstName + ".");
        System.out.println("You were born in " + birthdate + ".");
        System.out.println("You are " + (2024 - birthyear) + " years old."); // uses year only
        System.out.println();

        /*
         * Fordere den Benutzer auf, mehrere Wörter einzugeben, bis das Wort "ende"
         * eingegeben wird.
         * Zähle, wie viele Wörter insgesamt eingegeben wurden (ohne "ende").
         */

        int count = -1; // don't count "ende"
        boolean flag = true;

        while (flag) {
            System.out.print("-> Enter a word (or \"end\" to exit): ");
            String userWord = scanner.nextLine();
            if (userWord.equals("end")) {
                flag = !flag;
            }
            count++;
        }

        System.out.println("You entered: " + count + " words.");
        scanner.close();
    }
}

class UnitConverter {
    public static void convertTemperature() {
        /*
         * Entwickle ein Programm, das den Benutzer auffordert, eine Temperatur
         * in Fahrenheit einzugeben, und diese in Celsius umrechnet.
         * Die Formel zur Umrechnung von Fahrenheit in Celsius lautet:
         * (x °F − 32) × 5/9 = y °C
         * 
         * Erweitere das Programm nun soweit das der Nutzer ausgewählen kann,
         * ob Celsius oder Fahrenheit umgerechnet werden soll.
         */

        Scanner scanner = new Scanner(System.in).useLocale(Locale.US);

        System.out.println("What do you want to convert from?");
        System.out.println("1. Fahrenheit to Celsius.");
        System.out.println("2. Celsius to Fahrenheit.");

        System.out.print("Select: ");
        int selection = scanner.nextInt();

        System.out.print("Enter a temperature: ");
        double temperature = scanner.nextDouble();

        double convertedTemperature;
        switch (selection) {
            case 1:
                convertedTemperature = (temperature - 32) * 5 / 9;
                System.out.printf("%.2f°F in Celsius is: %.2f\n", temperature, convertedTemperature);
                break;
            case 2:
                convertedTemperature = temperature * 9 / 5 + 32;
                System.out.printf("%.2f°C in Fahrenheit is: %.2f\n", temperature, convertedTemperature);
                break;
            default:
                System.out.println("Invalid selection.");
                break;
        }
        scanner.close();
    }
}

class GradeCalculator {
    public static void calculateAverageGrade() {
        /*
         * Schreibe ein Programm, das fortlaufend Noten von Prüfungen einliest,
         * bis der Benutzer eine spezielle Eingabe (z.B. -1) macht.
         * Anschließend soll das Programm den Durchschnitt dieser Noten berechnen und
         * ausgeben.
         */

        Scanner scanner = new Scanner(System.in);

        double sum = 0;
        int count = 0;

        while (true) {
            System.out.print("Enter a grade (or -1 to exit): ");
            int grade = scanner.nextInt();

            if (grade == -1) {
                break;
            }

            sum += grade;
            count++;
        }

        if (count > 0) {
            double avg = sum / count;
            System.out.println("Your average grade is: " + avg + ".");
        } else {
            System.out.println("No grades entered.");
        }

        scanner.close();
    }
}

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Select an option:");
        System.out.println("1. Display personal info");
        System.out.println("2. Convert temperature");
        System.out.println("3. Calculate average grade");

        System.out.print("Enter your choice: ");
        int choice = scanner.nextInt();

        switch (choice) {
            case 1:
                PersonalInfo.displayPersonalInfo();
                break;
            case 2:
                UnitConverter.convertTemperature();
                break;
            case 3:
                GradeCalculator.calculateAverageGrade();
                break;
            default:
                System.out.println("Invalid choice.");
                break;
        }

        scanner.close();
    }
}