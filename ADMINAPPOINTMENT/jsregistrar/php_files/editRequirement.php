<?php
require_once 'connection.php';

$title = $_POST['title'] ?? '';
$requirements = $_POST['requirements'] ?? [];

if (empty(trim($title))) {
    echo "Error: Title cannot be empty!";
    exit;
}

$requirements = array_filter($requirements, function($value) {
    return !empty(trim($value));
});

try {
    $conn->beginTransaction();

    $stmt = $conn->prepare("DELETE FROM tblrequirement3 WHERE title = :title");
    $stmt->bindParam(':title', $title);
    $stmt->execute();

    $stmt = $conn->prepare("INSERT INTO tblrequirement3 (title, requirement) VALUES (:title, :requirement)");
    foreach ($requirements as $requirement) {
        $stmt->bindParam(':title', $title);
        $stmt->bindParam(':requirement', $requirement);
        $stmt->execute();
    }

    $conn->commit();
    echo "Requirements updated successfully!";
} catch (PDOException $e) {
    $conn->rollBack();
    echo "Error: " . $e->getMessage();
}

$conn = null;
?>
