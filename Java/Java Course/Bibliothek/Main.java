import java.util.ArrayList;

/**
 * Main
 */

class Buch {
    String title;
    String autor;
    int erscheinungsjahr;
    int seitenanzahl;
    String isbn;

    public Buch(String title, String autor, int erscheinungsjahr, int seitenanzahl, String isbn) {
        this.title = title;
        this.autor = autor;
        this.erscheinungsjahr = erscheinungsjahr;
        this.seitenanzahl = seitenanzahl;
        this.isbn = isbn;
    }

    public void zeigeDetails() {
        System.out.println(title + ", " + autor + ", " + erscheinungsjahr + ", " + seitenanzahl + ", " + isbn);
    }
}

class Bibliothek {
    ArrayList<Buch> array = new ArrayList<Buch>();

    public void buchHinzufuegen(Buch buch) {
        array.add(buch);
    }

    public void buchEntfernen(Buch buch) {
        array.remove(buch);
    }

    public void zeigeAlleBuecher() {
        for (int i = 0; i < array.size(); i++) {
            array.get(i).zeigeDetails();
        }
    }
}

public class Main {

    public static void main(String[] args) {
        Bibliothek bibliothek = new Bibliothek();
        bibliothek.buchHinzufuegen(
                new Buch("Romeo and Juliet / Romeo und Julia", "William Shakespeare", 1986, 341, "978-1855180161"));
        bibliothek.buchHinzufuegen(
                new Buch("Winnetou. Erster Band", "Karl May", 1893, 544, "978-3-7802-0007-5"));
        bibliothek.buchHinzufuegen(
                new Buch("Das Parfum: Die Geschichte eines Mörders", "Patrick Süskind", 1994, 336, "978-3257228007"));
        bibliothek.zeigeAlleBuecher();
    }
}