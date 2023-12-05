<?php	

	$host="localhost";
	$username="root";
	$password="";
	$db="dbappointment";
	
	
	$con=mysqli_connect($host,$username,$password, $db);
	
	if($con===false)
{
	die("connection error");
}
?>
