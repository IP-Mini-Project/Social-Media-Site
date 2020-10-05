<?php 
include("connection.php");
session_start();
?>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../static/index.css">
    
    <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
    <script src="https://kit.fontawesome.com/14d91ba717.js" crossorigin="anonymous"></script>
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
    <!-- container -->
    <section id="index">
        <div class="container">
            <div class="clubs">
               <h2>Clubs</h2><hr>
               <ul>
                    <a href="decision.php"><li><i class="fas fa-table-tennis"></i>SPORTS</li></a>
                    <!-- <a href="decision.php"><li>SPORTS</li></a> -->
                    
               </ul>
            </div>
            <div class="right-part">
                <!-- whats happeningarea -->
                
                    <div class="new-post">
                        <div class="wrapper">
                            <div class="newpost-pic">
                                <img src="../static/pfp.jpg" alt="">
                            </div>
                            <form action="index.php" method="post" enctype="multipart/form-data" >
                            <div class="newpost-text">
                                <textarea id="text" name="text-box" rows="4" cols="62" placeholder="What's happening?"></textarea>
                            </div>
                        </div>
                        <input type="hidden" name="size" value="1000000">
                        <div class="endline">
                        <!-- <i class="fas fa-camera"></i> --> <input type="file" name="image">
                            <input type="submit" value="POST" class="btn" name="post"> </form>
                        </div>
                    </div>
                


                <?php 
                    $msg = "";
                    if (isset($_POST['post'])) {

                        $image = $_FILES['image']['name'];
                    // Get text
                    $image_text = mysqli_real_escape_string($db, $_POST['text-box']);

                    // image file directory
                    $target = "../post-images/".basename($image);

                    $sql = "INSERT INTO post (image, text, likes, username) VALUES ('$image', '$image_text','0', '{$_SESSION['username']}')";
                    // execute query
                    mysqli_query($db, $sql);

                    if (move_uploaded_file($_FILES['image']['tmp_name'], $target)) {
                        $msg = "Image uploaded successfully";
                    }else{
                        $msg = "Failed to upload image";
                    }
                }
                $result = mysqli_query($db, "SELECT * FROM post");
                    
                
                ?>
                <!-- end of whats happening -->
                <!-- posts code -->
                <div class="post-div" style="display: flex;flex-direction: column-reverse;">
                <?php 
                
                while ($row = mysqli_fetch_array($result)) {
                   $time = $row['time'];
                   $username= $row['username'];
                   $text = $row['text'];
                   $likes = $row['likes'];


                   echo " 
                   <div class='posts'>
                    <section class='card'>
                    	<div class='header'>
                            <div class='prof-img'>
                             </div>
                             <div class='prof-info'>
                                <div class='username'>$username</div>
                                <div class='location'>Mumbai</div>
                            </div>
                            <div class='time'>$time</div>
                        </div>
                        <div class='post-img'>
                            <img src='../post-images/".$row['image']."' class='img'>
                        </div>
                        <div class='footer'>
                        <div class='likes'>
                            <div class='like-icon'><i class='fas fa-heart'></i></div>
                            <div class='like-count'>$likes</div>
                        </div>

                        <div class='description'>
                            <div class='user'>
                            	<div class='username'><p>$username</p></div>
                            	<div class='caption'><p>$text</p></div>
                            </div>
                        </div>

                        <div class='post-after'>
                            <div class='comment-img'><img src='../static/pfp.jpg' id='comment-img'></div>
                            <div class='comment'><textarea id='text2' rows='1' cols='250' placeholder='add a comment...' class='comment-text'></textarea></div>
                            <div class='options'><i class='fas fa-ellipsis-h' ></i></div>
                        </div>
                    </div>
                    
                    </section>  
        
    

                </div>
                   ";
                  }
                ?>
                </div>
                <!-- <div class="posts">
                    <section class="card">
                    	<div class="header">
                            <div class="prof-img">
                             </div>
                             <div class="prof-info">
                                <div class="username">username</div>
                                <div class="location">Mumbai</div>
                            </div>
                            <div class="time">1hr</div>
                        </div>
                        <div class="post-img">
                            <img src="../static/zendaya.jpg" class="img">
                        </div>
                        <div class="footer">
                        <div class="likes">
                            <div class="like-icon"><i class="fas fa-heart"></i></div>
                            <div class="like-count">45 likes</div>
                        </div>

                        <div class="description">
                            <div class="user">
                            	<div class="username"><p>Username</p></div>
                            	<div class="caption"><p>Hello this is caption!</p></div>
                            </div>
                        </div>

                        <div class="post-after">
                            <div class="comment-img"><img src="../static/pfp.jpg" id="comment-img"></div>
                            <div class="comment"><textarea id="text2" rows="1" cols="250" placeholder="add a comment..." class="comment-text"></textarea></div>
                            <div class="options"><i class="fas fa-ellipsis-h" ></i></div>
                        </div>
                    </div>
                    
                    </section>  
        
    

                </div> -->
                <!-- end of posts code -->
            </div>
        </div>
    </section>
</body>
</html>