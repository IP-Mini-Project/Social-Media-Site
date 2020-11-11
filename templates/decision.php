<?php 
include("connection.php");
session_start();

$club = $_GET['name'];
if ($club == "sports") {
    $check_user = "SELECT * FROM sportsclub WHERE username='{$_SESSION['username']}'";
		$run_user = mysqli_query($db, $check_user);
        $check = mysqli_num_rows($run_user);
        
    if ($check==1) {
        header("Location: sports_chat.php");
    }
    else{
        header("Location: club.php");
    }
}
elseif($club == "arts"){
    $check_user = "SELECT * FROM artclub WHERE username='{$_SESSION['username']}'";
		$run_user = mysqli_query($db, $check_user);
        $check = mysqli_num_rows($run_user);
        
    if ($check==1) {
        header("Location: arts_chat.php");
    }
    else{
        header("Location: artsclub.php");
    }
}
elseif($club == "coding"){
    $check_user = "SELECT * FROM codeclub WHERE username='{$_SESSION['username']}'";
		$run_user = mysqli_query($db, $check_user);
        $check = mysqli_num_rows($run_user);
        
    if ($check==1) {
        header("Location: codin_chat.php");
    }
    else{
        header("Location: codingclub.php");
    }
}

?>