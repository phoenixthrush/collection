/*
    * Ziel: Entwickle ein Programm, das ein unsortiertes Array von Ganzzahlen mit
    * dem Bubble-Sort-Algorithmus sortiert und das sortierte Array in eine
    * ArrayListe überträgt. Anschließend sollen die Inhalte der Liste ausgegeben
    * werden.
    * 
    * Einführung in Bubble Sort
    * Bubble Sort ist ein einfacher Sortieralgorithmus, der durch wiederholtes
    * Durchlaufen der Liste, Vergleichen benachbarter Elemente und Tauschen dieser
    * Elemente arbeitet, falls sie in der falschen Reihenfolge sind. Der Prozess
    * wird fortgesetzt, bis die Liste vollständig sortiert ist. Es ist ein
    * intuitiver Algorithmus, aber nicht besonders effizient für große Datenmengen.
    * 
    * Schritte des Bubble Sort
    * Beginne am Anfang des Arrays.
    * Vergleiche jedes Paar benachbarter Elemente.
    * Wenn das erste Element größer als das zweite ist, tausche sie.
    * Führe diesen Prozess für die gesamte Liste durch.
    * Wiederhole die Schritte, bis keine weiteren Tausche notwendig sind (das
    * größte Element hat sich am Ende des Arrays "abgesetzt").
    * Aufgabenstellung
    * Implementiere den Bubble-Sort-Algorithmus, um ein Array von Ganzzahlen zu
    * sortieren
    * Übertrage das sortierte Array in eine ArrayList
    * Gib die sortierte Liste auf der Konsole aus.
*/

import java.util.ArrayList;

public class Main {
    public static void bubbleSort(int[] array) {
        int n = array.length;
        boolean swapped;

        do {
            swapped = false;
            for (int i = 0; i < n - 1; i++) {

                if (array[i] > array[i + 1]) {

                    int temp = array[i];
                    array[i] = array[i + 1];
                    array[i + 1] = temp;
                    swapped = true;
                }
            }

            n--;
        } while (swapped);
    }

    public static void main(String[] args) {
        int[] unsortedArray = { 15, 3, 8, 4, 2, 9, 1, 73 };

        bubbleSort(unsortedArray);

        ArrayList<Integer> sortedList = new ArrayList<>();
        for (int num : unsortedArray) {
            sortedList.add(num);
        }

        System.out.println(sortedList);
    }
}