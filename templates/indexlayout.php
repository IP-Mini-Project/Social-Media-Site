<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../static/indexlayout.css">
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
                    hellloooo
                    <br>hel

                </div>
                <!-- end of posts code -->
            </div>
        </div>
    </section>
</body>
</html>