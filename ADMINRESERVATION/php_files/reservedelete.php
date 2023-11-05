<?php
require_once 'connection2.php';
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    if (isset($_POST["id"])) {
        $reserveId = $_POST["id"];

        try {
            $sql = "DELETE FROM tblappointment  WHERE id = :id";
            $stmt = $conn->prepare($sql);
            $stmt->bindParam(":id",  $reserveId);
            $stmt->execute();

            echo "Announcement deleted successfully";
        } catch (PDOException $e) {
            echo "Error: " . $e->getMessage();
        }
    }
}

$conn = null;
?>
