<?php
require_once 'connection.php';
require '../PHPMailer/src/Exception.php';
require '../PHPMailer/src/PHPMailer.php';
require '../PHPMailer/src/SMTP.php';

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $reserveId = $_POST["id"];
    $sql = "UPDATE tblappointment1 SET status = 'approved' WHERE id = :id";
    $stmt = $conn->prepare($sql);
    $stmt->execute([':id' => $reserveId]);

    if ($stmt) {
        // Retrieve appointment details
        $sql = "SELECT firstname, lastname, email, event, date, timeslot FROM tblappointment1 WHERE id = :id";
        $stmt = $conn->prepare($sql);
        $stmt->execute([':id' => $reserveId]);
        $appointment = $stmt->fetch(PDO::FETCH_ASSOC);

        if ($appointment) {
            $mail = new PHPMailer(true);
            try {
                // Server settings
                $mail->isSMTP();
                $mail->Host       = 'smtp.gmail.com';
                $mail->SMTPAuth   = true;
                $mail->Username   = 'dictmacatangay@gmail.com';
                $mail->Password   = 'scxqfjilbwslowna';
                $mail->SMTPSecure = 'ssl';
                $mail->Port       = 465;

                // Recipients
                $mail->setFrom('dictmacatangay@gmail.com', 'Appointment System');
                $mail->addAddress($appointment['email'], $appointment['firstname'] . ' ' . $appointment['lastname']);

                // Content
                $mail->isHTML(true);
                $mail->Subject = 'Appointment Approved';
                $mail->Body    = "Dear " . $appointment['firstname'] . ",<br><br>" .
                                 "Your reservation for " . $appointment['event'] . " on " . $appointment['date'] .
                                 " at " . $appointment['timeslot'] . " has been approved.<br><br>" .
                                 "Thankyou!!!,<br>" .
                                 "Online Reservation System";

                $mail->send();
                echo 'Email has been sent';
            } catch (Exception $e) {
                echo "Email could not be sent. Mailer Error: {$mail->ErrorInfo}";
            }
        } else {
            echo "No appointment found with the provided ID.";
        }

        echo "Data updated successfully.";
    } else {
        echo "Error updating data.";
    }

    exit();
}
$conn = null;
?>
