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
	
	<h1> Welcome to Gymnemsuim Reservation System</h1>
	
	</nev>
		<nav class="navigation">
		<a href="../index.php" class="fa-solid fa-house" style="color: #ffffff;"></a>
		<button class="btnappoint-popup" id="button">Reserve Facility</button>
	</nav>
</header>
	

    <form id="myForm" onsubmit="return false" method="post" autocomplete = "off">
      <h1 align = center>Reservation</h1>

      <div style="text-align:center;">
        <span class="step" id = "step-1">1</span>
        <span class="step" id = "step-2">2</span>
        <span class="step" id = "step-3">3</span>
        <span class="step" id = "step-4">4</span>
      </div>

      <div class="tab" id = "tab-1">
        <p>Available Date / Time</p>

        <!-- <input name="date_time" id="datepicker" /> -->
        <div class="container-xxl">
        <p id="datepicker" style="height: 200%; width:200%"></p>
        </div>
        
<div class="time" id="timeslots"></div>

        <!-- <div id="cronofy-date-time-picker"></div> -->
        <!-- <script src="https://elements.cronofy.com/js/CronofyElements.v1.56.3.js"></script>
        <script>
        CronofyElements.DateTimePicker({
        element_token: "{ELEMENT_TOKEN}",
        target_id: "cronofy-date-time-picker",
        availability_query: {
            participants: [
                {
                    required: "all",
                    members: [
                        { sub: "acc_5ba21743f408617d1269ea1e" },
                        { sub: "acc_64b17d868090ea21640c914c" }
                    ]
                }
            ],
            required_duration: { minutes: 30 },
            query_periods: [
                { start: "2023-10-17T09:00:00Z", end: "2023-10-17T17:00:00Z" },
                { start: "2023-10-18T09:00:00Z", end: "2023-10-18T17:00:00Z" }
            ]
        },
        styles: {
            prefix: "custom-name"
        },
        callback: notification => console.log("callback", notification)
    });
        </script> -->
        <div class="index-btn-wrapper">
          <div class="index-btn" onclick="run(1, 2);">Next</div>
        </div>
      </div>

      <div class="tab" id = "tab-2">
        <p>Basic Information:</p>
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
        <p>Purpose of Reservation</p>
        <div class="mb-3">
         <label for="exampleFormControlInput1" class="form-label">Type of event</label>
            <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="Please enter here">
        </div>
        <div class="mb-3">
          <label for="exampleFormControlTextarea1" class="form-label">Purpose </label>
        <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
        </div>
        <div class="index-btn-wrapper">
          <div class="index-btn" onclick="run(3, 2);">Previous</div>
          <div class="index-btn" onclick="run(3, 4);">Next</div>
        </div>
      </div>

      <div class="tab" id = "tab-4">
        <p>Summary</p>
        <div id="summary">

        </div>
        <div class="index-btn-wrapper">
          <div class="index-btn" onclick="run(4, 3);">Previous</div>
          <div class="index-btn" onclick="run(4, 5);">Next</div>
        </div>
      </div>

      <div class="tab" id = "tab-5">
        <div class="index-btn-wrapper">
          <div class="index-btn" onclick="run(5, 4);">Previous</div>
          <button class = "index-btn" type="submit" name="submit" style = "background: blue;">Submit</button>
        </div>
      </div>
    </form>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <!-- Moment.js -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<!-- Pikaday -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/pikaday/1.8.0/pikaday.min.js"></script>
    <script src="reserve.js" ></script>
    <script src="gymsched.js"></script>
  </body>
</html>           