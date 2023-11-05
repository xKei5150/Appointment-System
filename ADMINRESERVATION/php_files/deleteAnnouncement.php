<?php
require_once 'connection.php';
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    if (isset($_POST["id"])) {
        $announcementId = $_POST["id"];

        try {
            $sql = "DELETE FROM tblrequirement  WHERE id = :id";
            $stmt = $conn->prepare($sql);
            $stmt->bindParam(":id", $announcementId);
            $stmt->execute();

            echo "Announcement deleted successfully";
        } catch (PDOException $e) {
            echo "Error: " . $e->getMessage();
        }
    }
}

$conn = null;
?>
