<?php
if ($_SERVER["REQUEST_METHOD"] === "POST") {
    $content = $_POST["content"];
    
    if (!empty($content)) {
        $randomInteger = random_int(100000, 999999);
        
        $pasteFilename = "pastes/" . $randomInteger . ".txt";
        
        if (file_put_contents($pasteFilename, $content)) {
            $paste_url = "view_paste.php?filename=" . basename($pasteFilename);
            header("Location: $paste_url");
            exit;
        } else {
            echo "Error saving paste.";
        }
    } else {
        echo "Content cannot be empty.";
    }
}
?>