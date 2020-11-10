<?php
include("connection.php");
include("comments.php");



?>

<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <link rel="stylesheet" href="../static/index2.css">

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
    <!-- container -->
    <section id="index">
        <div class="container">
            <div class="clubs">
                <h2>Clubs</h2>
                <hr>
                <ul>
                    <a href="decision.php">
                        <li><i class="fas fa-table-tennis"></i>SPORTS</li>
                    </a>
                    <!-- <a href="decision.php"><li>SPORTS</li></a> -->

                </ul>
            </div>
            <div class="right-part">
                <!-- whats happeningarea -->

                <div class="new-post">
                    <div class="wrapper">
                        <div class="newpost-pic">
                        <?php 
                            $sql = mysqli_query($db, "SELECT * FROM user WHERE username='{$_SESSION['username']}'");
                            $row = mysqli_fetch_array($sql);
                            $pfp = $row['pfp'];
                            
                            echo "<img src='$pfp' alt='nope'>";
                        ?>
                        </div>
                        <form action="index.php" method="post" enctype="multipart/form-data">
                            <div class="newpost-text">
                                <textarea id="text" name="text-box" rows="4" cols="62" placeholder="What's happening?"></textarea>
                            </div>
                    </div>
                    <input type="hidden" name="size" value="1000000">
                    <div class="endline">
                        <!-- <i class="fas fa-camera"></i> --> <input type="file" name="image" class="upload-box">
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
                    $target = "../post-images/" . basename($image);

                    $sql = "INSERT INTO post ( username, image, text, likes) VALUES ('{$_SESSION['username']}', '$image', '$image_text','0')";
                    // execute query
                    mysqli_query($db, $sql);

                    if (move_uploaded_file($_FILES['image']['tmp_name'], $target)) {
                        $msg = "Image uploaded successfully";
                        $update = "UPDATE user set post_count=post_count + 1 WHERE username='{$_SESSION['username']}'";
                        mysqli_query($db, $update);
                    } else {
                        $msg = "Failed to upload image";
                    }
                }
                $result = mysqli_query($db, "SELECT * FROM post");

                
                
                ?>
                <!-- end of whats happening -->
                <!-- posts code -->
                <div class="post-wrapper" style="display: flex;flex-direction: column-reverse;">
                <!-- php while loop -->
                <?php while ($row = mysqli_fetch_array($result)): ?>
                    <?php $result2 = mysqli_query($db, "SELECT * FROM user WHERE username= '{$row['username']}'"); ?>
                    <?php while ($row2 = mysqli_fetch_array($result2)): $pfpurl= $row2['pfp']?>
                        
                <div class="posts">
                 
                    <section class="card">
                        <div class="header">
                            <div class="prof-img"><?php echo "<img src='$pfpurl' class='top-img'>"; ?>
                             </div>
                             <div class="prof-info">
                                <div class="username"><?php echo $row['username']; ?></div>
                                <div class="location">Mumbai</div>
                            </div>
                            <div class="time"><?php echo $row['time']; ?></div>
                                <?php echo $row['id'] ?>
                        </div>
                        <div class="post-img">
                            <?php echo "<img src='../post-images/" . $row['image'] . "' class='img'>"; ?>
                        </div>
                        <div class="footer">
                        <div class="likes">
                            
                            <div class="like-icon"><a href="javascript:void(0)" >
                            <input type="hidden" name="post-id" value="<?php echo $row['id']; ?>"> <!-- class="btn btn-info btn-lg" -->
      <button id="btn-like" class="like-btn" name ="type" onclick="(like_update('<?php echo $row['id']?>'))"><i class="far fa-heart"></i> Like (<span id="like_loop_<?php echo $row['id']?>"> <?php echo $row['likes']?> </span>)</button> 
     </a>
                            </div>
                        </div>

                        <div class="description">
                            <div class="user">
                                <div class="username"><p><?php echo $row['username']; ?></p></div>
                                <div class="caption"><p><?php echo  $row['text']; ?></p></div>
                            </div>
                        </div>
                        
                        <div class="comments">
                            <div class="auth_prof"></div>
                            <div class="commentt"><p></p></div>
                        </div>
                        <div class="post-after">
                            <div class="comment-img">
                            <?php 
                                $sql = mysqli_query($db, "SELECT * FROM user WHERE username='{$_SESSION['username']}'");
                                $row2 = mysqli_fetch_array($sql);
                                $pfp = $row2['pfp'];
                                
                                echo "<img src='$pfp' alt='nope' id='comment-img'>";
                            ?>    
                            </div>
                            <div class="comment">
                                
                                <form action="index.php" method="post">
                    <textarea id="text2" rows="1" cols="250" placeholder="add a comment..." class="comment-text" name="comment"></textarea>
                                    <input type="hidden" name="id" value="<?php echo $row['id']; ?>">
                            <div class="add-comment">
                                <button type="submit" class="post-comment" name="post-comment" >comment</button></div>
                        </form>
                    </div>
                            <div class="options"><i class="fas fa-ellipsis-h" ></i></div>
                        </div>
                    </div>
                    
                    </section>  
        
                       
    

                </div>
                <?php endwhile; ?>
                <?php endwhile; ?>
                </div>
                <!-- end of posts code -->
            </div>
        </div>
    </section>

<script src="../js/index.js"></script>
</body>
<script>
   
  function like_update(id){

   jQuery.ajax({
    url:'like.php',
    type:'post',
    data:'type=like&id='+id,
    success:function(result){

     // jQuery('#btn-like'+id).attr("disabled", true);
     var cur_count=jQuery('#like_loop_'+id).html();
     cur_count++;
     jQuery('#like_loop_'+id).html(cur_count);
   
   
    }
   });
   
   $(document).on("click", "a", function () {
    $("#search").val("");
    
  });
  } 
  </script>

 
</html>