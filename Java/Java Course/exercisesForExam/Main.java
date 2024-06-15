import java.util.Scanner;
import java.util.ArrayList;

class Movie {
	String title;
	String director;
	int duration;

	public Movie(String title, String director, int duration) {
		this.title = title;
		this.director = director;
		this.duration = duration;
	}

	public void showInfo() {
		System.out.printf("\nTitle:    %s\n", title);
		System.out.printf("Director: %s\n", director);
		System.out.printf("Duration: %s\n", duration);
	}
}

public class Main {
	// Task 1
	public static int berechneQuadrat(int num) {
		return num * num;
	}

	// Task 2
	public static String getMonth(int month) { 
		String months[] = {"January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"};

        return months[month - 1];       
	}

	// Task 3
	public static void loops() {
		int array[] = new int[10];
		int count = 0;

		System.out.println("\nFor loop: ");		
		for (int i = 0; i < 10; i++) {
			array[i] = i + 1;
			System.out.println(array[i]);
		}

		System.out.println("\nWhile: ");
		while (count < 10) {
			System.out.println(array[count]);
			count++;
		}

		System.out.println("\nFor each: ");
		for (int num : array) {
			System.out.println(num);
		}
	}

	// Task 4
	public static int sum(int[] array) {
		int sum = 0;

		for (int num : array) {
			sum += num;
		}

		return sum;
	}

	public static int sum(ArrayList<Integer> array) {
    	int sum = 0;

		for (int num : array) {
            sum += num;
        }

        return sum;
	}

	public static boolean isLongerThan(Movie foo, Movie bar) {
        return foo.duration > bar.duration;
	}

	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);

		// Task 1
		System.out.print("Enter a num: ");
		int num = scanner.nextInt();
		System.out.printf("Square of %s is %s\n", num, berechneQuadrat(num));	

		// Task 2
		System.out.print("\nEnter a month as num: ");
		num = scanner.nextInt();
		System.out.printf("The %s. month is %s\n", num, getMonth(num));

		scanner.close();

		// Task 3
		loops();

		// Task 4
		int size = 10;

		int foo[] = new int[size];
        ArrayList<Integer> bar = new ArrayList<Integer>();
    
        for (int i = 0; i < size; i++) {
            foo[i] = i * 2;
        }
        
        for (int j = 0; j < size; j++) {
            bar.add(j * 2);
        }

		System.out.printf("\nSum of array is %s\n", sum(foo));
		System.out.printf("Sum of ArrayList is %s\n", sum(bar));
		
		// Task 5
		Movie movie1 = new Movie("The Hitchhiker's Guide to the Galaxy", "Garth Jennings", 109);
		Movie movie2 = new Movie("Puss in Boots: The Last Wish", "Joel Crawford", 102);

		movie1.showInfo();
		movie2.showInfo();

		System.out.printf("\n%s\nis %slonger than\n%s\n", movie1.title, isLongerThan(movie1, movie2) ? "" : "not ", movie2.title);
	}
}
