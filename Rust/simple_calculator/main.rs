use std::io;

fn get_input(prompt: &str) -> String {
    println!("{}", prompt);
    let mut input = String::new();
    io::stdin().read_line(&mut input).expect("Failed to read line.");
    input.trim().to_string()
}

fn calculate(num1: i32, operator: &str, num2: i32) -> i32 {
    match operator {
        "+" => num1 + num2,
        "-" => num1 - num2,
        "*" => num1 * num2,
        "/" => {
            if num2 != 0 {
                num1 / num2
            } else {
                panic!("Division by zero is not allowed.");
            }
        }
        _ => panic!("Wrong operator used."),
    }
}

fn main() {
    let num1: i32 = get_input("Please enter num1:").parse().expect("Please enter a valid number.");
    let operator = get_input("Please enter an operator: [+ - * /] ");
    let num2: i32 = get_input("Please enter num2:").parse().expect("Please enter a valid number.");

    let result = calculate(num1, &operator, num2);
    println!("{}", result);
}
