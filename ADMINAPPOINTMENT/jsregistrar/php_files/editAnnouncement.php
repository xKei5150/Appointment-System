<?php
require_once 'connection.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $title = $_POST["title"];
    $details = $_POST["details"];
    $announcementId = $_POST["id"];

    $sql = "UPDATE tblAnnouncement3 SET title = ?, announcement = ? WHERE id = ?";
    $stmt = $conn->prepare($sql);
    $stmt->execute([$title, $details, $announcementId]);

    if ($stmt) {
        echo "Data updated successfully.";
    } else {
        echo "Error updating data.";
    }

    exit();
}

$conn = null;
?>
