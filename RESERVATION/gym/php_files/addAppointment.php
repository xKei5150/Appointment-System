<?php
include 'connection.php';

if (isset($_POST['org'])) {
    $org = $_POST['org'];
    $firstname = $_POST['firstname'];
    $lastname = $_POST['lastname'];
    $eu_id = $_POST['eu_id'];
    $phone = $_POST['phone'];
    $email = $_POST['email'];
    $event = $_POST['event'];
    $purpose = $_POST['purpose'];
    $table = $_POST['Ntable'];
    $chair = $_POST['Nchair'];
    $other = $_POST['other'];
    $date = $_POST['date'];
    $timeslot = $_POST['timeslot'];

    try {
        // Begin transaction
        $conn->beginTransaction();

        // Store data
        $stmt = $conn->prepare("INSERT INTO tblappointment (org, firstname, lastname, eu_id, phone, email, event, purpose, Ntable, Nchair , other ,date, timeslot, status) VALUES ( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, 'pending')");
        $stmt->execute([$org ,$firstname, $lastname, $eu_id, $phone, $email, $event, $purpose, $table, $chair, $other, $date, $timeslot]);

        // Reduce slot
        if ($timeslot == 'Whole Day') {
            // An array of individual timeslots that comprise the 'Whole Day'
            $individualTimeslots = ['Morning', 'Afternoon', 'Night'];

            // Prepare the statement outside of the loop
            $stmt = $conn->prepare("UPDATE tblschedule SET availability = 0 WHERE date = ? AND timeslot = ?");
    
            // Update each individual timeslot's availability
            foreach ($individualTimeslots as $individualTimeslot) {
                $stmt->execute([$date, $individualTimeslot]);
            }
        } else {
            // Update the availability of a specific timeslot
            $stmt = $conn->prepare("UPDATE tblschedule SET availability = 0 WHERE date = ? AND timeslot = ? AND availability > 0");
            $stmt->execute([$date, $timeslot]);
        }

        // Commit transaction
        $conn->commit();
        echo "success";
    } catch (Exception $e) {
        // Roll back transaction
        $conn->rollBack();
        echo "error: " . $e->getMessage();
    }
} else {
    echo "invalid";
    var_dump($_POST);
}
?>
