#include <iostream>
#include <cstdlib>
#include <ctime>

using namespace std;

int main() {
    int secret;
    int guessed_num;
    int tries = 0;
    int difficulty = 0;
    string diff;

    cout << "Welcome to the guessing game!" << endl;
    cout << "You have 3 tries to guess the random number." << endl;
    cout << "Choose the difficulty level: easy, normal, hard, or extreme." << endl;
    cout << "Enter the difficulty: ";
    getline(cin, diff);

    if (diff == "easy") {
        difficulty = 5;
    } else if (diff == "normal") {
        difficulty = 10;
    } else if (diff == "hard") {
        difficulty = 20;
    } else if (diff == "extreme") {
        difficulty = 50;
    } else {
        cout << "Invalid difficulty level!" << endl;
        return 1; 
    }

    srand(time(nullptr));
    secret = rand() % (difficulty + 1); 

    do {
        cout << "\nEnter your guess: ";
        cin >> guessed_num;
        if (guessed_num < 0 || guessed_num > difficulty) {
            cout << "Invalid guess! Enter a number between 0 and " << difficulty << "." << endl;
            continue; 
        }
        tries++;
        if (secret < guessed_num) {
            cout << "Your number is too big!" << endl;
        } else if (secret > guessed_num) {
            cout << "Your number is too small!" << endl;
        } else {
            cout << "Congratulations! You guessed it right!" << endl;
            break; 
        }
    } while (tries < 3);

    if (tries == 3) {
        cout << "Out of guesses! The secret number was: " << secret << endl;
    }

    cout << "Press enter to exit.";
    cin.ignore(); 
    cin.get(); 
    return 0;
}