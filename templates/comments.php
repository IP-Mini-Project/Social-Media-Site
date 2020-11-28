<?php 
	
	include ('server.php');


	

	    if (isset($_POST['post-comment'])) {
    
    $post_id=mysqli_escape_string($db,$_POST['id']);
    $username=mysqli_escape_string($db,$_POST['username']);
    

        $comment = mysqli_escape_string($db, $_POST['comment']);
        $comment_auth = $_SESSION['username'];

        // $get_username = "SELECT username FROM post WHERE id=('$post_id')";
        // $username = mysqli_fetch_assoc($db, $get_username);

        $query = "INSERT INTO comments (post_id,username,comment,comment_author) VALUES ('$post_id','$username','$comment','$comment_auth')";
		echo "<script>console.log('".$query."')</script>";
        if (mysqli_query($db, $query)) {
			echo "<script>console.log('DONE')</script>";
		}
		else{
			echo "<script>console.log('notfound')</script>";
		}

		
}


if(isset($_POST['post-comment'])) {

	$noti = "INSERT INTO notifications (type,username,originator,post_id) VALUES (1,'$username','$comment_auth','$post_id')";
	mysqli_query($db,$noti);
}





	// $get_comment = "SELECT * FROM comments WHERE post_id = '$post_id' ORDER by 1 DESC";

	// $run_comment = mysql_query($db, $get_comment);

	// while ($row = mysql_fetch_array($run_comment)) {
	// 	$comment = $row['comment'];
	// 	$comment_author = $row['comment_author'];
	// 	$date = $row['date'];


		
	// }

?>





