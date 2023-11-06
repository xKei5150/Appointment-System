<?php
require_once 'connection.php';

try {
    $sql = "SELECT * FROM tblAppointment";
    $stmt = $conn->query($sql);

    if ($stmt->rowCount() > 0) {
        $data = $stmt->fetchAlal(PDO::FETCH_ASSOC);
        echo json_encode($data);
    } else {
        echo json_encode([]);
    }
} catch (PDOException $e) {
    echo json_encode(['error' => $e->getMessage()]);
}

$conn = null;
?>
