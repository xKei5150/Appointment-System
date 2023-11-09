<?php
require_once 'connection.php';

$title = $_POST['title'];
$requirements = $_POST['requirements'];

try {
    foreach ($requirements as $requirement) {
        if (!empty(trim($requirement))) {
            $stmt = $conn->prepare("INSERT INTO tblrequirement3 (title, requirement) VALUES (?, ?)");
            $stmt->execute([$title, $requirement]);
        }
    }
    echo json_encode(['status' => 'success', 'message' => 'Data saved successfully!']);
} catch (PDOException $e) {
    echo json_encode(['status' => 'error', 'message' => $e->getMessage()]);
}

$conn = null;
?>
