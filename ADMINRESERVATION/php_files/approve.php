<?php
require_once 'connection.php';
if ($_SERVER["REQUEST_METHOD"] == "POST") {

    $reserveId = $_POST["id"];

    $sql = "UPDATE FROM tblappointment SET status = 'approved' WHERE id = :id";
    $stmt = $conn->prepare($sql);
    $stmt->execute([$reserveId]);

    if ($stmt) {
        echo "Data updated successfully.";
    } else {
        echo "Error updating data.";
    }

    exit();
}
$conn = null;
?>