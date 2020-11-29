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
            <img src="../static/kids.png" alt="">
        </div>
        <div class="bio">
            <h2>Sports Club</h2><br>
            <p class="quote">~Play like a champion today</p><br>
            <p class="intro">A registered student organization that exists to promote and develop interest
in a particular sport or physical activity. Sport Clubs are strictly voluntary and
involvement in a Sport Club should enhance the student’s college experience and contribute to the
student’s overall education and wellness. </p>
    
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

        $insert = "INSERT INTO sportsclub(username) VALUES ('$username')";
        $query = mysqli_query($db, $insert);

        if ($query) {
            header("Location:sports_chat.php");
        }
    }
?>