<?php
session_start();

// Check if the session variable for username is set and the usertype is 'gymnasium'
if (!isset($_SESSION['username']) || $_SESSION['usertype'] != 'jhprincipal') {
    // Redirect to the login page or another appropriate page
    header("location: ../ADMINLOGIN/adminloginindex.php");
    exit; // Ensure no further execution of the script
}
?>




<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	  <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
        <title>crud dashboard</title>
	    <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
	    <!----css3---->
        <link rel="stylesheet" href="css/custom.css">
		
		
		<!--google fonts -->
	    <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap" rel="stylesheet">
	
	
	   <!--google material icon-->
      <link href="https://fonts.googleapis.com/css2?family=Material+Icons"rel="stylesheet">

  </head>
  <body>
  


<div class="wrapper">
     
	  <div class="body-overlay"></div>
	 
	 <!-------sidebar--design------------>
	 
	 <nav id="sidebar">
		<div class="sidebar-header">
			<h3><img src="../newadmin/logo.png.png" class="img-fluid"/><span>JHS/SHS Principal</span></h3>
		</div>
		<ul class="list-unstyled components">
		<li  class="active">
				<a href="../JHprincipal/index.php" class="dashboard"><i class="material-icons">dashboard</i>
				<span>Home</span></a>
			</li>
	

			<li class="dropdown">
				<a href="#homeSubmenu1" data-toggle="collapse" aria-expanded="false" 
				class="dropdown-toggle">
				<i class="material-icons">aspect_ratio</i>Profiling</a>
				<ul class="collapse list-unstyled menu" id="homeSubmenu1">
					<li>
						<a href="../JHprincipal/managesched.php">Manage Schedule</a>
					</li>
	  
				</ul>
			</li>
			
		   <li class="">
				<a href="../JHprincipal/viewappoint.php"><i class="material-icons">date_range</i><span>View Appointment</span></a>
			</li>
		
		   
		   
		</ul>

	   
	</nav>
	 
   <!-------sidebar--design- close----------->
   
   
   
      <!-------page-content start----------->
   
      <div id="content">
	     
		  <!------top-navbar-start-----------> 
		     
		  <div class="top-navbar">
		     <div class="xd-topbar">
			     <div class="row">
				     <div class="col-2 col-md-1 col-lg-1 order-2 order-md-1 align-self-center">
					    <div class="xp-menubar">
						    <span class="material-icons text-white">signal_cellular_alt</span>
						</div>
					 </div>
					 
					 
					 
					 <div class="col-15 col-md-10 col-lg-11 order-1 order-md-5">
						<div class="xp-profilebar text-right">
						   <nav class="navbar p-0">
							  <ul class="nav navbar-nav flex-row ml-auto">
							  
							   
							   
							   <li class="dropdown nav-item">
							     <a class="nav-link" href="#" data-toggle="dropdown">
								  <img src="../8b167af653c2399dd93b952a48740620.jpg" style="width:40px; border-radius:50%;"/>
								  <span class="xp-user-live"></span>
								 </a>
								  <ul class="dropdown-menu small-menu">
								     <li><a href="../JHprincipal/editprofile.php">
									 <span class="material-icons">person_outline</span>
									 Profile
									 </a></li>
									 <li><a href="../JHprincipal/setting.php">
									 <span class="material-icons">settings</span>
									 Settings
									 </a></li>
									 <li><a href="../ADMINLOGOUT/adminlogout.php">
									 <span class="material-icons">logout</span>
									 Logout
									 </a></li>
									 
								  </ul>
							   </li>
							   
							   
							   </ul>
							</nav>
						 </div>
					 </div>
					 
				 </div>
				 
				 <div class="xp-breadcrumbbar text-center">
				    <h4 class="page-title">Admin Dashboard</h4>
					<ol class="breadcrumb">
					  <li class="breadcrumb-item"><a href="#">Appointment</a></li>
					  <li class="breadcrumb-item active" aria-curent="page">System</li>
					</ol>
				 </div>
				 
				 
			 </div>
		  </div>
		  <!------top-navbar-end-----------> 
		  
		  
		   <!------main-content-start-----------> 
		     
		      <div class="main-content">
			     <div class="row">
				    <div class="col-md-12">
					   <div class="table-wrapper">
					     
					   <div class="table-title">
					     <div class="row">
						     <div class="col-sm-6 p-0 flex justify-content-lg-start justify-content-center">
							    <h2 class="ml-lg-2">Recent AAppointment</h2>
							 </div>
								<div class=" col-sm-6 p-0 flex justify-content-lg-end justify-content-center">
									<div class="xp-searchbar">
										<form>
										   <div class="input-group">
											 <input type="search" class="form-control"
											 placeholder="Search">


 <!-- value="<?php if(isset($_GET['search'])){echo $_GET['search']; } ?>"  -->


											 <div class="input-group-append">
												<button class="btn" type="submit" id="button-addon2">Go
												</button>
											 </div>
										   </div>
										</form>
									</div>
								</div>
							 
					     </div>
					   </div>
					   
					   <table class="table table-striped table-hover">
					      <thead>
						     <tr>
							 
								<th><i class="material-icons">date_range</i></th>

							 <th>Name</th>
							 <th>Address</th>
							 <th>Email</th>
							 <th>Purpose</th>
							 <th>Date</th>
							 <th>Time</th>
							 <th></th>
							 
							 </tr>
						  </thead>
						  
						  <tbody>
						      <tr>

								<!-- <th><i class="material-icons">date_range</i></th> -->
								
								
										
												<th id="delete-list"></th>

												<th id="name-list"></th>
										
												<th id="address-list"></th>
										
												<th id="email-list"></th>

												<th id="purpose-list"></th>
										
												<th id="date-list"></th>
											
												<th id="timeslot-list"></th>

												<th id="delete-list"></th>
	
										
												
									
							 </tr>
						
						  </tbody>
						  
					      
					   </table>
					   
				
					   
					   </div>
					</div>
					
					
									   <!----add-modal start--------->
		

					   <!----edit-modal end--------->
					   
					   
					   
					   
					   
				   <!----edit-modal start--------->


					   <!----edit-modal end--------->	   
					   
				   
				
					
					
				 
			     </div>
			  </div>
		  
		    <!------main-content-end-----------> 
		  
		 
		 
		 <!----footer-design------------->
		 
		 <footer class="footer">
		    <div class="container-fluid">
			   <div class="footer-in">
			      <p class="mb-0">Justine Pier M. Anonuevo, Angelo Benedict M. Acuzar</p>
			   </div>
			</div>
		 </footer>
		 
		 
		 
		 
	  </div>
   
