<?php
include("connection.php");

session_start();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../static/club.css">
    <!-- fontawesome -->
    <script src="https://kit.fontawesome.com/14d91ba717.js" crossorigin="anonymous"></script>
    <!-- fonts -->
    <link href="https://fonts.googleapis.com/css2?family=EB+Garamond:ital,wght@0,400;0,500;0,600;0,700;0,800;1,452&display=swap" rel="stylesheet">
    <!-- jquery -->
    <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
</head>
<body>
    <!-- Navbar -->
    <div id="nav-placeholder">

    </div>
    <script>
    $(function(){
    $("#nav-placeholder").load("navbar.php");
    });
    </script>
    <!-- middle section -->
    <form action="" method="post">
    <div class="container">
        <div class="photo">
            <img src="../static/coding.jpg" alt="">
        </div>
        <div class="bio">
            <h2>Coding Club</h2><br>
            <p class="quote">~Happy coding!</p><br>
            <p class="intro">Coding Club is a place that brings people together, regardless of their gender or background. We all have the right to learn, and we believe learning is more fun and efficient when we help each other along the way.</p>
    
            <div class="join-btn">
                <button class="join" name="join">JOIN</button>
            </div>
            
        </div>
        
    </div>
    </form>

</body>
</html>

<?php 
    if (isset($_POST['join'])) {
        $username=$_SESSION['username'];

        $insert = "INSERT INTO codeclub(username) VALUES ('$username')";
        $query = mysqli_query($db, $insert);

        if ($query) {
            header("Location:codin_chat.php");
        }
    }
?>