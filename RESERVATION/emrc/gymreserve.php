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
  <h2> EMRC Reservation System </h2>
	
	</nev>
		<nav class="navigation">
		<a href="../index.php" ><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1792 1792" id="Home"><path d="M1472 992v480q0 26-19 45t-45 19h-384v-384H768v384H384q-26 0-45-19t-19-45V992q0-1 .5-3t.5-3l575-474 575 474q1 2 1 6zm223-69-62 74q-8 9-21 11h-3q-13 0-21-7L896 424l-692 577q-12 8-24 7-13-2-21-11l-62-74q-8-10-7-23.5t11-21.5l719-599q32-26 76-26t76 26l244 204V288q0-14 9-23t23-9h192q14 0 23 9t9 23v408l219 182q10 8 11 21.5t-7 23.5z" fill="#ffffff" class="color000000 svgShape"></path></svg></a>

	</nav>
</header>
	

    <form id="myForm" onsubmit="return false" autocomplete = "off">
      <h1 align = center>Reservation</h1>

      <div style="text-align:center;">
      <span class="step" id = "step-0">0</span>
        <span class="step" id = "step-1">1</span>
        <span class="step" id = "step-2">2</span>
        <span class="step" id = "step-3">3</span>
        <span class="step" id = "step-4">4</span>
      </div>

      <div class="tab" id = "tab-0">

      <h3>REMINDERS:</h3>

      <div class="announce " id="announce">
        <div class="circle">
        <div id="announcementSlider" class="carousel slide" data-bs-ride="carousel" >
            <ol class="carousel-indicators" id="carouselIndicators"></ol>
            <div class="carousel-inner" id="carouselInner">
            </div>
        </div>
     </div>
</div>
        <div class="index-btn-wrapper">
          <div class="index-btn" onclick="run(0, 1);">Next</div>
        </div>
      </div>

      <div class="tab" id = "tab-1">
        <h3>Available Date / Time</h3>

        <!-- <input name="date_time" id="datepicker" /> -->
        <div class="container-sm">
        <p id="datepicker"></p>
        </div>
        <div class="time" id="timeslots"></div>


      
        <div class="index-btn-wrapper">
        <div class="index-btn" onclick="run(1, 0);" class="fa-solid fa-backward-step">Previous</div>
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