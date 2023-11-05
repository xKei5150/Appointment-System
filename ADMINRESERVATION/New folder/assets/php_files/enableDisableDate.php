<?php
include 'connection.php';

if(isset($_POST['date'], $_POST['availability'])) {
    $date = $_POST['date'];
    $availability = $_POST['availability'];

    $stmt = $conn->prepare("UPDATE tblschedule SET availability = :availability WHERE date = :date");
    $stmt->execute(['date' => $date, 'availability' => $availability]);

    echo "Availability updated successfully!";
} else {
    echo "Invalid data!";
}
?>
