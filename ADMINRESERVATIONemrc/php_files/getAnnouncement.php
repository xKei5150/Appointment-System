<?php
require_once 'connection.php';

if ($_SERVER['REQUEST_METHOD'] === 'GET' && isset($_GET["id"])) {
    $announcementId = $_GET["id"];

    $sql = "SELECT title, announcement FROM tblrequirement1  WHERE id = ?";
    $stmt = $conn->prepare($sql);
    $stmt->execute([$announcementId]);

    if ($stmt) {
        $announcement = $stmt->fetch(PDO::FETCH_ASSOC);

        if ($announcement) {
            echo json_encode($announcement);
        } else {
            http_response_code(404);
            echo "Announcement not found.";
        }
    } else {
        http_response_code(500);
        echo "Error fetching announcement details.";
    }
} else {
    http_response_code(400);
    echo "Invalid request.";
}

$conn = null;
?>
