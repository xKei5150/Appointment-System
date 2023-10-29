<?php
			
				include("../ADMINLOGIN/connect.php"); 
				error_reporting(0);
			
				$user=$_POST['mail'];
				$pass=$_POST['pass']; 

				
		

				$query=mysqli_query($con,"SELECT * FROM tbladminaccounts WHERE email='$user' && password='$pass'");

				$num_rows=mysqli_num_rows($query);

				while($fetch=mysqli_fetch_assoc($query))
				{
					
					$pword=$fetch['password'];
					$num=$fetch['email'];
				
					
				}
							
				if($num_rows)
				{
					session_start();
					$_SESSION['email']=$num;
					$_SESSION['password']=$pword;

				header("location:../ADMINAPPOINTMENT/newadmin/index.html");
					
				}
				else
				{
					echo "<script type='text/javascript'> alert('Error'); </script>";
				}


				
?>