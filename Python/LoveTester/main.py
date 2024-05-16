# must be lowered when input
#name_1 = input("Enter name: ")
#name_2 = input("Enter name: ")

name_1 = "foo"
name_2 = "bar"

name = name_1.lower() + name_2.lower()
name_deduplicated = [i for n, i in enumerate(name) if i not in name[:n]]

character_count = []

for char in name_deduplicated:
    # print(f"Debug: {char} - {name_1.count(char) + name_2.count(char)}")    
    character_count.append(name_1.count(char) + name_2.count(char))



print(character_count)

character_count_sum = []
for x in range(len(character_count)//2):
    # print(f"{x}: {character_count[x]} - {character_count[-1 - x]}")
    character_count_sum.append(character_count[x] + character_count[-1 - x])

print(character_count_sum)