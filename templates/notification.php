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
    <script src="https://kit.fontawesome.com/14d91ba717.js" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
    <link rel="stylesheet" href="../static/notif.css">
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
    <!-- body -->
    <div class="container-4">
        <div class="head">
            <h3>Notifications</h3>
        </div>
        <div class="body-wrap">
            <div class="liked noti">
                <a href="">
                <i class="far fa-thumbs-up"></i>
                <p> Zendaya liked your post.</p>
                </a>
               
            </div>
            <div class="mention noti">
                <a href="">
                <i class="far fa-comments"></i>
                <p>Zendaya commented on your post.</p>
                </a>
                
            </div>
            <div class="foll-req noti">
                <a href="">
                <i class="fas fa-user-plus"></i>
                <p>@Zendaya has requested connection.</p>
                </a>
            
            </div>
        </div>

    </div>
</body>

</html>