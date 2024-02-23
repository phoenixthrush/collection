use rand::Rng;
use std::cmp::Ordering;
use std::io;

fn main() {
    println!("Welcome to the Guess the Number game!");

    let secret_number = rand::thread_rng().gen_range(1..=100);
    let max_attempts = 5;
    let mut attempts = 0;

    loop {
        if attempts == max_attempts {
            println!("Sorry, you've run out of attempts. The correct number was: {}", secret_number);
            break;
        }

        println!("Attempt {}/{} - Please enter your guess:", attempts + 1, max_attempts);

        let mut guess = String::new();
        io::stdin().read_line(&mut guess)
            .expect("Failed to read line");

        let guess: u32 = match guess.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Invalid input. Please enter a number.");
                continue;
            }
        };

        println!("You guessed: {}", guess);

        match guess.cmp(&secret_number) {
            Ordering::Less => println!("Too small! Try again."),
            Ordering::Greater => println!("Too big! Try again."),
            Ordering::Equal => {
                println!("Congratulations! You guessed the correct number: {}", secret_number);
                break;
            }
        }

        attempts += 1;
    }
}
