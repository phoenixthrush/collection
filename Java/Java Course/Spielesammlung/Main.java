import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

/*
* Entwickle ein Programm, das eine Sammlung von Videospielen verwaltet. Dieses
* System soll die Möglichkeit bieten, Spiele hinzuzufügen, zu löschen, zu
* durchsuchen und deren Details zu aktualisieren.
* 
* Funktionen:
* - Spiel hinzufügen: Füge neue Spiele mit Details wie Name, Genre,
* - Erscheinungsjahr und Bewertung hinzu.
* - Spiel löschen: Lösche ein Spiel anhand seines Namens aus der Sammlung.
* - Spiel durchsuchen: Suche Spiele nach Namen oder Genre.
* - Details aktualisieren: Aktualisiere Informationen zu einem vorhandenen Spiel.
* - Alle Spiele anzeigen: Zeige alle Spiele in der Sammlung an.
*/

class Game {
    String name;
    String genre;
    int year;
    double rating;

    Game(String name, String genre, int year, double rating) {
        this.name = name;
        this.genre = genre;
        this.year = year;
        this.rating = rating;
    }

    @Override
    public String toString() {
        return "{" +
                "\"name\": \"" + name + "\", " +
                "\"genre\": \"" + genre + "\", " +
                "\"year\": " + year + ", " +
                "\"rating\": " + rating +
                "}";
    }
}

public class Main {

    public static void main(String[] args) {
        HashMap<String, Game> collection = new HashMap<>();

        /*
         * collection.put("The Legend of Zelda: Breath of the Wild", new
         * Game("The Legend of Zelda: Breath of the Wild", "Action-Adventure", 2017,
         * 9.5));
         * collection.put("Super Mario Odyssey", new Game("Super Mario Odyssey",
         * "Action-Adventure", 2017, 9.0));
         * collection.put("The Witcher 3: Wild Hunt", new
         * Game("The Witcher 3: Wild Hunt", "Action-RPG", 2015, 9.3));
         * collection.put("Red Dead Redemption 2", new Game("Red Dead Redemption 2",
         * "Action-Adventure", 2018, 9.5));
         * collection.put("The Last of Us Part II", new Game("The Last of Us Part II",
         * "Action-Adventure", 2020, 9.5));
         * 
         * addGame(collection, "New Game", "Action", 2022, 8.5);
         * deleteGame(collection, "The Witcher 3: Wild Hunt");
         * searchGameByName(collection, "Super Mario Odyssey");
         * updateGameDetails(collection, "The Legend of Zelda: Breath of the Wild",
         * "Action-Adventure", 2018, 9.6);
         * displayAllGames(collection);
         */

        Scanner scanner = new Scanner(System.in);
        System.out.println("--- Video Game Collection ---");
        System.out.println("1. Add Game");
        System.out.println("2. Delete Game");
        System.out.println("3. Search Game");
        System.out.println("4. Update Game");
        System.out.println("5. Display Games");
        System.out.println("6. Exit");
        System.out.print("Please select: ");

        int choice = scanner.nextInt();
        scanner.nextLine();

        switch (choice) {
            case 1:
                System.out.print("Title: ");
                String name = scanner.nextLine();
                System.out.print("Genre: ");
                String genre = scanner.nextLine();
                System.out.print("Year: ");
                int year = scanner.nextInt();
                System.out.print("Rating: ");
                double rating = scanner.nextDouble();
                addGame(collection, name, genre, year, rating);
                break;
            case 2:
                System.out.print("Title: ");
                String name2 = scanner.nextLine();
                deleteGame(collection, name2);
                break;
            case 3:
                System.out.print("Title: ");
                String name3 = scanner.nextLine();
                searchGameByName(collection, name3);
                break;
            case 4:
                System.out.print("Title: ");
                String name4 = scanner.nextLine();
                System.out.print("Genre: ");
                String genre4 = scanner.nextLine();
                System.out.print("Year: ");
                int year4 = scanner.nextInt();
                System.out.print("Rating: ");
                double rating4 = scanner.nextDouble();
                deleteGame(collection, name4);
                addGame(collection, name4, genre4, year4, rating4);
                break;
            case 5:
                displayAllGames(collection);
                break;
            case 6:
                scanner.close();
                return;
            default:
                displayAllGames(collection);
                break;
        }
        scanner.close();
        displayAllGames(collection); // DEBUG
        try (BufferedWriter writer = new BufferedWriter(new FileWriter("data.json", true))) {
            for (Game game : collection.values()) {
                writer.append(game.toString());
                writer.newLine();
            }
            System.out.println("Data appended to file successfully.");
        } catch (IOException e) {
            System.err.println("Error appending data to file: " + e.getMessage());
        }
    }

    static void addGame(Map<String, Game> collection, String name, String genre, int year, double rating) {
        collection.put(name, new Game(name, genre, year, rating));
    }

    static void deleteGame(Map<String, Game> collection, String name) {
        collection.remove(name);
    }

    static void searchGameByName(Map<String, Game> collection, String name) {
        Game game = collection.get(name);
        if (game != null) {
            System.out.println("Found: " + game);
        } else {
            System.out.println("Game not found.");
        }
    }

    static void updateGameDetails(Map<String, Game> collection, String name, String genre, int year, double rating) {
        Game game = collection.get(name);
        if (game != null) {
            game.genre = genre;
            game.year = year;
            game.rating = rating;
        } else {
            System.out.println("Game not found.");
        }
    }

    static void displayAllGames(Map<String, Game> collection) {
        for (Game game : collection.values()) {
            System.out.println(game);
        }
    }
}
