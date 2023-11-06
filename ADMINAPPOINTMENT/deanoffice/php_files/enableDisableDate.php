<?php
include 'connection.php';

if(isset($_POST['date'], $_POST['slots'])) {
    $date = $_POST['date'];
    $slots = $_POST['slots'];

    $stmt = $conn->prepare("UPDATE tblschedule2 SET slots = :slots WHERE date = :date");
    $stmt->execute(['date' => $date, 'slots' => $slots]);

    echo "Slots updated successfully!";
} else {
    echo "Invalid data!";
}
?>
