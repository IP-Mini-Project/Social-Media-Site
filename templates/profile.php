<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../static/profile.css">
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
    <div class="container">
        <div class="photo">
            <img src="../static/zendaya.jpg" alt="">
        </div>
        <div class="bio">
            <h2>Zendaya Coleman</h2><br>
            <p class="quote">~Some random quote..</p><br>
            <p><i class="fas fa-university"></i>University of Texas</p>
            <p><i class="fas fa-map-marker-alt"></i> US</p>
            <h3>Hobbies</h3>
            <p class="hobb">-Acting</p>
            <p class="hobb">-Acting</p>
            <p class="hobb">-Acting</p>
            <div class="connect-btn">
                <button class="connect">CONNECT</button>
            </div>
            
        </div>
        
    </div>

</body>
</html>