use std::env;

fn check_prime_number(num: usize) -> bool {
    if num < 2 {
        return false;
    }

    let sqrt_num = (num as f64).sqrt() as usize;
    for n in 2..=sqrt_num {
        if num % n == 0 {
            return false;
        }
    }

    true
}

fn main() {
    let args: Vec<String> = env::args().collect();

    if args.len() != 2 {
        println!("Please provide exactly one argument.");
        return;
    }

    let num: usize = match args[1].trim().parse() {
        Ok(num) => num,
        Err(_) => {
            println!("Please enter a valid integer.");
            return;
        }
    };

    if check_prime_number(num) {
        println!("{} is a prime number!", num);
    } else {
        println!("{} is not a prime number.", num);
    }
}
