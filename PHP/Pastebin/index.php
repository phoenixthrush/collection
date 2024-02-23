<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Simple Pastebin</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <header>
        <h1>Simple Pastebin</h1>
    </header>

    <main>
        <form action="create_paste.php" method="post">
            <textarea name="content" rows="10" placeholder="Paste your text here"></textarea><br>
            <input type="submit" value="Create Paste">
        </form>
    </main>
</body>
</html>
