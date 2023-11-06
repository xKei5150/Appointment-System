<?php
require_once 'connection.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $title = $_POST["title"];
    $details = $_POST["details"];

    $sql = "INSERT INTO tblrequirement1 (title, announcement) VALUES (?, ?)";
    $stmt = $conn->prepare($sql);
    $stmt->execute([$title, $details]);

    if ($stmt) {
        echo "Data saved successfully.";
    } else {
        echo "Error saving data.";
    }

    exit();
}

$conn = null;
?>


