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
		<link rel="stylesheet" href="editstyle.css">
		
		
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
			<h3><img src="../ADMINRESERVATIONemrc/logo.png.png" class="img-fluid"/><span>EMRC ADMIN</span></h3>
		</div>
		<ul class="list-unstyled components">
		<li  class="active">
				<a href="index.html" class="dashboard"><i class="material-icons">dashboard</i>
				<span>Home</span></a>
			</li>
	

			<li class="dropdown">
				<a href="#homeSubmenu1" data-toggle="collapse" aria-expanded="false" 
				class="dropdown-toggle">
				<i class="material-icons">aspect_ratio</i>Profiling</a>
				<ul class="collapse list-unstyled menu" id="homeSubmenu1">
					<li>
						<a href="../ADMINRESERVATIONemrc/ManageSched.html">Manage Date/Slot</a>
					</li>
					<li>
						<a href="../ADMINRESERVATIONemrc/managereminders.html">Manage Requirement</a>
					</li>
	  
				</ul>
			</li>
			
		   <li class="">
				<a href="../ADMINRESERVATIONemrc/adminreservation.php"><i class="material-icons">date_range</i><span>View reservation</span></a>
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
					 
					 <div class="col-md-5 col-lg-3 order-3 order-md-2">
					     <div class="xp-searchbar">
						     <form>
							    <div class="input-group">
								  <input type="search" class="form-control"
								  placeholder="Search">
								  <div class="input-group-append">
								     <button class="btn" type="submit" id="button-addon2">Go
									 </button>
								  </div>
								</div>
							 </form>
						 </div>
					 </div>
					 
					 
					 <div class="col-10 col-md-6 col-lg-8 order-1 order-md-3">
					     <div class="xp-profilebar text-right">
						    <nav class="navbar p-0">
							   <ul class="nav navbar-nav flex-row ml-auto">
							   <li class="dropdown nav-item active">
							     <a class="nav-link" href="#" data-toggle="dropdown">
								  <span class="material-icons">notifications</span>
								  <span class="notification">4</span>
								 </a>
								  <ul class="dropdown-menu">
								     <li><a href="#">You Have 4 New Messages</a></li>
									 <li><a href="#">You Have 4 New Messages</a></li>
									 <li><a href="#">You Have 4 New Messages</a></li>
									 <li><a href="#">You Have 4 New Messages</a></li>
								  </ul>
							   </li>
							   
							   
							   <li class="dropdown nav-item">
							     <a class="nav-link" href="#" data-toggle="dropdown">
								  <img src="img/user.jpg" style="width:40px; border-radius:50%;"/>
								  <span class="xp-user-live"></span>
								 </a>
								  <ul class="dropdown-menu small-menu">
								     <li><a href="../ADMINRESERVATIONemrc/editprofile2.html">
									 <span class="material-icons">person_outline</span>
									 Profile
									 </a></li>
									 <li><a href="../ADMINRESERVATIONemrc/setting.php">
									 <span class="material-icons">settings</span>
									 Settings
									 </a></li>
									 <li><a href="../ADMINRESERVATIONemrc/ADMINLOGOUT/adminlogout.php">
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
				    <h4 class="page-title">RECENT RESERVATION</h4>
					<ol class="breadcrumb">
					  <li class="breadcrumb-item"><a href="#">Reservation</a></li>
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
						   <h2 class="ml-lg-2">Reservation Booked</h2>
						</div>

						</div>
					</div>
				  </div>


<table id="approvedListTable" class="table table-striped table-hover">
  <thead>
    <tr>
      <th>ID</th>
      <th>Name</th>
      <th>EU ID</th>
      <th>Email</th>
      <th>Phone</th>
      <th>Event</th>
      <th>Date</th>
      <th>Status</th>
    </tr>
  </thead>
  <tbody>
  </tbody>
</table>

				  </div>
			   </div>


								  <!----add-modal start--------->
	
				  <!----edit-modal end--------->   
				  
			   
			   
			
			</div>

	 
	   <!------main-content-end-----------> 
	 
	
	
	<!----footer-design------------->
	
	<footer class="footer">
	   <div class="container-fluid">
		  <div class="footer-in">
			 <p class="mb-0">&copy 2021 Vishweb Design . All Rights Reserved.</p>
		  </div>
	   </div>
	</footer>
	
	
	
	
 </div>


</div>



<!-------complete html----------->


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="assets/demo/chart-area-demo.js"></script>
        <script src="assets/demo/chart-bar-demo.js"></script>
        <script src="js/datatables-simple-demo.js"></script>
    
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
<script src="js/jquery-3.3.1.slim.min.js"></script>
   <script src="js/popper.min.js"></script>
   <script src="js/bootstrap.min.js"></script>
<script src="fetchAppointment.js"></script>


  
     <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
   
  
  
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


