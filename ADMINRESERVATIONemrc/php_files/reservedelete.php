<?php
require_once 'connection.php';
require '../PHPMailer/src/Exception.php';
require '../PHPMailer/src/PHPMailer.php';
require '../PHPMailer/src/SMTP.php';

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    if (isset($_POST["id"])) {
        $reserveId = $_POST["id"];

        $sql = "SELECT firstname, lastname, email FROM tblappointment1 WHERE id = :id";
        $stmt = $conn->prepare($sql);
        $stmt->execute([':id' => $reserveId]);
        $appointment = $stmt->fetch(PDO::FETCH_ASSOC);

        if ($appointment) {
            $mail = new PHPMailer(true);
            try {
                $mail->isSMTP();
                $mail->Host       = 'smtp.gmail.com';
                $mail->SMTPAuth   = true;
                $mail->Username   = 'dictmacatangay@gmail.com';
                $mail->Password   = 'scxqfjilbwslowna';
                $mail->SMTPSecure = 'ssl';
                $mail->Port       = 465;

                $mail->setFrom('your_email@gmail.com', 'Appointment System');
                $mail->addAddress($appointment['email'], $appointment['firstname'] . ' ' . $appointment['lastname']);

                // Content
                $mail->isHTML(true);
                $mail->Subject = 'Appointment Rejection';
                $mail->Body    = "Dear " . $appointment['firstname'] . ",<br><br>" .
                                 "We regret to inform you that your reservation has been rejected or cancelled.<br><br>" .
                                 "Please contact us for further details or assistance.<br><br>" .
                                 "Best Regards,<br>" .
                                 "Online Reservation System";

                $mail->send();
                echo 'Rejection email has been sent';

                try {
                    $sql = "DELETE FROM tblappointment1 WHERE id = :id";
                    $stmt = $conn->prepare($sql);
                    $stmt->execute([':id' => $reserveId]);
                    echo "Reservation deleted successfully";
                } catch (PDOException $e) {
                    echo "Error in deletion: " . $e->getMessage();
                }

            } catch (Exception $e) {
                echo "Email could not be sent. Mailer Error: {$mail->ErrorInfo}";
            }
        } else {
            echo "No appointment found with the provided ID.";
        }
    }
}

$conn = null;
?>

