import java.util.HashMap;
import java.util.Map;

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
        return "Game{" +
                "name='" + name + '\'' +
                ", genre='" + genre + '\'' +
                ", year=" + year +
                ", rating=" + rating +
                '}';
    }
}

public class Main {

    public static void main(String[] args) {
        HashMap<String, Game> collection = new HashMap<>();

        collection.put("The Legend of Zelda: Breath of the Wild", new Game("The Legend of Zelda: Breath of the Wild", "Action-Adventure", 2017, 9.5));
        collection.put("Super Mario Odyssey", new Game("Super Mario Odyssey", "Action-Adventure", 2017, 9.0));
        collection.put("The Witcher 3: Wild Hunt", new Game("The Witcher 3: Wild Hunt", "Action-RPG", 2015, 9.3));
        collection.put("Red Dead Redemption 2", new Game("Red Dead Redemption 2", "Action-Adventure", 2018, 9.5));
        collection.put("The Last of Us Part II", new Game("The Last of Us Part II", "Action-Adventure", 2020, 9.5));

        addGame(collection, "New Game", "Action", 2022, 8.5);
        deleteGame(collection, "The Witcher 3: Wild Hunt");
        searchGameByName(collection, "Super Mario Odyssey");
        updateGameDetails(collection, "The Legend of Zelda: Breath of the Wild", "Action-Adventure", 2018, 9.6);
        displayAllGames(collection);
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
