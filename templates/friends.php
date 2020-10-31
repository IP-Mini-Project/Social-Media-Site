<?php
include("connection.php");

session_start();


?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Friends</title>
    <link rel="stylesheet" href="../static/friends.css">
    <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
    <script src="https://kit.fontawesome.com/14d91ba717.js" crossorigin="anonymous"></script>
</head>
<body>
    <!-- Navbar -->
    <div id="nav-placeholder">

    </div>
    <script>
        $(function() {
            $("#nav-placeholder").load("navbar.php");
        });
    </script>
    <!-- Navbar 2-->
    <div id="nav2-placeholder">

    </div>
    <script>
    $(function(){
    $("#nav2-placeholder").load("navbar2.php");
    });
    </script>
    <!-- End of Nav2 -->
    <!-- container -->
    
    
    <div class="container">
        <?php 
            $q1= "SELECT * FROM user";
            $r1= mysqli_query($db, $q1);
            while ($row = mysqli_fetch_array($r1)): $pfpurl= $row['pfp']; $name= $row['username'];
        ?>
        <div class="friends-wrap">
            <div class="img-div">
                <?php echo "<img src='$pfpurl' alt='error'>"; ?>
            </div>
            <div class="name-div">
                <?php echo "<h2>$name</h2>"; ?>
            </div>
        </div>
        <?php endwhile; ?>
    </div>
    
</body>
</html>