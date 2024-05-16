/* Fordere den Benutzer auf, zwei Zahlen einzugeben, und gib ihre Summe,
 Differenz und das Produkt aus. Verwende je Funktionalität eine Methode.
 */

import java.util.HashMap;
import java.util.Map;

class Math {

    public static double sum(double a, double b) {
        return a + b;
    }

    public static double difference(double a, double b) {
        if (a < b) {
            return b - a;
        } else {
            return a - b;
        }
    }

    public static double product(double a, double b) {
        return a * b;
    }
}

/*
 * Ziel: Entwickle ein Programm, das den Benutzer auffordert, eine Temperatur in
 * Fahrenheit einzugeben, und diese in Celsius umrechnet (eigene Methode). Die
 * Formel zur Umrechnung von Fahrenheit in Celsius lautet:
 */
class UnitConverter {
    public static double fahrenheitToCelcius(double temperature) {
        return (temperature - 32) * 5 / 9;
    }

    public static double celsiusToFahrenheit(double temperature) {
        return temperature * 9 / 5 + 32;
    }
}

/*
 * Ziel: Entwickle ein Programm, das eine Sammlung von Videospielen verwaltet.
 * Dieses System soll die Möglichkeit bieten, Spiele hinzuzufügen, zu löschen,
 * zu durchsuchen und deren Details zu aktualisieren.
 * Funktionen:
 * 
 * Spiel hinzufügen: Füge neue Spiele mit Details wie Name, Genre,
 * Erscheinungsjahr und Bewertung hinzu.
 * Spiel löschen: Lösche ein Spiel anhand seines Namens aus der Sammlung.
 * Spiel durchsuchen: Suche Spiele nach Namen oder Genre.
 * Details aktualisieren: Aktualisiere Informationen zu einem vorhandenen Spiel.
 * Alle Spiele anzeigen: Zeige alle Spiele in der Sammlung an.
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

class GameCollection {
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

public class Main {
    public static void main(String[] args) {
        double sumA = 5.2;
        double sumB = 63.8;
        double differenceA = 3.8;
        double differenceB = 72.8;
        double productA = 3;
        double productB = 23;
        double fahrenheit = 156.2;
        double celsius = 69;

        System.out.println("Sum: " + Math.sum(sumA, sumB));
        System.out.println("Difference: " + Math.difference(differenceA, differenceB));
        System.out.println("Product: " + Math.product(productA, productB));
        System.out.println(fahrenheit + "°F is " + UnitConverter.fahrenheitToCelcius(fahrenheit) + " °C");
        System.out.println(celsius + "°C is " + UnitConverter.celsiusToFahrenheit(celsius) + " °F");

        HashMap<String, Game> collection = new HashMap<>();
        
        collection.put("The Legend of Zelda: Breath of the Wild", new Game("The Legend of Zelda: Breath of the Wild", "Action-Adventure", 2017, 9.5));
        collection.put("Super Mario Odyssey", new Game("Super Mario Odyssey", "Action-Adventure", 2017, 9.0));
        collection.put("The Witcher 3: Wild Hunt", new Game("The Witcher 3: Wild Hunt", "Action-RPG", 2015, 9.3));
        collection.put("Red Dead Redemption 2", new Game("Red Dead Redemption 2", "Action-Adventure", 2018, 9.5));
        collection.put("The Last of Us Part II", new Game("The Last of Us Part II", "Action-Adventure", 2020, 9.5));
        
        GameCollection.addGame(collection, "New Game", "Action", 2022, 8.5);
        GameCollection.deleteGame(collection, "The Witcher 3: Wild Hunt");
        GameCollection.searchGameByName(collection, "Super Mario Odyssey");
        GameCollection.updateGameDetails(collection, "The Legend of Zelda: Breath of the Wild", "Action-Adventure", 2018, 9.6);
        
        GameCollection.displayAllGames(collection);
    }
}