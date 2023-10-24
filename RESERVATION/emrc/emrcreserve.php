<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Multi Step Form</title>
    <link rel="stylesheet" href="reserve.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  </head>
  <body>


  <header>
		<h2 class="logo">Welcome To EMRC Reservation
        </h2> 
		<nav class="navigation">
		<a href="../index.php">Back</a>
		<button class="btnappoint-popup" id="button">Reserve Facility</button>
	</nav>
</header>
	

    <form id="myForm" action="" method="post" autocomplete = "off">
      <h1 align = center>Reservation</h1>

      <div style="text-align:center;">
        <span class="step" id = "step-1">1</span>
        <span class="step" id = "step-2">2</span>
        <span class="step" id = "step-3">3</span>
        <span class="step" id = "step-4">4</span>
      </div>

      <div class="tab" id = "tab-1">
        <p>Available Date / Time</p>

        <div id="cronofy-date-time-picker"></div>
        <script src="https://elements.cronofy.com/js/CronofyElements.v1.56.3.js"></script>
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
        </script>
        <div class="index-btn-wrapper">
          <div class="index-btn" onclick="run(1, 2);">Next</div>
        </div>
      </div>

      <div class="tab" id = "tab-2">
        <p>Basic Information:</p>
        <input type = "text" placeholder="First Name" name="firstname">
        <input type = "text" placeholder="Last Name" name="lastname">
        <input type = "text" placeholder="ID" name="ID">
        <input type = "text" placeholder="Email" name="email">
        <input type = "text" placeholder="Phone" name="phone">
        <div class="index-btn-wrapper">
          <div class="index-btn" onclick="run(2, 1);">Previous</div>
          <div class="index-btn" onclick="run(2, 3);">Next</div>
        </div>
      </div>

      <div class="tab" id = "tab-3">
        <p>Purpose of Reservation</p>
        <div class="purpose">
        <input type = "text" placeholder="Please Enter here" name="dd">
        </div>
        <div class="index-btn-wrapper">
          <div class="index-btn" onclick="run(3, 2);">Previous</div>
          <div class="index-btn" onclick="run(3, 4);">Next</div>
        </div>
      </div>

      <div class="tab" id = "tab-4">
        <p>Summary</p>
        <input type = "text" placeholder="Username" name="username">
        <input type = "password" placeholder="Password" name="password">
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

    <script src="emrcreserve.js" ></script>
  </body>
</html>           