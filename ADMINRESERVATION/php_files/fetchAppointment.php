<?php
require_once 'connection.php';

try {
    $sql = "SELECT * FROM tblappointment ";
    $stmt = $conn->query($sql);

    if ($stmt->rowCount() > 0) {
        $data = $stmt->fetchAll(PDO::FETCH_ASSOC);
        echo json_encode($data);
    } else {
        echo json_encode([]);
    }
} catch (PDOException $e) {
    echo json_encode(['error' => $e->getMessage()]);
}

$conn = null;
?>
