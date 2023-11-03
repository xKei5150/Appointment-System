<?php
require_once 'connection2.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {

   $old_pass = $_POST['old_pass'];
   $update_pass = mysqli_real_escape_string($conn, md5($_POST['update_pass']));
   $new_pass = mysqli_real_escape_string($conn, md5($_POST['new_pass']));
   $confirm_pass = mysqli_real_escape_string($conn, md5($_POST['confirm_pass']));

   if(!empty($update_pass) || !empty($new_pass) || !empty($confirm_pass)){
      if($update_pass != $old_pass){
         $message[] = 'old password not matched!';
      }elseif($new_pass != $confirm_pass){
         $message[] = 'confirm password not matched!';
      }else{
         mysqli_query($conn, "UPDATE `tbladminaccounts` SET password = '$confirm_pass' WHERE id = '?'") or die('query failed');
         $message[] = 'password updated successfully!';
      }
   }
}

$conn = null;
?>

