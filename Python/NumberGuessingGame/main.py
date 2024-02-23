import random

def guessing_game():
    print("Pick a number between 1 and 100: ")

    secret_number = random.randint(1, 100)
    attempts = 0

    while True:
        guess = int(input("Enter your guess: "))

        attempts += 1

        if guess < secret_number:
            print("Too low! Try again.")
        elif guess > secret_number:
            print("Too high! Try again.")
        else:
            print(f"You've guessed the number {secret_number} correctly!")
            print(f"It took you {attempts} attempts.")
            break

guessing_game()
