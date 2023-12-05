<?php
session_start();

// Check if the session variable for username is set and the usertype is 'gymnasium'
if (!isset($_SESSION['username']) || $_SESSION['usertype'] != 'jhregistrar') {
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
			<h3><img src="../newadmin/logo.png.png" class="img-fluid"/><span>Junior High Registrar Office</span></h3>
		</div>
		<ul class="list-unstyled components">
		<li  class="active">
				<a href="../jsregistrar/index.php" class="dashboard"><i class="material-icons">dashboard</i>
				<span>Home</span></a>
			</li>
	

			<li class="dropdown">
				<a href="#homeSubmenu1" data-toggle="collapse" aria-expanded="false" 
				class="dropdown-toggle">
				<i class="material-icons">aspect_ratio</i>Profiling</a>
				<ul class="collapse list-unstyled menu" id="homeSubmenu1">
					<li>
						<a href="../jsregistrar/managesched.php">Manage Appointment</a>
					</li>
					<li>
						<a href="../jsregistrar/managerequirements.php">Manage Requirement</a>
					</li>
	  
				</ul>
			</li>
			
		   <li class="">
				<a href="../jsregistrar/viewappoint.php"><i class="material-icons">date_range</i><span>View Appointment</span></a>
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
								   <li><a href="../jsregistrar/editprofile.php">
								   <span class="material-icons">person_outline</span>
								   Profile
								   </a></li>
								   <li><a href="../jsregistrar/setting.php">
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
							    <h2 class="ml-lg-2">Manage  Schedule</h2>
							 </div>

							 <div class=" col-sm-6 p-0 flex justify-content-lg-end justify-content-center">
								<div class="xp-searchbar">
									<form>
									   <div class="input-group">
										 <input type="search" class="form-control"
										 placeholder="Search">
										 <div class="input-group-append">
											<button class="btn" type="submit" id="button-addon2">Go
											</button>

											 <!-- value="<?php if(isset($_GET['search'])){echo $_GET['search']; } ?>"  -->



										 </div>
									   </div>
									</form>
								</div>
							</div>
					     </div>
					   </div>
					   
					   <table class="table table-striped table-hover">
					    
						  <tbody>
						      <tr>
				
								<div class="dash-content">

									<div class="activity">
										<div class="container mt-5">
											<h1 class="mb-4">Schedule</h1>
											<div class="schedule">
												<!-- Dates will be appended here dynamically by the JavaScript -->
											</div>
										</div>
									</div>
								</div>
							 </tr>
							 
						  </tbody>
						  
					      
					   </table>
					   
					  
					   
					
					   
					   </div>
					</div>
					
					
					<div class="modal fade" id="editModal" tabindex="-1" aria-labelledby="editModalLabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<h5 class="modal-title" id="editModalLabel">Edit Timeslot</h5>
									<button type="button" class="close" data-dismiss="modal" aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
								</div>
								<div class="modal-body">
									<label for="editSlots">Available Slots:</label>
									<input type="number" id="editSlots" class="form-control" min="1" required>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
									<button type="button" class="btn btn-danger" onclick="submitEdit()">Save changes</button>
								</div>
							</div>
						</div>
					</div>

					   
					   
					
	
				 
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
   <script src="manageSchedule.js"></script>
   <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
   <script src="https://kit.fontawesome.com/3adbdef86b.js" crossorigin="anonymous"></script>
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

  
  
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