<?php
 include ('server.php'); 
 $type=$_POST['type'];
$id=$_POST['id'];
$post_username=$_POST['post-user'];

if($type=='like'){
 $sql="UPDATE post SET likes=likes+1 WHERE id = $id ";
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


 ?>