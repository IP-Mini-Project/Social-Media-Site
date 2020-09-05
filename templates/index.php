
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
                    <li>Sports</li>
                    <li>Sports</li>
               </ul>
            </div>
            <div class="right-part">
                <!-- whats happeningarea -->
                <div class="new-post">
                    <div class="wrapper">
                        <div class="newpost-pic">
                            <img src="../static/pfp.jpg" alt="">
                        </div>
                        <div class="newpost-text">
                            <textarea id="text" name="text-box" rows="4" cols="62" placeholder="What's happening?"></textarea>
                        </div>
                    </div>
                    
                    <div class="endline">
                        <i class="fas fa-camera"></i>
                        <input type="submit" value="POST" class="btn">
                    </div>
                </div>
                <!-- end of whats happening -->
                <!-- posts code -->
                <div class="posts">
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
        
    

                </div>
                <!-- end of posts code -->
            </div>
        </div>
    </section>
</body>
</html>