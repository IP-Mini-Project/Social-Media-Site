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
	</div>
	<!-- Start posts area here -->
	<div>
		<section class="container" id="container">
			<div class="card">
				<div class="card-header">
					<div class="profile-img">
						
					</div>
					<div class="profile-info">
						<div class="name">username</div>
						<div class="location">Mumbai</div>
					</div>
					<div class="time">
						1hr
					</div>
					<div class="post-img">
						<img class="img" src="../static/zendaya.jpg"></div>
					</div>

					<div class="description">
						<div class="like-btn"><i class="fas fa-heart"></i></div>
						<div class="likes">23 likes</div>
					</div>
					<div class="caption">
							<span>username</span> <p>hello this is a caption</p>
					</div>
					<hr>
					<div class="comments">
						<div class="profile-pic"><img src="../pfp.jpg"></div>
						<div class="comment"><textarea placeholder="comment here..."></textarea></div>
						<div class="options"><i class="fas fa-ellipsis-h"></i></div>
					</div>
				</div>
			</div>
		</section>
	</div>

</section>
		<!-- Start posts area here -->
		<!-- <section class="container">
			<div class="card">
				<div class="card-header">
					<div class="profile-img">
						
					</div>
					<div class="profile-info">
						<div class="name">username</div>
						<div class="location">Mumbai</div>
					</div>
					<div class="time">
						1hr
					</div>
				</div>
			</div>
		</section> -->

	
	<!-- end of center block  -->





</body>
</html>
