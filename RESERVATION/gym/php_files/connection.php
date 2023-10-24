<?php
$hostname = 'localhost:3307';
$username = 'root';
$password = '';
$database = 'dbscheduler';

try {
    $conn = new PDO("mysql:host=$hostname;dbname=$database", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    die("Connection failed: " . $e->getMessage());
}
?>
z