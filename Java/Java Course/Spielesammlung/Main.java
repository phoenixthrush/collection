import java.io.*;
import java.util.Scanner;

public class Main {

    private static final String FILE_PATH = "database.csv";
    private static final int MAX_GAMES = 100;
    private static String[] gameNames = new String[MAX_GAMES];
    private static String[] genres = new String[MAX_GAMES];
    private static int[] releaseYears = new int[MAX_GAMES];
    private static double[] ratings = new double[MAX_GAMES];
    private static int numGames = 0;

    public static void main(String[] args) {
        loadGameData(); 

        Scanner scanner = new Scanner(System.in);
        int choice;

        do {
            System.out.println("\n--- Videospieleverwaltung ---");
            System.out.println("1. Spiel hinzufügen");
            System.out.println("2. Spiel löschen");
            System.out.println("3. Spiele durchsuchen");
            System.out.println("4. Details aktualisieren");
            System.out.println("5. Alle Spiele anzeigen");
            System.out.println("6. Beenden");
            System.out.print("Wähle eine Option: ");
            choice = scanner.nextInt();
            scanner.nextLine(); 

            switch (choice) {
                case 1:
                    addGame(scanner);
                    break;
                case 2:
                    deleteGame(scanner);
                    break;
                case 3:
                    searchGames(scanner);
                    break;
                case 4:
                    updateGameDetails(scanner);
                    break;
                case 5:
                    displayAllGames();
                    break;
                case 6:
                    saveGameData(); 
                    break;
                default:
                    System.out.println("Ungültige Option.");
            }
        } while (choice != 6);

        scanner.close();
    }

    private static void loadGameData() {
        try (BufferedReader reader = new BufferedReader(new FileReader(FILE_PATH))) {
            String line;
            while ((line = reader.readLine()) != null) {
                String[] data = line.split(",");
                gameNames[numGames] = data[0];
                genres[numGames] = data[1];
                releaseYears[numGames] = Integer.parseInt(data[2]);
                ratings[numGames] = Double.parseDouble(data[3]);
                numGames++;
            }
        } catch (IOException e) {
            System.out.println("Fehler beim Laden der Spieldaten: " + e.getMessage());
        }
    }

    private static void saveGameData() {
        try (PrintWriter writer = new PrintWriter(new FileWriter(FILE_PATH))) {
            for (int i = 0; i < numGames; i++) {
                writer.println(gameNames[i] + "," + genres[i] + "," + releaseYears[i] + "," + ratings[i]);
            }
        } catch (IOException e) {
            System.out.println("Fehler beim Speichern der Spieldaten: " + e.getMessage());
        }
    }

    private static void addGame(Scanner scanner) {
        if (numGames >= MAX_GAMES) {
            System.out.println("Die maximale Anzahl an Spielen wurde erreicht. Keine weiteren Spiele können hinzugefügt werden.");
            return;
        }

        System.out.print("Name des Spiels: ");
        String name = scanner.nextLine();
        System.out.print("Genre: ");
        String genre = scanner.nextLine();
        System.out.print("Erscheinungsjahr: ");
        int year = scanner.nextInt();
        System.out.print("Bewertung: ");
        double rating = scanner.nextDouble();
        scanner.nextLine(); 

        gameNames[numGames] = name;
        genres[numGames] = genre;
        releaseYears[numGames] = year;
        ratings[numGames] = rating;
        numGames++;

        System.out.println("Spiel erfolgreich hinzugefügt!");
    }

    private static void deleteGame(Scanner scanner) {
        System.out.print("Name des zu löschenden Spiels: ");
        String nameToDelete = scanner.nextLine();

        boolean found = false;
        for (int i = 0; i < numGames; i++) {
            if (gameNames[i].equalsIgnoreCase(nameToDelete)) {

                for (int j = i; j < numGames - 1; j++) {
                    gameNames[j] = gameNames[j + 1];
                    genres[j] = genres[j + 1];
                    releaseYears[j] = releaseYears[j + 1];
                    ratings[j] = ratings[j + 1];
                }
                numGames--;
                found = true;
                System.out.println("Spiel erfolgreich gelöscht!");
                break;
            }
        }

        if (!found) {
            System.out.println("Das Spiel wurde nicht gefunden.");
        }
    }

    private static void searchGames(Scanner scanner) {
        System.out.print("Suchbegriff (Name oder Genre): ");
        String searchTerm = scanner.nextLine();

        boolean found = false;
        for (int i = 0; i < numGames; i++) {
            if (gameNames[i].toLowerCase().contains(searchTerm.toLowerCase()) || genres[i].toLowerCase().contains(searchTerm.toLowerCase())) {
                System.out.println("Name: " + gameNames[i]);
                System.out.println("Genre: " + genres[i]);
                System.out.println("Erscheinungsjahr: " + releaseYears[i]);
                System.out.println("Bewertung: " + ratings[i]);
                System.out.println();
                found = true;
            }
        }

        if (!found) {
            System.out.println("Kein Spiel gefunden, das dem Suchbegriff entspricht.");
        }
    }

    private static void updateGameDetails(Scanner scanner) {
        System.out.print("Name des zu aktualisierenden Spiels: ");
        String nameToUpdate = scanner.nextLine();

        boolean found = false;
        for (int i = 0; i < numGames; i++) {
            if (gameNames[i].equalsIgnoreCase(nameToUpdate)) {
                System.out.print("Neuer Name (leer lassen, wenn unverändert): ");
                String newName = scanner.nextLine();
                if (!newName.isEmpty()) {
                    gameNames[i] = newName;
                }
                System.out.print("Neues Genre (leer lassen, wenn unverändert): ");
                String newGenre = scanner.nextLine();
                if (!newGenre.isEmpty()) {
                    genres[i] = newGenre;
                }
                System.out.print("Neues Erscheinungsjahr (0 lassen, wenn unverändert): ");
                int newYear = scanner.nextInt();
                if (newYear != 0) {
                    releaseYears[i] = newYear;
                }
                System.out.print("Neue Bewertung (0 lassen, wenn unverändert): ");
                double newRating = scanner.nextDouble();
                if (newRating != 0) {
                    ratings[i] = newRating;
                }
                scanner.nextLine(); 
                found = true;
                System.out.println("Details erfolgreich aktualisiert!");
                break;
            }
        }

        if (!found) {
            System.out.println("Das Spiel wurde nicht gefunden.");
        }
    }

    private static void displayAllGames() {
        if (numGames == 0) {
            System.out.println("Keine Spiele in der Sammlung.");
            return;
        }

        System.out.println("Alle Spiele in der Sammlung:");
        for (int i = 0; i < numGames; i++) {
            System.out.println("Name: " + gameNames[i]);
            System.out.println("Genre: " + genres[i]);
            System.out.println("Erscheinungsjahr: " + releaseYears[i]);
            System.out.println("Bewertung: " + ratings[i]);
            System.out.println();
        }
    }
}