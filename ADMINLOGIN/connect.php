<?php	

	$host="localhost";
	$username="root";
	$password="";
	$error1="Can't connect to MySQL";
	$error2="Can't connect to Database";
	
	$con=mysqli_connect($host,$username,$password) or die ($error1);
	mysqli_select_db($con,'dbappointment') or die ($error2);

?>
