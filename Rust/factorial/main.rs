use std::env;

fn factorial(n: usize) -> usize {
    (1..=n).product()
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

    let result = factorial(num);
    println!("Factorial of {} is {}", num, result);
}
