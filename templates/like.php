<?php
 include ('server.php'); 
 $type=$_POST['type'];
$id=$_POST['id'];

// $get_username = mysqli_query($db,"SELECT * FROM posts");
// $sql_username = mysqli_query($db, "SELECT * FROM post");
// $row2 = mysqli_fetch_array($sql_username);
// if ($row2['id'] == '$id') {
// 	$post_username=$row2['post_username'];
	
// }


if($type=='like'){
 $sql = "UPDATE post SET likes=likes+1 WHERE id = $id ";
}
// else{
//  $sql="UPDATE post SET likes=likes-1 WHERE id = $id";
// }
 mysqli_query($db,$sql);

if (isset($_POST['type'])) {
	
	$username = $_SESSION['username'];

$query = "INSERT INTO likes (post_id,username,post_username) VALUES ('$id','$username','$post_username')";
	mysqli_query($db,$query);
	# code...
}

if(isset($_POST['type'])) {

	$noti = "INSERT INTO notifications (type,username,originator,post_id) VALUES (0,'$username','$username','$id')";
	mysqli_query($db,$noti);
}


 ?>