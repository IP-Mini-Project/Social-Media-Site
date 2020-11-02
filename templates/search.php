<?php 
    require_once 'server.php';
    if (isset($_POST['submit'])) {
        $data = $_POST['search'];
        $sql = "SELECT * FROM user WHERE username = '$data'";
        $res = mysqli_query($db, $sql);
        $row= mysqli_fetch_assoc($res);
        $username= $row['username'];
      }
      
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search</title>
    <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
    <script src="https://kit.fontawesome.com/14d91ba717.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="../static/search.css">
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


    <div class="wrap">
        <div class="cont">
            <div class="onetwo">
                <img src="../static/zendaya.jpg" alt="">
                <div class="second">
                    
                    <?php echo "<h2>$username</h2>"; ?>
                    <p>bio</p>
                </div>
            </div>
            <i class="fas fa-comment-alt"></i>
        </div> 
    </div>
    
    
</body>
</html>