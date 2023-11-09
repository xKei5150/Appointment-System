<?php
require_once 'connect.php';

if ($_SERVER['REQUEST_METHOD']=="POST") {

	$user=$_POST['mail'];
	$pass=$_POST['pass']; 


	$query="SELECT * FROM tbladminaccounts WHERE email='$user' AND password='$pass'";
	$num_rows =mysqli_query($con,$query);
	$row = mysqli_fetch_array($num_rows);

	if($row['usertype']=="registrar")
	{
		header("location: ../ADMINAPPOINTMENT/newadmin/index.html");

		
		// if($num_rows)
		// {
		// 	$_SESSION['username'] = $user;
		// 	header("location: ../ADMINRESERVATION/index.html");
		// }else{
		// 	$_SESSION['status'] = "Email / Password is Invalid";
		// 	header("location: ../ADMINLOGIN/adminloginindex.php");
		// }
		
	}		
	elseif($row['usertype']=="gymnasium")   
	{
		header("location: ../ADMINRESERVATION/index.html");
		
	}
	elseif($row['usertype']=="deanoffice")   
	{
		header("location: ../ADMINAPPOINTMENT/deanoffice/index.html");
		
	}
	
	elseif($row['usertype']=="jhregistrar")   
	{
		header("location: ../ADMINAPPOINTMENT/jsregistrar/index.html");
		
	}
	elseif($row['usertype']=="emrc")   
	{
		header("location: ../ADMINRESERVATIONemrc/index.html");
		
	}
	elseif($row['usertype']=="fhall")   
	{
		header("location: ../ADMINRESERVATIONfhall/index.html");
		
	}

	elseif($row['usertype']=="jhprincipal")   
	{
		header("location: ../ADMINAPPOINTMENT/JHprincipal/index.html");
		
	}
	else
	{
		echo "<script>alert('user and password not match'); window.location.href=' ../ADMINLOGIN/adminloginindex.php'; </script>";
	}
}


?>
