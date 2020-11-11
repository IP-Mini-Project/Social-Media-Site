<!DOCTYPE html>
<?php include('server.php'); ?>
<head>
  <title>Roommate</title>
    <link rel="stylesheet"  href="../static/roommate.css">
  <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
    <script src="https://kit.fontawesome.com/14d91ba717.js" crossorigin="anonymous"></script>
    <script type="module" defer src="../js/roommate.js"></script>

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
    <!-- End of Main Navbar -->

    <!-- Navbar -->
    <div id="nav2-placeholder">

    </div>
    <script>
    $(function(){
    $("#nav2-placeholder").load("navbar2.php");
    });
    </script>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <!-- End of Nav2 -->

    <!-- quiz starts here -->
    
    
 <!--   <div class="container">
      <div id="question-container" class="hide">
        <div id="question" class="question">Question</div>
          <div id="answer-buttons" class="btn-grid">
            <button id = "btn-one " class="active btn"><span id="icon" class="icon"> </span> Answer 1</button>
            <button id = "btn-two " class="active btn"><span id="icon" class="icon"> </span> Answer 2</button>
            <button id = "btn-three " class="active btn"><span id="icon" class="icon"> </span> Answer 3</button>
            <button id = "btn-four " class="active btn"><span id="icon" class="icon"> </span> Answer 4</button>
          </div>
      </div>
      <div class="controls">
      <button id="start-btn" class="start-btn btn">Start</button>
      <button id="next-btn" class="next-btn btn hide">Next</button> -->

      <center>
          <form action="roommate.php" method="post">
      <div class="questions">
        <div class="q1">
          <p class="question">What year in college are you?</p>
          
          <input type="radio" id="fresh" name="year" value="Freshman">
          <label for="Freshman">Freshman</label><br>
          <input type="radio" id="sophomore" name="year" value="Sophomore">
          <label for="Sophomore">Sophomore</label><br>
          <input type="radio" id="junior" name="year" value="Junior">
          <label for="Junior">Junior</label><br>
          <input type="radio" id="senior" name="year" value="Senior">
          <label for="Senior">Senior</label><br>
          
          

        </div><br><br>

        
        <div class="q2">
          <p class="question">Which gender do you identify with the most?</p>
          
          <input type="radio" id="male" name="gender" value="male">
          <label for="male">Male</label><br>
          <input type="radio" id="female" name="gender" value="female">
          <label for="female">Female</label><br>
          <input type="radio" id="other" name="gender" value="other">
          <label for="other">Non-Binary</label>
          
         
        </div><br><br>

        <div class="q3">
          <p class="question">Who would you like to study with?</p>
          
          <input type="radio" id="male" name="studybuddy" value="male">
          <label for="male">Male</label><br>
          <input type="radio" id="female" name="study" value="female">
          <label for="female">Female</label><br>
          <input type="radio" id="other" name="study" value="other">
          <label for="other">Non-Binary</label>
          <input type="radio" id="other" name="study" value="other">
          <label for="other">Any</label>
          
         
        </div><br><br>

        <div class="q4">
          <p class="question">What is your major?</p>
          
          <!-- <input type="radio" id="8" name="alarm" value="Before 8am">
          <label for="Before 8am">Before 8am</label><br>
          <input type="radio" id="10" name="alarm" value="Around 10am">
          <label for="Around 10am">Around 10am</label><br>
          <input type="radio" id="12" name="alarm" value="After 12pm">
          <label for="major">After 12pm</label> -->
          <input type="text" name="major">
         
        </div><br><br>

        <div class="q5">
          <p class="question">Where do you like to study?</p>
          
          <input type="radio" id="apt" name="place" value="Appartment">
          <label for="Appartment">Appartment</label><br>
          <input type="radio" id="class" name="place" value="Classroom">
          <label for="Classroom">Classroom</label><br>
          <input type="radio" id="lbrary" name="place" value="Library">
          <label for="Library">Library</label><br>
          <input type="radio" id="outside" name="place" value="Outside">
          <label for="Outside">Outside</label><br>
          
          
         
        </div><br><br>

       <!--  <div class="q6">
          <p class="question">How tidy are you?</p>
          
          <input type="radio" id="tidy" name="tidiness" value="Tidy AF">
          <label for="Tidy AF">Tidy AF</label><br>
          <input type="radio" id="liltidy" name="tidiness" value="I put most things away">
          <label for="I put most things away">I put most things away</label><br>
          <input type="radio" id="untidy" name="tidiness" value="Where's the floor?">
          <label for="Where's the floor?">Where's the floor?</label>
          
         
        </div>

        <div class="q7">
          <p class="question">What level of noise would you wake up at night?</p>
          
          <input type="radio" id="anything" name="noise" value="Anything">
          <label for="Anything">Anything</label><br>
          <input type="radio" id="some" name="noise" value="Some things">
          <label for="Some things">Some things</label><br>
          <input type="radio" id="nothing" name="noise" value="Nothing">
          <label for="Nothing">Nothing</label>
          
         
        </div>

        <div class="q8">
          <p class="question">What's your guest policy?</p>
          
          <input type="radio" id="noguests" name="guests" value="I'd prefer no guests">
          <label for="I'd prefer no guests">I'd prefer no guests</label><br>
          <input type="radio" id="inform" name="guests" value="Usually fine; but inform first">
          <label for="Usually fine; but inform first">Usually fine; but inform first</label><br>
          <input type="radio" id="yesguests" name="guests" value="The more the merrier!">
          <label for="The more the merrier!">The more the merrier!</label>
          
         
        </div>

        <div class="q9">
          <p class="question">What do you like to do on weekends?</p>
          
          <input type="radio" id="netflix" name="weekends" value="Watch Netflix">
          <label for="Watch Netflix">Watch Netflix</label><br>
          <input type="radio" id="hangout" name="weekends" value="Hangout with friends">
          <label for="Hangout with friends">Hangout with friends</label><br>
          <input type="radio" id="party" name="weekends" value="Go to a lit party">
          <label for="Go to a lit party">Go to a lit party</label>
          
         
        </div>

        <div class="q10">
          <p class="question">What is your ideal roommate relationship?</p>
          
          <input type="radio" id="separate" name="relationship" value="Respectful but separate">
          <label for="Respectful but separate">Respectful but separate</label><br>
          <input type="radio" id="friends" name="relationship" value="I'd like us to be friends">
          <label for="I'd like us to be friends">I'd like us to be friends</label><br>
          <input type="radio" id="BFF" name="relationship" value="Best Friends Forever!">
          <label for="Best Friends Forever!">Best Friends Forever!</label>
         
        </div>
 -->
          <input type="submit" name="questions" >
      </div>
  


<?php 
if(isset($_POST['questions'])){



    $year = mysqli_escape_string($db,$_POST['year']);

  $gender = mysqli_escape_string($db,$_POST['gender']);

  $studybuddy = mysqli_escape_string($db,$_POST['studybuddy']);

  $major = mysqli_escape_string($db,$_POST['major']);

  $place = mysqli_escape_string($db,$_POST['place']);

  $username =$_SESSION['username'];
  
  
  $query = "INSERT INTO studybuddy (username,year,gender,studybyddy,major,place) VALUES ('$username','$year','$gender','$studybuddy','$major','$place')";
  mysqli_query($db,$query);

  // $status = "UPDATE roommate SET status = 1"




} ?>




<div class="display-users">
  
  <?php $result = mysqli_query($db, "SELECT * FROM roommate"); ?>
  <?php while ($row = mysqli_fetch_array($result)): ?>
  <?php if ($row['username'] == $_SESSION['username'] && $row['status'] == 1): ?>
    <p><?php echo $row['username']; ?></p>

  <?php endif; ?>
  <?php endwhile; ?>
</div>
</form>
</center>
</body>
</html>