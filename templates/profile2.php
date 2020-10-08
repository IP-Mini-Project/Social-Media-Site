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
    <link rel="stylesheet" href="../static/profile.css">
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
    <div class="container-2">
        <div class="left">
            <div class="photo">
                <?php 
                $sql = mysqli_query($db, "SELECT * FROM user WHERE username='{$_SESSION['username']}'");
                $row = mysqli_fetch_array($sql);
                $pfp = $row['pfp'];
                
                echo "<img src='$pfp' alt='nope'>";
                ?>
                <!-- <img src="../static/zendaya.jpg" alt=""> -->
            </div>
            <?php echo "<h3>{$_SESSION['username']}</h3><br>"; ?>
            <p class="quote2">~Some random quote..</p><br>
            <p><i class="fas fa-university"></i>University of Texas</p>
            <p><i class="fas fa-map-marker-alt"></i> US</p>
            <h4>Hobbies</h4>
            <p class="hobb2">-Acting</p>
            <p class="hobb2">-Acting</p>
            <p class="hobb2">-Acting</p>

        </div>
        <div class="right">
            <div class="top-section">
                <div class="post-btn">
                    <a href="">POSTS</a>
                </div>
                <div class="edit-btn">
                <a href="editprofile.php">EDIT PROFILE</a> 
                </div>
            </div>

            <?php 
                $result = mysqli_query($db, "SELECT * FROM post WHERE username='{$_SESSION['username']}' ");
            
            
            ?>

            <div class="post-wrapper" style="display: flex;flex-direction: column-reverse;">
            <?php 
                while ($row = mysqli_fetch_array($result)) {
                    $time = $row['time'];
                    $username = $row['username'];
                    $text = $row['text'];
                    $likes = $row['likes'];
                    $post_id = $row['id'];


                    echo " 
                    <div class='posts'>
                    <form action='index.php' method='post'>
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
                             <img src='../post-images/" . $row['image'] . "' class='img'>
                         </div>
                         <div class='footer'>
                             <div class='likes'>
                                 <div class='like-icon'>
                                 <a href='' data-id='$post_id'>
                                 <i id='btn' class='far fa-heart like-btn'></i><span class='like_count'></span>
                                 </a>
                                 </div>
                                 <div class='like-count'></div>
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
                                 <div class='options'><button type='submit' name='send' class='btn-trans'><i class='fas fa-ellipsis-h' ></i></button></div>
                                 </form>
                             </div>
                         </div>
                     </section>  
                     </form>
                 </div>
                    ";
                         
                     }
 
            ?>
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
                                <div class="username">
                                    <p>Username</p>
                                </div>
                                <div class="caption">
                                    <p>Hello this is caption!</p>
                                </div>
                            </div>
                        </div>

                        <div class="post-after">
                            <div class="comment-img"><img src="../static/pfp.jpg" id="comment-img"></div>
                            <div class="comment"><textarea id="text2" rows="1" cols="62" placeholder="add a comment..." class="comment-text"></textarea></div>
                            <div class="options"><i class="fas fa-ellipsis-h"></i></div>
                        </div>
                    </div>
                </section>
            </div> -->
            
            
                    
                

            </div>
            
        </div>
        
    </div>
</body>

</html>