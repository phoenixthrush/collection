public class Main {

    public static void main(String[] args) {    
        /*
            Einen vordefinierten Satz (z.B. "Hallo Welt, ich lerne Java!") verwendet.
            Die Anzahl der Zeichen und die Anzahl der Wörter in dem Satz ausgibt.
            Den Satz in Großbuchstaben und Kleinbuchstaben ausgibt.
            Prüft, ob der Satz das Wort "Java" enthält.
        */

        String foo = "This is an example.";

        System.out.println(foo.length());
        System.out.println(foo.split(" ").length);
        System.out.println(foo.toUpperCase());
        System.out.println(foo.toLowerCase());
        System.out.println(foo.contains("Java"));

        /*
            String-Vergleich Schreibe ein Java-Programm, das zwei vordefinierte Strings vergleicht
            (z.B. "Hallo Welt" und "Hallo Welt") und ausgibt, ob sie gleich sind.
        */

        System.out.println(foo.equals("This is an example."));
        System.out.println(foo.equals("This is a banana."));

        /*
            Manipulation von Strings Schreibe ein Java-Programm, das einen vordefinierten Satz
            umkehrt und jedes Wort des Satzes in umgekehrter Reihenfolge ausgibt.
        */

        System.out.println(new StringBuilder(foo).reverse().toString());
    }
}