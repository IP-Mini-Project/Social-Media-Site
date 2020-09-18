<?php
 include_once('server.php'); 
?>


<!DOCTYPE html>
<html lang="en">
<head>
	<title>Login V4</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../static/main.css">
<!--===============================================================================================-->
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100" >
			<div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-54">
				<form action="register.php" class="login100-form validate-form" method="post">
						<?php include('errors.php'); ?>
					<span class="login100-form-title p-b-49">
						Welcome !
					</span>

					<div class="wrap-input100 validate-input m-b-23" data-validate = "Username is required">
						<span class="label-input100">Userame</span>
						<input class="input100" type="text" name="username" placeholder="Type your username" required> 
						<span class="focus-input100" data-symbol="&#xf206;"></span>
							
					</div>
					<br>

					<div class="wrap-input100 validate-input m-b-23" data-validate = "Name is required">
						<span class="label-input100">Name</span>
						<input class="input100" type="text" name="name" placeholder="Name" required>
						<span class="focus-input100" data-symbol="&#xf206;"></span>
						
					</div>
					<br>


					<div class="wrap-input100 validate-input m-b-23" data-validate = "Email id is required">
						<span class="label-input100">Email id</span>
						<input class="input100" type="email" name="email" placeholder="Enter your Email id" required>
						<span class="focus-input100" data-symbol="&#64;"></span>
					</div>
					<br>

					<div class="wrap-input100 validate-input m-b-23" data-validate = "Phone is required">
						<span class="label-input100">Phone</span>
						<input class="input100" type="phone" name="phone" placeholder="Enter your Phone number" required > 
						<span class="focus-input100" data-symbol="&#9743;">
							
					</div>
					<br>

					<div class="wrap-input100 validate-input m-b-23" data-validate = "Gender is required">
						<span class="label-input100">Gender</span><br><br>
  							
 								 <input type="radio" name="gender" value="m" required> Male 			
  								<input type="radio" name="gender" value="f" required> Female    
  								<input type="radio" name="gender" value="o" required> Other
								
						</div>
					<br>

					<br>

					<div class="wrap-input100 validate-input" data-validate="Password is required">
						<span class="label-input100">New Password</span>
						<input class="input100" type="password" name="password_1" placeholder="Type your password" required>
						<span class="focus-input100" data-symbol="&#xf190;"></span>
						
					</div>
					<br>

					<div class="wrap-input100 validate-input" data-validate="Password is required">
						<span class="label-input100"> Re-Enter Password</span>
						<input class="input100" type="password" name="password_2" placeholder="Re-Enter your password" required>
						<span class="focus-input100" data-symbol="&#xf190;"></span>
						
					</div>
					<br>
					<br>
					
					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							<button type="submit" class="login100-form-btn" name="reg_user">
								Register
							</button>
						</div>
					</div>
					<br>
					<div class="flex-col-c p-t-100">

						<a href="login.php" class="txt2">
							Or Log In Here
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>
	

	<div id="dropDownSelect1"></div>
	<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320"><path fill="#0099ff" fill-opacity="1" d="M0,224L48,218.7C96,213,192,203,288,176C384,149,480,107,576,117.3C672,128,768,192,864,208C960,224,1056,192,1152,202.7C1248,213,1344,267,1392,293.3L1440,320L1440,320L1392,320C1344,320,1248,320,1152,320C1056,320,960,320,864,320C768,320,672,320,576,320C480,320,384,320,288,320C192,320,96,320,48,320L0,320Z"></path></svg>

</body>
</html>