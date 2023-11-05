<!DOCTYPE html>
<html lang="en">	
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge"> 
	<meta name="viewport" <content="width=device-width,initial-scale=1.0">
	<title>Website With Login & Registration | Codehal</title>
	<link rel="stylesheet" href="../ADMINLOGIN/style.css">
	<link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
</head>
<body>
	<header>
		<h2 class="logo">Registrar Login</h2> 
		<nav class="navigation">
		<a href="../indexmain.php"  >Home</a>
		<button class="btnLogin-popup">Login</button>
</li>
	</nav>
</header>
<div class="wrapper">
<span class="icon-close">
	<i class="uil uil-times"></i>
	</span>
	<div class="form-box login"> 
		<h2>Login</h2>
		
		<form action="../ADMINLOGIN/adminlogin.validate.php" method="post">
			
			<div class="input-box">
				<span class="icon">
				<ion-icon name="mail">
			</ion-icon>
				</span>
			<input type="email" name="mail" required>
				<label>Email</label>
		</div>
		<div class="input-box">
			<span class="icon">
				<ion-icon name="lock-closed"></ion-icon>
			</span>
			<input type="password" name="pass"  required>
			<label>Password</label>
		</div>
		<div class="remember-forgot">
				<label><input type="checkbox"> Remember me</label>
				<a href="#">Forgot Password?</a>
		</div>
		<button type="submit" class="btn">Login</button>
		<div class="login-register">
			<p>Please enter valid account <a href="#"
				class="register-link"></a></p>
		</div>
	</form>
  </div>
	
	<div class="form-box register"> 
		<h2>Registration</h2>
		<form action="signup.validate.php" method="post">
			
			<div class="input-box">
				<span class="icon">
				<ion-icon name="person">
			</ion-icon>
				</span>
			<input type="text" name="name" required>
				<label>Name</label>
		</div>
			
			<div class="input-box">
				<span class="icon">
				<ion-icon name="phone">
			</ion-icon>
				</span>
			<input type="email" name="cellnum" required>
				<label>Number</label>
		</div>
			
			<div class="input-box">
				<span class="icon">
				<ion-icon name="person">
			</ion-icon>
				</span>
			<input type="text" name="username" required>
				<label>Username</label>
		</div>
			
			<div class="input-box">
				<span class="icon">
				<ion-icon name="mail">
			</ion-icon>
				</span>
			<input type="email" name="email" required>
				<label>Email</label>
		</div>
			
			
		<div class="input-box">
			<span class="icon">
				<ion-icon name="lock-closed"></ion-icon>
			</span>
			<input type="password" name="pass" required>
			<label>Password</label>
		</div>
			
			
		<div class="remember-forgot">
				<label><input type="checkbox"> I agree to the term & conditions</label>
				
		</div>
		<button type="submit" class="btn">Register</button>
		<div class="login-register">
			
			<p>Already have an account? <a href="#"
				class="login-link">Login</a></p>
		</div>
	</form>
  </div>
	
</div>
		<script src="script.js"></script>
		<script src="style.css"></script>
		<script src="../ADMINLOGIN/script.js"></script>
		<script src="../ADMINLOGIN/script.js"></script>
			<script type="module" src="https://unpkg.com/
			ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.
2/dist/ionicons/ionicons.js">
	</script>
</body>
</html>