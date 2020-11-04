<?php 
	include ('server.php'); 
	$get_id = $_GET['post_id'];
	$get_comment = "select * from comments where post_id = '$get_id' ORDER by 1 DESC";

	$run_comment = mysql_query($db, $get_comment);

	while ($row = mysql_fetch_array($run_comment)) {
		$comment = $row['comment'];
		$comment_author = $row['comment_author'];
		$date = $row['date'];


		echo "
		<div"
	}

 ?>