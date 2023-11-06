<?php
include 'connection.php';

$stmt = $conn->prepare("SELECT DISTINCT date FROM tblschedule");
$stmt->execute();
$dates = $stmt->fetchAll(PDO::FETCH_COLUMN);

echo json_encode($dates);
?>
