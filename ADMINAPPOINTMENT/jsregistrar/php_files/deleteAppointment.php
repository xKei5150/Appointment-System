<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    if (isset($_POST["id"])) {
        $appointmentId = $_POST["id"];

        require_once 'connection.php';

        try {
            $sql = "DELETE FROM tblAppointment3 WHERE id = :id";
            $stmt = $conn->prepare($sql);
            $stmt->bindParam(":id", $appointmentId);
            $stmt->execute();
            echo "Appointment deleted successfully";
        } catch (PDOException $e) {
            echo "Error: " . $e->getMessage();
        }

        $conn = null;
    }
}
?>
