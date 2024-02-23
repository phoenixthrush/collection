import base64
import os

def add_to_clipboard(text):
    command = 'echo ' + text.strip() + '| clip'
    os.system(command)

def clear():
    os.system('cls' if os.name == 'nt' else 'clear')

def base64_encode(data):
    encoded_str = base64.b64encode(data.encode("utf-8")).decode("utf-8")
    add_to_clipboard(encoded_str)
    print("\nEncoded String:")
    print(encoded_str)
    print()
    return encoded_str

def base64_decode(data):
    decoded_str = base64.b64decode(data.encode("utf-8")).decode("utf-8")
    add_to_clipboard(decoded_str)
    print("\nDecoded String:")
    print(decoded_str)
    return decoded_str

def save_to_file(data, filename):
    desktop_path = os.path.join(os.path.expanduser('~'), 'Desktop', filename)
    with open(desktop_path, "w") as f:
        f.write(data)
    print("\nSaved to Desktop as", filename)

def ask_for_path(action):
    file_path = input("Drag and drop your file here: ")
    if os.path.isfile(file_path):
        with open(file_path, "r") as f:
            file_data = f.read()
        if action == 'encode':
            data = base64_encode(file_data)
        else:
            data = base64_decode(file_data)
        save = input("Do you want to save it to the Desktop? [y/n] ").lower()
        if save == "y":
            filename = "encoded.txt" if action == 'encode' else "decoded.txt"
            save_to_file(data, filename)
    else:
        print("File not found!")

def menu():
    clear()
    print("Base64 Encoder/Decoder - Phoenixthrush v.1.0")
    print("Made by my Asian cat\n")
    choice = input("Do you want to encode or decode the file? [e/d] ").lower()
    if choice == "e":
        ask_for_path('encode')
    elif choice == "d":
        ask_for_path('decode')
    else:
        clear()
        print("That is not an option!\n")
        menu()

if __name__ == "__main__":
    menu()
