function calculateLove() {
    var name1 = document.getElementById("name1").value.toLowerCase();
    var name2 = document.getElementById("name2").value.toLowerCase();

    var concat = "";
    for (var i = 0; i < name1.length; i++) {
        if (!concat.includes(name1[i])) {
            concat += name1[i];
        }
    }
    for (var i = 0; i < name2.length; i++) {
        if (!concat.includes(name2[i])) {
            concat += name2[i];
        }
    }

    var sumOfCharacters = [];
    for (var i = 0; i < concat.length; i++) {
        sumOfCharacters.push(countOccurrences(name1, concat[i]) + countOccurrences(name2, concat[i]));
    }

    while (sumOfCharacters.length > 2) {
        var sumOfCharactersTwo = [];
        for (var i = 0; i < sumOfCharacters.length / 2; i++) {
            sumOfCharactersTwo.push(sumOfCharacters[i] + sumOfCharacters[sumOfCharacters.length - i - 1]);
        }
        if (sumOfCharacters.length % 2 !== 0) {
            sumOfCharactersTwo.push(sumOfCharacters[Math.floor(sumOfCharacters.length / 2)]);
        }
        sumOfCharacters = sumOfCharactersTwo;
    }

    var result = name1 + (name1.endsWith("s") ? "'" : "'s") + " & " + name2 + (name2.endsWith("s") ? "'" : "'s") + " Love Percentage is " + sumOfCharacters.join("") + "%.";
    document.getElementById("result").innerText = result;
}

function countOccurrences(str, char) {
    var count = 0;
    for (var i = 0; i < str.length; i++) {
        if (str[i] === char) {
            count++;
        }
    }
    return count;
}