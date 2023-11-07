<?php
include 'connection.php';

if (isset($_POST['firstname'])) {
    $firstname = $_POST['firstname'];
    $lastname = $_POST['lastname'];
    $eu_id = $_POST['eu_id'];
    $phone = $_POST['phone'];
    $email = $_POST['email'];
    $event = $_POST['event'];
    $purpose = $_POST['purpose'];
    $date = $_POST['date'];
    $timeslot = $_POST['timeslot'];

    $conn->beginTransaction();

    try {
        // Store data
        $stmt = $conn->prepare("INSERT INTO tblappointment2 (firstname, lastname, eu_id, phone, email, event, purpose, date, timeslot , status) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ? , 'pending')");
        $stmt->execute([$firstname, $lastname, $eu_id, $phone, $email, $event, $purpose, $date, $timeslot]);

        // Reduce slot
        $stmt = $conn->prepare("UPDATE tblschedule2 SET availability = availability - 1 WHERE date = ? AND timeslot = ? AND availability > 0");
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
