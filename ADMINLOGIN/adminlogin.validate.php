

<?php
require_once 'connect.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {

	$user=$_POST['mail'];
	$pass=$_POST['pass']; 


	$query="SELECT * FROM tbladminaccounts WHERE email='$user' && password='$pass'";
	$num_rows=mysqli_query($con,$query);
	$row=mysqli_fetch_array($num_rows);

	if($row[usertype]=="registrar")
	{
		header("location: ../ADMINAPPOINTMENT/newadmin/index.html");
	}		
	elseif($row[usertype]=="gym")   
	{
		header("location: ../ADMINRESERVATION/index.html");
		
	}
	else
	{
		echo "<script type='text/javascript'> alert('Error'); </script>";
	}
}


?>
