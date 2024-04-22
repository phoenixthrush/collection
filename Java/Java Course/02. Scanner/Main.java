import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        /*
            Einen vordefinierten Satz (z.B. "Hallo Welt, ich lerne Java!") verwendet.
        */

        System.out.print("-> Enter a sentence: ");

        Scanner scanner = new Scanner(System.in);
        String userInput = scanner.nextLine();
        
        System.out.println("Your sentence: " + userInput);

        /*
            Fordere den Benutzer auf, zwei Zahlen einzugeben, und gib ihre Summe, Differenz und das Produkt aus.
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
            Erstelle ein Programm, das den Benutzer nach seinem Vornamen, Nachnamen und Geburtsjahr fragt.
            Das Programm soll dann eine kurze Begrüßung und das Alter des Benutzers in diesem Jahr ausgeben.
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
        System.out.println("You are " + (2024 - birthyear) + " years old.");
        System.out.println();

        /*
            Fordere den Benutzer auf, mehrere Wörter einzugeben, bis das Wort "ende" eingegeben wird.
            Zähle, wie viele Wörter insgesamt eingegeben wurden (ohne "ende").
        */

        int count = -1; // don't count "ende"
        boolean flag = true;
        
        while (flag) {
            System.out.print("-> Enter a word: ");
            String userWord = scanner.nextLine();
            if (userWord.equals("ende")) {
                flag = !flag;
            }
            count++;
        }

        System.out.println("You entered: " + count + " words.");
        scanner.close();
    }
}