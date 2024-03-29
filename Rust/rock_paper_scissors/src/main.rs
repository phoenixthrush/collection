use rand::Rng;
use std::io;
use std::io::Write;

fn main() {
    let secret = rand::thread_rng().gen_range(0..3);

    println!("[0] Rock\n[1] Paper\n[2] Scissors\n");
    print!("-> ");
    io::stdout().flush().unwrap();

    let mut user_input = String::new();
    io::stdin()
        .read_line(&mut user_input)
        .expect("Failed to read line");

    let user_input: u32 = match user_input.trim().parse() {
        Ok(num) => num,
        Err(_) => {
            println!("Invalid input. Please enter a number.");
            return;
        }
    };

    if user_input >= 3 {
        println!("Invalid input. Please enter a number between 0 and 2.");
        return;
    }

    if user_input == secret {
        println!("It's a draw.");
    } else if (user_input == 0 && secret == 2) || (user_input == 1 && secret == 0) || (user_input == 2 && secret == 1) {
        println!("You win.");
    } else {
        println!("You lose.");
    }
}