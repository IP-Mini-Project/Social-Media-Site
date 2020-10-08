<?php
 include ('connection.php'); 
 $type=$_POST['type'];
$id=$_POST['id'];
if($type=='like'){
 $sql="UPDATE post SET likes=likes+1 WHERE id = $id ";
}
else{
 $sql="UPDATE post SET likes=likes-1 WHERE id = $id";
}
 mysqli_query($db,$sql);
 ?>