<!DOCTYPE html>
<html>
<head>
	<title>Roommate</title>
    <link rel="stylesheet"  href="../static/roommate.css">
	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
    <script src="https://kit.fontawesome.com/14d91ba717.js" crossorigin="anonymous"></script>
    <script defer src="../js/roommate.js"></script>

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
    <!-- End of Nav2 -->

    <!-- quiz starts here -->
    
    
  	<div class="container">
    	<div id="question-container" class="hide">
     		<div id="question">Question</div>
      		<div id="answer-buttons" class="btn-grid">
		        <button class="btn">Answer 1</button>
		        <button class="btn">Answer 2</button>
		        <button class="btn">Answer 3</button>
		        <button class="btn">Answer 4</button>
		      </div>
   		</div>
   		<div class="controls">
      <button id="start-btn" class="start-btn btn">Start</button>
      <button id="next-btn" class="next-btn btn hide">Next</button>
    </div>
  </div>










</body>
</html>