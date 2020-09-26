<?php 
include("connection.php");
session_start();

$check_user = "SELECT * FROM sportsclub WHERE username='{$_SESSION['username']}'";
		$run_user = mysqli_query($db, $check_user);
        $check = mysqli_num_rows($run_user);
        
    if ($check==1) {
        header("Location: sports_chat.php");
    }
    else{
        header("Location: club.php");
    }
?>