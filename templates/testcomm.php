<?php 
include('connection.php') ;

if (isset($_POST['post-comment'])) {
	# code...
	$comment = mysqli_escape_string($db,$_POST['comment']);
	$result = "INSERT INTO comm (comment) VALUES ('$comment')";
	$inp = mysqli_query($db,$result);
}

?>