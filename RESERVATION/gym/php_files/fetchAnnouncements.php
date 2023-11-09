<?php
require_once 'connection.php';
try {
    $sql = "SELECT * FROM tblrequirement";
    $stmt = $conn->query($sql);

    if ($stmt->rowCount() > 0) {
        $announcements = $stmt->fetchAll(PDO::FETCH_ASSOC);
        echo json_encode($announcements);
    } else {
        echo json_encode([]);
    }
} catch (PDOException $e) {
    echo json_encode(['error' => $e->getMessage()]);
}
$conn = null;
?>
