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
            <img src="../static/art.jpg" alt="">
        </div>
        <div class="bio">
            <h2>Arts Club</h2><br>
            <p class="quote">~Let's get creative</p><br>
            <p class="intro">The Art Club is a place for practicing artists to hone in on their skills, develop their techniques and portfolios, collaborate with other artists like themselves, create bonds with the community through the arts, and learn how to work together through group projects that will beautify the school and community.</p>
    
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

        $insert = "INSERT INTO artclub(username) VALUES ('$username')";
        $query = mysqli_query($db, $insert);

        if ($query) {
            header("Location:arts_chat.php");
        }
    }
?>