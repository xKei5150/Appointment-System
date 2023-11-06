<?php
require_once 'connection.php';
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    if (isset($_POST["id"])) {
        $reserveId = $_POST["id"];

        try {
            $sql = "DELETE FROM tblappointment  WHERE id = :id";
            $stmt = $conn->prepare($sql);
            $stmt->execute([':id' => $reserveId]);

            echo "Reservation deleted successfully";
        } catch (PDOException $e) {
            echo "Error: " . $e->getMessage();
        }
    }
}

$conn = null;
?>
