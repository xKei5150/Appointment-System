<?php
include 'connection.php';

$date = $_GET['date'];

$stmt = $conn->prepare("SELECT timeslot, slots FROM tblschedule WHERE date = :date ORDER BY id ASC");
$stmt->execute(['date' => $date]);
$timeslots = $stmt->fetchAll(PDO::FETCH_ASSOC);

echo json_encode($timeslots);
?>
