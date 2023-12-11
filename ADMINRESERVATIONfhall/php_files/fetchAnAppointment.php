<?php
require_once 'connection.php';

// Check if an ID was provided
$appointmentId = isset($_GET['id']) ? $_GET['id'] : null;

try {
    if ($appointmentId) {
        // Prepare a statement for execution
        $stmt = $conn->prepare("SELECT * FROM tblappointment2 WHERE id = :id");
        // Bind a value to a parameter
        $stmt->bindValue(':id', $appointmentId);
        // Execute the prepared statement
        $stmt->execute();

        // Fetch result
        $data = $stmt->fetch(PDO::FETCH_ASSOC);
    } else {
        $sql = "SELECT * FROM tblappointment2";
        $stmt = $conn->query($sql);
        $data = $stmt->rowCount() > 0 ? $stmt->fetchAll(PDO::FETCH_ASSOC) : [];
    }

    // Return the data in JSON format
    echo json_encode($data);
} catch (PDOException $e) {
    echo json_encode(['error' => $e->getMessage()]);
}

// Close the database connection
$conn = null;
?>
