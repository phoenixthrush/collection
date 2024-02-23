<?php
if (isset($_GET["filename"])) {
    $filename = "pastes/" . basename($_GET["filename"]);

    if (file_exists($filename)) {
        readfile($filename);
    } else {
        echo "Paste not found.";
    }
} else {
    echo "Invalid URL.";
}
?>