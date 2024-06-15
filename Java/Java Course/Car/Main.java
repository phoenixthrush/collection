import java.util.Scanner;

class Car {
    public int kilometers;
    public int fuel;
    public int money;

    public Car(int kilometers, int fuel, int money) {
        this.kilometers = kilometers;
        this.fuel = fuel;
        this.money = money;
    }

    public void drive() {
        if (fuel >= 5) {
            kilometers += 10;
            fuel -= 5;
        }    
    }

    public void refill() {
        if (fuel < 100) {
            int amount = 100 - fuel;
            fuel = 100;
            money -= amount;
        }
    }
}

public class Main {
    public static void clearScreen() {  
        System.out.print("\033[H\033[2J");  
        System.out.flush();  
    }

    public static void main(String[] args) {
        Car car = new Car(0, 50, 500);
        Scanner scanner = new Scanner(System.in);

        clearScreen();
        while (true) {
            System.out.println("0 -> Drive");
            System.out.println("1 -> Refill");
            System.out.println("2 -> Quit");
            System.out.print("\nWhat do you want to do? ");

            int choice = scanner.nextInt();
            switch (choice) {
                case 0:
                    car.drive();
                    break;
                case 1:
                    car.refill();
                    break;
                case 2:
                    return;
            }

            clearScreen();
            System.out.printf("Kilometers: %d\nFuel: %d\nMoney: %d\n\n", car.kilometers, car.fuel, car.money);
        }
    }
}
