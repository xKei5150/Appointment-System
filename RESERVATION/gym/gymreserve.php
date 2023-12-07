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
  <h2> Gymnasium Reservation System </h2>
	
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
        <input type = "text" placeholder="Application behalf; (Bussiness, Organization)" name="org" id="org">
        <input type = "text" placeholder="First Name Individual Reponsible for the Event" name="firstname" id="firstname">
        <input type = "text" placeholder="Last Name Individual Reponsible for the Event" name="lastname" id="lastname">
        <input type = "text" placeholder="ID" name="ID" id="ID">
        <input type = "email" placeholder="Email" name="email" id="email">
        <input type = "number" placeholder="Phone" name="phone" id="phone">
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
          <label for="exampleFormControlTextarea1" class="form-label" >Purpose </label>
        <textarea class="form-control" id="purpose" rows="3" ></textarea>

        </div>
      
        <div class="col-md-4">
    <label for="validationCustom01" class="form-label">Equipment Tools</label>
    <input type="number" class="form-control" id="table" placeholder="Number of Table">
    <div class="valid-feedback">
    </div>
  </div>
  <div class="col-md-4">
    <label for="validationCustom02" class="form-label"></label>
    <input type="number" class="form-control" id="chair" placeholder="#Number of chair">
    <div class="valid-feedback">
    </div>
  </div>

  <div class="col-md-4">
    <label for="validationCustom03" class="form-label"></label>
    <input type="text" class="form-control" id="other" placeholder="Others equipment">
    <div class="valid-feedback">
    </div>
  </div>

        <div class="index-btn-wrapper">
          <div class="index-btn" onclick="run(3, 2); ">Previous</div>
          <div class="index-btn" onclick="run(3, 4); ">Next</div>
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
          <button class = "index-btn" id="submit" style = "background: blue;" data-bs-toggle="modal" data-bs-target="#exampleModal">Submit</button>
          
  
        </div>
      </div>
  
    </form>


    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header border-bottom-0">
        <h5 class="modal-title" id="exampleModalLabel">Completed</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body text-center py-4">
        <i class="fa-regular fa-circle-check fa-3x text-danger mb-3"></i>
        <h2 class="mb-3">Your reservation is booked successfully.</h2>
        <h3 class="mb-3">Please wait for the approval that has been sent to your email.</h3>
        <h4>Thank you!</h4>
      </div>
      <div class="modal-footer justify-content-center border-top-0">
        <button type="button" class="btn btn-danger" data-bs-dismiss="modal" id="closeButton">Ok, Close</button>
      </div>
    </div>
  </div>
</div>

<style>
.modal-content {
  border-radius: 0.5rem;
  overflow: hidden; /* Ensures the border radius applies for child elements */
}

.modal-header, .modal-footer {
  border: none;
}

.modal-title {
  font-weight: bold;
  text-align: center;
}

.btn-close {
  background: none;
  opacity: 0.7;
}

.btn-close:hover {
  opacity: 1;
}

/* Animation */
.modal.fade .modal-dialog {
  transition: transform 0.3s ease-out;
  transform: translateY(-100px);
}

.modal.show .modal-dialog {
  transform: translateY(0);
}

/* Button styling */
#closeButton {
  font-weight: bold;
  box-shadow: 0 2px 5px rgba(0, 123, 255, 0.5);
  transition: background-color 0.2s ease-in-out, transform 0.2s ease-in-out;
}

#closeButton:hover {
  background-color: maroon;
  transform: translateY(-2px);
}

/* FontAwesome icon */
.fa-circle-check {
  color: maroon;
}
</style>




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