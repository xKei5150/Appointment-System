<?php
 require_once 'connection.php';

 try {
     $sql = "SELECT title, COUNT(*) as count FROM tblrequirement1 GROUP BY title";
     $stmt = $conn->query($sql);
     $data = $stmt->fetchAll(PDO::FETCH_ASSOC);
     echo json_encode($data);
 } catch (PDOException $e) {
     echo json_encode(['error' => $e->getMessage()]);
 }

 $conn = null;
 ?>
