<?php
include 'connection.php';

if (isset($_POST['date'], $_POST['time'], $_POST['availability'])) {
    $date = $_POST['date'];
    $timeslot = $_POST['time'];
    $availability = intval($_POST['availability']);

$stmt = $conn->prepare("UPDATE tblschedule1 SET availability = :availability WHERE date = :date AND timeslot = :timeslot");
$result = $stmt->execute(['date' => $date, 'timeslot' => $timeslot, 'availability' => $availability]);


    if ($result) {
        echo "Successfully updated.";
    } else {
        echo "Error updating.";
    }
} else {
    echo "Invalid data received.";
}
?>
