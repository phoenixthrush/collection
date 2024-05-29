/**
 * Ziel:
 * Erstelle eine Klasse namens Auto mit verschiedenen Eigenschaften und einer
 * Methode. Schreibe anschließend eine Main-Klasse, um Objekte der Auto-Klasse
 * zu erstellen und zu testen.
 * 
 * Anweisungen:
 * Erstelle die Auto-Klasse:
 * 
 * Die Klasse Auto sollte die folgenden Eigenschaften (Attribute) haben:
 * marke (String): Die Marke des Autos (z.B. "Toyota", "BMW").
 * modell (String): Das Modell des Autos (z.B. "Corolla", "X5").
 * baujahr (int): Das Baujahr des Autos.
 * farbe (String): Die Farbe des Autos.
 * kilometerstand (double): Der aktuelle Kilometerstand des Autos.
 * Methode:
 * 
 * Erstelle eine Methode fahren, die eine Zahl (z.B. 100) als Parameter nimmt
 * und den Kilometerstand um diesen Wert erhöht.
 * Erstelle die Main-Klasse:
 * 
 * Erstelle eine Klasse namens Main mit einer main-Methode.
 * In der main-Methode:
 * Erstelle ein Objekt der Auto-Klasse.
 * Initialisiere das Objekt mit sinnvollen Werten.
 * Rufe die Methode fahren auf und erhöhe den Kilometerstand.
 * Gib die aktuellen Werte der Eigenschaften auf der Konsole aus.
 * Zusatz: Erweitere die Klassen mit einem geeigneten Konstruktor
 */

class Car {
    String brand;
    String model;
    int yearOfManufacture;
    String color;
    double mileage;

    public Car(String brand, String model, int yearOfManufacture, String color, double mileage) {
        this.brand = brand;
        this.model = model;
        this.yearOfManufacture = yearOfManufacture;
        this.color = color;
        this.mileage = mileage;
    }

    public void drive(double distance) {
        mileage += distance;
    }

    public String stats() {
        return brand + ", " + model + ", " + yearOfManufacture + ", " + color + ", " + mileage;
    }
}

public class Main {

    public static void main(String[] args) {
        Car car = new Car("VW", "Polo", 2010, "Matte Black", 145000);

        car.drive(35.5);
        System.out.println(car.stats());
    }
}
