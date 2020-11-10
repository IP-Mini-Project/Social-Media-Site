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


          <form action="roommate.php" method="post">
      <div class="questions">
        <div class="q1">
          <p class="question">Where are you planning to live?</p>
          
          <input type="radio" id="on-camp" name="accomodate" value="On-campus">
          <label for="On-campus">On-campus</label><br>
          <input type="radio" id="off-camp" name="accomodate" value="Off-campus">
          <label for="Off-campus">Off-campus</label><br>
          
          
         
        </div>

        
        <div class="q2">
          <p class="question">Which gender do you identify with the most?</p>
          
          <input type="radio" id="male" name="gender" value="male">
          <label for="male">Male</label><br>
          <input type="radio" id="female" name="gender" value="female">
          <label for="female">Female</label><br>
          <input type="radio" id="other" name="gender" value="other">
          <label for="other">Non-Binary</label>
          
         
        </div>

        <div class="q3">
          <p class="question">Who would you like to share the room with?</p>
          
          <input type="radio" id="male" name="roomate" value="male">
          <label for="male">Male</label><br>
          <input type="radio" id="female" name="roomate" value="female">
          <label for="female">Female</label><br>
          <input type="radio" id="other" name="roomate" value="other">
          <label for="other">Non-Binary</label>
          
         
        </div>

        <div class="q4">
          <p class="question">When does your weekday alarm go off?</p>
          
          <input type="radio" id="8" name="alarm" value="Before 8am">
          <label for="Before 8am">Before 8am</label><br>
          <input type="radio" id="10" name="alarm" value="Around 10am">
          <label for="Around 10am">Around 10am</label><br>
          <input type="radio" id="12" name="alarm" value="After 12pm">
          <label for="After 12pm">After 12pm</label>
          
         
        </div>

        <div class="q5">
          <p class="question">When do you typically head to bed?</p>
          
          <input type="radio" id="10pm" name="bedtime" value="Before 10pm">
          <label for="Before 10pm">Before 10pm</label><br>
          <input type="radio" id="12am" name="bedtime" value="Around midnight">
          <label for="Around midnight">Around midnight</label><br>
          <input type="radio" id="2am" name="bedtime" value="After 2am">
          <label for="After 2am">After 2am</label>
          
         
        </div>

        <div class="q6">
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

          <input type="submit" name="questions" >
      </div>
  


<?php 
if(isset($_POST['questions'])){



    $accomodate = mysqli_escape_string($db,$_POST['accomodate']);

  $gender = mysqli_escape_string($db,$_POST['gender']);

  $roomate = mysqli_escape_string($db,$_POST['roomate']);

  $alarm = mysqli_escape_string($db,$_POST['alarm']);

  $bedtime = mysqli_escape_string($db,$_POST['bedtime']);

  $tidiness = mysqli_escape_string($db,$_POST['tidiness']);

  $noise = mysqli_escape_string($db,$_POST['noise']);

  $guests = mysqli_escape_string($db,$_POST['guests']);

  $weekends = mysqli_escape_string($db,$_POST['weekends']);

  $relationship = mysqli_escape_string($db,$_POST['relationship']);

  $username =$_SESSION['username'];
  
  
  $query = "INSERT INTO roommate (username,accomodate,gender,roomate,alarm,bedtime,tidiness,noise,guests,weekends,relationship,status) VALUES ('$username','$accomodate','$gender','$roomate','$alarm','$bedtime','$tidiness','$noise','$guests','$weekends','$relationship','1')";
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
</body>
</html>