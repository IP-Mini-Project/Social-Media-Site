<?php
 include ('server.php'); 
if (isset($_POST['test'])) {

	$testquery = "INSERT INTO notifications (username) VALUES ('{$_SESSION['username']}')";

	mysqli_query($db,$testquery);
 	# code...
 } 

 ?>

 <!DOCTYPE html>
 <html>
 <head>
 	<title>test</title>
 </head>
 <body>
 	<form method="post" action="notification.php">
 	<button name="test">Submit</button>
 </form>


 </body>


 </html>