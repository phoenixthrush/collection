import java.util.ArrayList;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Task 1:");
        task_1(scanner);
        System.out.println("\nTask 2:");
        task_2(scanner);
        System.out.println("\nTask 3:");
        task_3();
        System.out.println("\nTask 4:");
        task_4();
        scanner.close();
    }

    /*
     * Aufgabe 1: Verwalten einer Einkaufsliste
     * Ziel: Erstelle ein Programm, das eine Einkaufsliste verwaltet. Das Programm
     * soll dem Benutzer ermöglichen, Artikel hinzuzufügen, zu entfernen und die
     * gesamte Liste anzuzeigen.
     * 
     * Anforderungen:
     * 
     * Verwende eine ArrayList zur Speicherung der Einkaufsartikel (als String).
     * Implementiere Funktionen zum Hinzufügen und Entfernen von Artikeln sowie zum
     * Anzeigen der gesamten Liste.
     * Nutze eine For-Each-Schleife, um alle Artikel in der Liste durchzugehen und
     * anzuzeigen.
     * 
     */
    static void task_1(Scanner scanner) {
        ArrayList<String> items = new ArrayList<String>();

        int selection = 0;
        do {
            System.out.println("Shopping Cart");
            System.out.println("===============");
            System.out.println("1. Add Item");
            System.out.println("2. Remove Item");
            System.out.println("3. List Item(s)");
            System.out.println("4. Exit");
            System.out.println("===============");
            System.out.print("Selection: ");
            selection = scanner.nextInt();
            scanner.nextLine();

            switch (selection) {
                case 1:
                    System.out.print("Enter Item: ");
                    String addItem = scanner.nextLine();
                    items.add(addItem);
                    break;
                case 2:
                    System.out.print("Enter Item: ");
                    String removeItem = scanner.nextLine();
                    items.remove(removeItem);
                    break;
                case 3:
                    System.out.println("All items: ");
                    for (String i : items) {
                        System.out.println(i);
                    }
                    break;
                case 4:
                    break;
                default:
                    System.out.println("Invalid selection. Please try again.");
                    break;
            }
        } while (selection != 4);
    }

    /*
     * Aufgabe 2: Bewertungen sammeln und Durchschnitt berechnen
     * Ziel: Schreibe ein Programm, das eine Reihe von Bewertungen (Ganzzahlen) von
     * Benutzern sammelt, sie in einer ArrayList speichert und den Durchschnitt
     * dieser Bewertungen berechnet.
     * 
     * Anforderungen:
     * 
     * Lese mehrere Bewertungen vom Benutzer ein, bis eine spezielle Eingabe (z.B.
     * -1) das Ende der Eingabe signalisiert.
     * Speichere diese Bewertungen in einer ArrayList.
     * Berechne den Durchschnitt der Bewertungen mithilfe einer For-Each-Schleife
     * und gib ihn aus.
     */
    static void task_2(Scanner scanner) {
        ArrayList<Integer> grades = new ArrayList<Integer>();

        int sum = 0;
        while (true) {
            System.out.println("Enter a grade: ");
            grades.add(scanner.nextInt());
            if (grades.getLast() == -1) {
                grades.removeLast();
                break;
            }
        }

        for (int num : grades) {
            sum += num;
        }

        System.out.println("Average: " + (sum / grades.size()));
    }

    /*
     * Aufgabe 3: Array zu ArrayList
     * Ziel: Schreibe ein Programm, das ein Array von Ganzzahlen in eine ArrayList
     * übergeben bekommt und konvertiert sowie abschließend die Werte ausgibt.
     * 
     * Anforderungen:
     * 
     * Definiere ein Array von Ganzzahlen.
     * Konvertiere dieses Array in eine ArrayList.
     * Verwende eine For-Each-Schleife, um die Werte der ArrayList auszugeben.
     * 
     */
    static void task_3() {
        ArrayList<Integer> nums_ArrayList = new ArrayList<Integer>();
        int[] nums_array = { 2, 4, 6, 8, 10 };

        for (int num : nums_array) {
            nums_ArrayList.add(num);
        }

        for (int num : nums_ArrayList) {
            System.out.println(num);
        }
    }

    /*
     * Aufgabe 4: ArrayList zu Array
     * Ziel: Erstelle eine Methode, das eine ArrayList von Zeichenketten übergeben
     * bekommt und in ein Array von Zeichenketten konvertiert sowie abschließend die
     * Elemente des Arrays ausgibt.
     * 
     * Anforderungen:
     * 
     * Fülle eine ArrayList mit mehreren Zeichenketten.
     * Konvertiere die ArrayList in ein Array von Zeichenketten.
     * Verwende eine Standard-For-Schleife, um jedes Element des Arrays auszugeben.
     */
    static void task_4() {
        ArrayList<String> stringArrayList = new ArrayList<String>();
        stringArrayList.add("Hello");
        stringArrayList.add("World");
        stringArrayList.add("!");

        String[] stringArray = arrayListToArray(stringArrayList);

        for (String str : stringArray) {
            System.out.println(str);
        }
    }

    static String[] arrayListToArray(ArrayList<String> arrayList) {
        return arrayList.toArray(new String[0]);
    }
}