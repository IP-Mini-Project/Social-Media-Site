<?php
include("server.php");

$like = mysqli_query($db, "SELECT * FROM likes");

$comment = mysqli_query($db, "SELECT * FROM comments");



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


        <?php $noti = "SELECT * FROM notifications " ?>
        <?php while ($row = mysqli_fetch_array($noti)) : ?>
            <?php if ($row['type'] == 0): ?>
                
            <div class="noti">
                <i class="far fa-thumbs-up"></i>
                <p><?php echo $row['originator']; ?> liked your post</p>
            </div>
            <?php else: ?>
            <div class="noti">
                <i class="far fa-comments"></i>
                <p><?php echo $row['originator']; ?> commented on your post</p>
            </div>
            <?php endif ?>
        <?php endwhile; ?>

        
            
            </div>
     
</body>

</html>