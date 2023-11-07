<?php
require_once 'connect.php';

if ($_SERVER['REQUEST_METHOD']=="POST") {

	$user=$_POST['mail'];
	$pass=$_POST['pass']; 


	$query="SELECT * FROM tbladminaccounts WHERE email='$user' AND password='$pass'";
	$num_rows =mysqli_query($con,$query);
	$row = mysqli_fetch_array($num_rows);

	if($row['usertype']=="registrar1")
	{
		header("location: ../ADMINAPPOINTMENT/newadmin/index.html");
	}		
	elseif($row['usertype']=="gymnasium")   
	{
		header("location: ../ADMINRESERVATION/index.html");
		
	}
	elseif($row['usertype']=="deanoffice")   
	{
		header("location: ../ADMINAPPOINTMENT/deanoffice/index.html");
		
	}
	
	elseif($row['usertype']=="JHregistrar")   
	{
		header("location: ../ADMINAPPOINTMENT/JHregistrar/index1.html");
		
	}
	elseif($row['usertype']=="emrc")   
	{
		header("location: ../ADMINRESERVATIONemrc/index.html");
		
	}
	elseif($row['usertype']=="Function Hall")   
	{
		header("location: ../ADMINRESERVATIONfhall/index.html");
		
	}
	else
	{
		echo "<script type='text/javascript'> alert('Error'); </script>";
	}
}


?>
