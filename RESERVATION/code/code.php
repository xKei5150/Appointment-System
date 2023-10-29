<?php
			
				include("connect.php"); 
				error_reporting(0);
			
				$user=$_POST['code'];
			
		

				$query=mysqli_query($con,"SELECT * FROM tblcode WHERE code ='$user' ");
				$num_rows=mysqli_num_rows($query);

				while($fetch=mysqli_fetch_assoc($query))
				{
					
					
					$num=$fetch['code'];
				
					
				}
							
				if($num_rows)
				{
					session_start();
					$_SESSION['code']=$num;
				

				header("location:../index.php");
					
				}
				else
				{
					echo "<script type='text/javascript'> alert('Error'); </script>";
				}


				
?>