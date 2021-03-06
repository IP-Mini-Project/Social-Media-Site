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
    <link rel="stylesheet" href="../static/chat.css">
    <!-- fontawesome -->
    <script src="https://kit.fontawesome.com/14d91ba717.js" crossorigin="anonymous"></script>
    <!-- fonts -->
    <link href="https://fonts.googleapis.com/css2?family=EB+Garamond:ital,wght@0,400;0,500;0,600;0,700;0,800;1,452&display=swap" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
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
    <div class="container-3">
        <div class="left">
            <div class="heading">
                <h3>CHATS</h3>
                <!-- <h3><i class="fas fa-edit"></i></h3> -->
            </div> 
            <div class="sub-head">
                <!-- <div class="group name">
                <a href="gen-chat.php"><h4><i class="fas fa-hashtag"></i> General Chat</h4></a>
                </div> -->
                <div class="club2 name">
                <a href="decision.php?name=sports" style="text-decoration: none; color:black; "><h4><i class="fas fa-table-tennis"></i> Sports Club</h4></a>
                </div>
                <div class="club2 name">
                <a href="decision.php?name=arts" style="text-decoration: none; color:black; "><h4><i class="fas fa-paint-brush"></i> Arts Club</h4></a>
                </div>
                <div class="club2 name">
                <a href="decision.php?name=coding" style="text-decoration: none; color:black; "><h4><i class="fas fa-code"></i> Coding Club</h4></a>
                </div>
                <!-- <div class="name">
                    <h4><i class="fas fa-at"></i> Zendaya</h4>
                </div>
                <div class="name">
                    <h4><i class="fas fa-at"></i> Zendaya</h4>
                </div>
                <div class="name">
                    <h4><i class="fas fa-at"></i> Zendaya</h4>
                </div>
                <div class="name">
                    <h4><i class="fas fa-at"></i> Zendaya</h4>
                </div>
                <div class="name">
                    <h4><i class="fas fa-at"></i> Zendaya</h4>
                </div>
                <div class="name">
                    <h4><i class="fas fa-at"></i> Zendaya</h4>
                </div>
                <div class="name">
                    <h4><i class="fas fa-at"></i> Zendaya</h4>
                </div>
                <div class="name">
                    <h4><i class="fas fa-at"></i> Zendaya</h4>
                </div>
                <div class="name">
                    <h4><i class="fas fa-at"></i> Zendaya</h4>
                </div> -->
            </div>



        </div>
        <div class="right">
            <div class="top-section">
                <div class="name">
                    <i class="fas fa-arrow-left back"></i>
                    <h2>Sports Club</h2>
                    <i class="fas fa-info"></i>
                </div>
                <div class="msg-box" id="ma">
                    <!-- their msg -->
                    <!-- <div class="their-msg">
                        <h4>Zendaya Coleman</h4>
                        <p>hello there!hello there!hello there!hello there!hello there!hello there!hello there!hello there!</p>
                    </div> -->
                    
                    <!-- my msg -->
                    <!-- <div class="my-msg">
                        <h4>You</h4>
                        <p>hellooooo hello there!hello there!hello there</p>
                    </div> -->
                    <?php

                    $q1= "SELECT * FROM sportschat";
                    $r1= mysqli_query($db, $q1);
                    while ($row= mysqli_fetch_assoc($r1)) {
                        $message= $row['message'];
                        $username= $row['username'];
                        $time= $row['time'];
                        echo "<div class='their-msg'>
                            <div class='nametime'><h4>$username</h4><span class='timestamp'>$time</span></div>
                            <p>$message </p>
                            </div>";
                        
                    }
                     
                    if (isset($_POST['submit'])) {
                        $message = $_POST['type-msg'];
                        $insert = "INSERT INTO sportschat(message, username) VALUES ('$message', '{$_SESSION['username']}')";
                        $query = mysqli_query($db, $insert);

                        if ($query) {
                            
                            echo "<div class='their-msg'>
                            <div class='nametime'><h4>{$_SESSION['username']}</h4><span class='timestamp'>$time</span></div>
                            <p>$message</p>
                            </div>";
                        }
                    }
                    ?>


                </div>
            </div>
            <div class="bottom-section">
                <form action="" method="post">
                    <textarea class="type-msg" name="type-msg" id="" cols="76" rows="1" ></textarea>
                    <button class="snd" type="submit" name="submit">
                    <i class="fas fa-paper-plane"></i>
                    </button>
                </form>

            </div>
        </div>
    </div>
    <script>
	var objDiv = document.getElementById("ma");
	objDiv.scrollTop = objDiv.scrollHeight;

   

	
</script>
</body>

</html>