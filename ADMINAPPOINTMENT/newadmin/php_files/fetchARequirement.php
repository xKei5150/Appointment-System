<?php
require_once 'connection.php';

$title = $_GET['title'] ?? '';

try {
    $sql = "SELECT * FROM tblrequirement WHERE title = :title";  // Adjust the table and column names
    $stmt = $conn->prepare($sql);
    $stmt->bindParam(':title', $title);
    $stmt->execute();

    $data = $stmt->fetchAll(PDO::FETCH_ASSOC);
    echo json_encode($data);

} catch (PDOException $e) {
    echo json_encode(['error' => $e->getMessage()]);
}

$conn = null;
?>
