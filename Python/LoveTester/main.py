name_1 = input("Enter name: ").lower()
name_2 = input("Enter name: ").lower()

# remove duplicates
concat = ""
for char in name_1:
    if char not in concat:
        concat += char
for char in name_2:
    if char not in concat:
        concat += char

# DEBUG print(concat)

# count sum of characters
sum_of_characters = []
for char in concat:
    sum_of_characters.append(name_1.count(char) + name_2.count(char))

# DEBUG print(sum_of_characters)

# loop until only two elements left
while len(sum_of_characters) > 2:
    # sum pairs of elements in the list
    sum_of_characters_two = []
    for i in range(len(sum_of_characters) // 2):
        sum_of_characters_two.append(sum_of_characters[i] + sum_of_characters[-i - 1])
    if len(sum_of_characters) % 2 != 0:
        sum_of_characters_two.append(sum_of_characters[len(sum_of_characters) // 2])

    # DEBUG print(sum_of_characters_two)

    # update list for next round
    sum_of_characters = sum_of_characters_two

name_1 += "'" if name_1[-1] == 's' else "'s"
name_2 += "'" if name_2[-1] == 's' else "'s"

print(f"{name_1.capitalize()} & {name_2.capitalize()} Love Percentage is {sum_of_characters[0]}{sum_of_characters[1]}%.")