<?php
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require '../PHPMailer/src/Exception.php';
require '../PHPMailer/src/PHPMailer.php';
require '../PHPMailer/src/SMTP.php';
include 'connection.php';


if (isset($_POST['name'], $_POST['cellnum'], $_POST['address'], $_POST['email'],  $_POST['purpose'],$_POST['date'], $_POST['timeslot'])) {
    $name = $_POST['name'];
    $cellnum = $_POST['cellnum'];
    $address = $_POST['address'];
    $email = $_POST['email'];
    $purpose = $_POST['purpose'];
    $date = $_POST['date'];
    $timeslot = $_POST['timeslot'];

    $conn->beginTransaction();
    $mail = new PHPMailer(true);
    try {
        // Store data
        $stmt = $conn->prepare("INSERT INTO tblappointment2 (name, cellnum, address, email, purpose, date, timeslot) VALUES (?, ?, ?, ?, ?, ?, ?)");

        $stmt->execute([$name, $cellnum, $address, $email, $purpose, $date, $timeslot]);

        // Reduce slot
        $stmt = $conn->prepare("UPDATE tblschedule2 SET slots = slots - 1 WHERE date = ? AND timeslot = ? AND slots > 0");
        $stmt->execute([$date, $timeslot]);

        $mail->isSMTP();
            $mail->Host       = 'smtp.gmail.com'; // Set the SMTP server to send through
            $mail->SMTPAuth   = true;
            $mail->Username   = 'dictmacatangay@gmail.com'; // SMTP username
            $mail->Password   = 'scxqfjilbwslowna'; // SMTP password
            $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;
            $mail->Port       = 587;

            //Recipients
            $mail->setFrom('dictmacatangay@gmail.com', "Mailer");
            $mail->addAddress($email, $firstname); // Add a recipient

            // Content
            $mail->isHTML(true);
            $mail->Subject = 'Appointment Confirmation';
            $mail->Body    = 'Your appointment for ' . $event . ' is confirmed for ' . $date . ' during the ' . $timeslot . ' timeslot.';

            $mail->send();
            echo 'Email has been sent';
        

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