</div>



<!-------complete html----------->





  
     <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
   <script src="js/jquery-3.3.1.slim.min.js"></script>
   <script src="js/popper.min.js"></script>
   <script src="js/bootstrap.min.js"></script>
   <script src="js/jquery-3.3.1.min.js"></script>
   <script src="adminjava.js"></script>
<script src="fetchAppointment.js"></script>
<script src="style.css"></script>
<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/3adbdef86b.js" crossorigin="anonymous"></script>
  
  
  <script type="text/javascript">
       $(document).ready(function(){
	      $(".xp-menubar").on('click',function(){
		    $("#sidebar").toggleClass('active');
			$("#content").toggleClass('active');
		  });
		  
		  $('.xp-menubar,.body-overlay').on('click',function(){
		     $("#sidebar,.body-overlay").toggleClass('show-nav');
		  });
		  
	   });
  </script>
  
  



  </body>
  
  </html>


  <!-- <?php 
  $con = mysqli_connect("localhost","root","","dbreservation");

  if(isset($_GET['search']))
  {
	  $filtervalues = $_GET['search'];
	  $query = "SELECT * FROM tblappointment WHERE CONCAT(firstname,lastname,email) LIKE '%$filtervalues%' ";
	  $query_run = mysqli_query($con, $query);

	  if(mysqli_num_rows($query_run) > 0)
	  {
		  foreach($query_run as $items)
		  {
			  ?>
			  <tr>
				  <td><?= $items['id']; ?></td>
				  <td><?= $items['firstname']; ?></td>
				  <td><?= $items['lastname']; ?></td>
				  <td><?= $items['email']; ?></td>
			  </tr>
			  <?php
		  }
	  }
	  else
	  {
		  ?>
			  <tr>
				  <td colspan="4">No Record Found</td>
			  </tr>
		  <?php
	  }
  }
?> -->

