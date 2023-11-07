<?php
require_once 'connection.php';
if ($_SERVER["REQUEST_METHOD"] == "POST") {

    $reserveId = $_POST["id"];

    // Corrected SQL statement
    $sql = "UPDATE tblappointment1 SET status = 'approved' WHERE id = :id";
    $stmt = $conn->prepare($sql);
    // Corrected parameter binding
    $stmt->execute([':id' => $reserveId]);

    if ($stmt) {
        echo "Data updated successfully.";
    } else {
        echo "Error updating data.";
    }

    exit();
}
$conn = null;
?>
