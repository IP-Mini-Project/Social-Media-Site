<?php

include_once('server.php');
?>

<!DOCTYPE html>
<html>
<head>
	<title>Register</title>
</head>
<body>

	<div class="container">
		<div class="header">
			<h2>Register</h2>
		</div>

		<form action="register2.php" method="post">
			<?php include('errors.php'); ?>
			<div>
				<label for="username">Username :</label>
				<input type="text" name="username" >
			</div>

			<div>
				<label for="email">Email :</label>
				<input type="email" name="email" >
			</div>

			<div>
				<label for="password_1">Password :</label>
				<input type="password" name="password_1" >
			</div>

			<div>
				<label for="password_2">Retype password :</label>
				<input type="password" name="password_2" >
			</div>

			<button type="submit" name="reg_user">Submit</button>

			<div>
				<p>Already a user ?<a href="login2.php">Log in</a></p>
			</div>
			
		</form>








	</div>

</body>
</html>