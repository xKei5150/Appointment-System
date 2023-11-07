<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>GYMRESERVATION</title>
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.2.1/css/fontawesome.min.css">
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/pikaday/1.8.0/css/pikaday.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

    <link rel="stylesheet" href="reserve.css">

    
  <body>


  <header>

  <nev class="web-start">
	
	<h1> Manuel S. Enverga University Foundation Candelaria Inc.</h1>
  <h2> Fucntion Hall Facility Reservation System </h2>
	
	</nev>
		<nav class="navigation">
		<a href="../index.php" ><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32" id="Back"><path d="M22,15H12.41l2.3-2.29a1,1,0,0,0-1.42-1.42l-4,4a1,1,0,0,0-.21.33,1,1,0,0,0,0,.76,1,1,0,0,0,.21.33l4,4a1,1,0,0,0,1.42,0,1,1,0,0,0,0-1.42L12.41,17H22a1,1,0,0,0,0-2Z" fill="#ffffff" class="color000000 svgShape"></path></svg></a>
		<button class="btnappoint-popup" id="button">Reserve Facility</button>
	</nav>
</header>
	

    <form id="myForm" onsubmit="return false" autocomplete = "off">
      <h1 align = center>Reservation</h1>

      <div style="text-align:center;">
        <span class="step" id = "step-1">1</span>
        <span class="step" id = "step-2">2</span>
        <span class="step" id = "step-3">3</span>
        <span class="step" id = "step-4">4</span>
      </div>

      <div class="tab" id = "tab-1">
        <h3>Available Date / Time</h3>

        <!-- <input name="date_time" id="datepicker" /> -->
        <div class="container-sm">
        <p id="datepicker"></p>
        </div>
        <div class="time" id="timeslots"></div>


      
        <div class="index-btn-wrapper">
          <div class="index-btn" onclick="run(1, 2);">Next</div>
        </div>
      </div>

      <div class="tab" id = "tab-2">
        <h3>Basic Information:</h3>
        <input type = "text" placeholder="First Name" name="firstname" id="firstname">
        <input type = "text" placeholder="Last Name" name="lastname" id="lastname">
        <input type = "text" placeholder="ID" name="ID" id="ID">
        <input type = "text" placeholder="Email" name="email" id="email">
        <input type = "text" placeholder="Phone" name="phone" id="phone">
        <div class="index-btn-wrapper">
          <div class="index-btn" onclick="run(2, 1);" class="fa-solid fa-backward-step">Previous</div>
          <div class="index-btn" onclick="run(2, 3);">Next</div>
        </div>
      </div>

      <div class="tab" id = "tab-3">
        <h3>Purpose of Reservation</h3>
        <div class="mb-3">
         <label for="exampleFormControlInput1" class="form-label">Type of event</label>
            <input  type="text" class="form-control" id="event" placeholder="Please enter here">
        </div>
        <div class="mb-3">
          <label for="exampleFormControlTextarea1" class="form-label">Purpose </label>
        <textarea class="form-control" id="purpose" rows="3"></textarea>
        </div>
        <div class="index-btn-wrapper">
          <div class="index-btn" onclick="run(3, 2);">Previous</div>
          <div class="index-btn" onclick="run(3, 4);">Next</div>
        </div>
      </div>

      <div class="tab" id = "tab-4">
        <h3>Summary</h3>
        <div id="summary">

        </div>
        <div class="index-btn-wrapper">
          <div class="index-btn" onclick="run(4, 3);">Previous</div>
          <div class="index-btn" onclick="run(4, 5);">Next</div>
        </div>
      </div>

      <div class="tab" id = "tab-5">

      <h2> Please double check your summary reservation before submit.</h2>
            <h2> Thank you!!!</h2>

        <div class="index-btn-wrapper">
          <div class="index-btn" onclick="run(5, 4);">Previous</div>
          <button class = "index-btn" id="submit" style = "background: blue;">Submit</button>
          
  
        </div>
      </div>

      <!-- <div class="modal-box">
        <i class="fa-regular fa-circle-check"></i>
        <h2>Completed</h2>
        <h3>Your reservation booked sucessfully.</h3>
        <h3>Please wait the approval that sent to your Email</h3>
        <h4>Thank you!!</h4>
        

        <div class="buttons">
          <button class="close-btn">Ok, Close</button>
          
        </div>
      </div> -->
  
    </form>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <!-- Moment.js -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<!-- Pikaday -->
<script src="https://unpkg.com/
			ionicons@5.5.2/dist/ionicons/ionicons.esm.js" type="module"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pikaday/1.8.0/pikaday.min.js"></script>
<script src="https://kit.fontawesome.com/3adbdef86b.js" crossorigin="anonymous"></script>
 <script src="gymsched.js"></script>
    <script src="reserve.js" ></script>

  </body>
</html>           