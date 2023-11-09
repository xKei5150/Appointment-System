<?php
include 'connection.php';

if (isset($_POST['date'], $_POST['timeslot'], $_POST['slots'])) {
    $date = $_POST['date'];
    $timeslot = $_POST['timeslot'];
    $slots = intval($_POST['slots']);

    $stmt = $conn->prepare("UPDATE tblschedule1 SET slots = :slots WHERE date = :date AND timeslot = :timeslot");
    $result = $stmt->execute(['date' => $date, 'timeslot' => $timeslot, 'slots' => $slots]);

    if ($result) {
        echo "Successfully updated.";
    } else {
        echo "Error updating.";
    }
} else {
    echo "Invalid data received.";
}
?>
