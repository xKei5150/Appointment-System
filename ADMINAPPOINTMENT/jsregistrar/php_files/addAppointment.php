<?php
include 'connection.php';

if (isset($_POST['name'], $_POST['cellnum'], $_POST['address'], $_POST['email'], $_POST['date'], $_POST['timeslot'])) {
    $name = $_POST['name'];
    $cellnum = $_POST['cellnum'];
    $address = $_POST['address'];
    $email = $_POST['email'];
    $date = $_POST['date'];
    $timeslot = $_POST['timeslot'];

    $conn->beginTransaction();

    try {
        // Store data
        $stmt = $conn->prepare("INSERT INTO tblappointment3 (name, cellnum, address, email, date, timeslot) VALUES (?, ?, ?, ?, ?, ?)");
        $stmt->execute([$name, $cellnum, $address, $email, $date, $timeslot]);

        // Reduce slot
        $stmt = $conn->prepare("UPDATE tblschedule1 SET slots = slots - 1 WHERE date = ? AND timeslot = ? AND slots > 0");
        $stmt->execute([$date, $timeslot]);

        // Commit transaction
        $conn->commit();
        echo "success";
    } catch (Exception $e) {
        $conn->rollBack();
        echo "error: " . $e->getMessage();
    }
} else {
    echo "invalid";
    var_dump($_POST);
    exit;
}
?>
