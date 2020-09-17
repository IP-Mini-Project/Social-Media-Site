<?php include_once('server.php'); ?>
<!DOCTYPE html>
<html>
<head>
	<title>Login</title>
</head>
<body>

	<div class="container">
		<div class="header">
			<h2>Login</h2>
		</div>

		<form action="login2.php" method="post">
			<?php include('errors.php'); ?>
			<div>
				<label for="username">Username :</label>
				<input type="text" name="username" required>
			</div>


			<div>
				<label for="password_1">Password :</label>
				<input type="password" name="password_1" required>
			</div>

		

			<button type="submit" name="login_user">Submit</button>

			<div>
				<p>New user?<a href="register2.php">Sign up</a></p>
			</div>
			
		</form>








	</div>

</body>
</html>