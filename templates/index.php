<!DOCTYPE html>
<html>
<head>
	<title>Home Page</title>
	<link rel="stylesheet" type="text/css" href="../static/index.css">
	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
	<script src="https://kit.fontawesome.com/14d91ba717.js" crossorigin="anonymous"></script>
</head>
<body>
	<!--Navigation bar-->
<div id="nav-placeholder">

</div>

<script>
$(function(){
  $("#nav-placeholder").load("navbar.php");
});
</script>
<!--end of Navigation bar-->

<section>
	<!-- Clubs-bar -->
	<div class="clubs">
		<ol>
			<li>club1</li>
			<li>club2</li>
		</ol>
	</div>
	<!-- End of clubs -->


	<!-- Start of center block -->

	<div class="main">

		<!-- Start of Whats happpening area -->
		<div class="status-bar">


			<ul class="inp-bar">

				<li><img id="pro-icon" src="../static/pfp.jpg">
				</li>

				<li id="inp"><textarea rows="4" cols="50" placeholder="What's happening?" id="status-area"></textarea></li>
			</ul>

			<ul class="cam-post">
				
				<li><button id="cam-btn"><i class="fas fa-camera-retro"></i></button></li>

				<li class="post-btn"><button >POST</button></li>
			</ul>
		</div>
		<!-- end of whats happening -->

		<!-- Start posts area here -->

	</div>
	<!-- end of center block  -->


</section>


</body>
</html>
