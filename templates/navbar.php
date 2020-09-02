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
            <a href="http://"><h3>LOGO</h3></a>
        </div>
        <div class="middle">
            <ul>
            <li><a href="#"><i class="fas fa-house-user"></i></a></li>
            <li><a href="#"><i class="fas fa-users"></i></a></li>
            <li><a href="#"><i class="fas fa-comment-alt"></i></a></li>
            <li><a href="#"><i class="fas fa-bell"></i></a></li>
            </ul>
            
        </div>
        <div class="acc">
        <form action="navbar.php">
            <ul>
                <div class="search-box">
                <input class="search-txt" type="text" name="" placeholder="">
                <button class="btn-final" type="submit"><i class="fas fa-search"></i></button>
                </div>
            
            
            <div class="dropdown">
            <li><button class="corner-img"><img class="pfp" src="../static/pfp.jpg" alt=""></button></li>
                <div class="div">
                <a href="#"><i class="fas fa-user"></i> Profile</a> 
                <a href="#"><i class="fas fa-sign-out-alt"></i> Logout</a>
                </div>   
                
            </div>
            </ul>
        </form>    
        </div>
    </div>
</body>