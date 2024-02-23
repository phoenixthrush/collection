def convert_temperature():
    print()
    print("1 -- Celsius to Kelvin!")
    print("2 -- Celsius to Fahrenheit")
    print("3 -- Kelvin to Celsius")
    print("4 -- Kelvin to Fahrenheit")
    print("5 -- Fahrenheit to Celsius")
    print("6 -- Fahrenheit to Kelvin")
    print()

    x = input("Please enter an option!: ")

    if x not in ["1", "2", "3", "4", "5", "6"]:
        print("Dude that is not an option!")
        return

    temp = float(input("Enter your temperature value: "))

    if x == "1":
        result = temp + 273.15
        output_unit = "Kelvin"
    elif x == "2":
        result = 32.0 + 1.8 * temp
        output_unit = "Fahrenheit"
    elif x == "3":
        result = temp - 273.15
        output_unit = "Celsius"
    elif x == "4":
        result = temp * 1.8 - 459.67
        output_unit = "Fahrenheit"
    elif x == "5":
        result = 5.0 * (temp - 32.0) / 9.0
        output_unit = "Celsius"
    elif x == "6":
        result = (temp + 459.67) / 1.8
        output_unit = "Kelvin"

    print()
    print(f"It would be {result} in {output_unit}")

convert_temperature()
