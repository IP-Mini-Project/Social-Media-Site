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
    <link rel="stylesheet" href="../static/navbar.css">
    <!-- fontawesome -->
    <script src="https://kit.fontawesome.com/14d91ba717.js" crossorigin="anonymous"></script>
    <!-- fonts -->
    <link href="https://fonts.googleapis.com/css2?family=EB+Garamond:ital,wght@0,400;0,500;0,600;0,700;0,800;1,452&display=swap" rel="stylesheet">

</head>

<body>
    <!-- Navbar -->
    <div class="navbar">
        <div class="logo">
            <a href="http://">
                <h3>LOGO</h3>
            </a>
        </div>
        <div class="middle">

            <a href="index.php"><i class="fas fa-house-user"></i></a>
            <a href="roommate.php"><i class="fas fa-users"></i></a>
            <a href="gen-chat.php"><i class="fas fa-comment-alt"></i></a>
            <a href="notification.php"><i class="fas fa-bell"></i><span class="badge badge-dark badge-corner radius-3">8</span></a>


        </div>

        <div class="acc">
            <form action="navbar.php">

                <div class="search-box">
                    <input class="search-txt" type="text" name="" placeholder="">
                    <button class="btn-final" type="submit"><i class="fas fa-search"></i></button>
                </div>


                <div class="dropdown">
                    <button class="corner-img"><img class="pfp" src="../static/pfp.jpg" alt=""></button>
                    <div class="div">
                        <a href="profile2.php"><i class="fas fa-user"></i> Profile</a>
                        <a href="logout.php"><i class="fas fa-sign-out-alt"></i> Logout</a>
                    </div>
                </div>
            </form>
        </div>


    </div>
    
</body>