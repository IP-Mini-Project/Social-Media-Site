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
        <div class="friends-wrap">
            <div class="img-div">
                <img src="../static/zendaya.jpg" alt="">
            </div>
            <div class="name-div">
                <h2>Zendaya</h2>
            </div>
        </div>
        <div class="friends-wrap">
            <div class="img-div">
                <img src="../static/zendaya.jpg" alt="">
            </div>
            <div class="name-div">
                <h2>Zendaya</h2>
            </div>
        </div>
        <div class="friends-wrap">
            <div class="img-div">
                <img src="../static/zendaya.jpg" alt="">
            </div>
            <div class="name-div">
                <h2>Zendaya</h2>
            </div>
        </div>
        <div class="friends-wrap">
            <div class="img-div">
                <img src="../static/zendaya.jpg" alt="">
            </div>
            <div class="name-div">
                <h2>Zendaya</h2>
            </div>
        </div>
    </div>
</body>
</html>