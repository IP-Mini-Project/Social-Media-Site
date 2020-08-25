<!DOCTYPE html>
<html>
<head>
	<title>Home Page</title>
	<link rel="stylesheet" type="text/css" href="../static/index.css">
	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
</head>
<body>
	<!--Navigation bar-->
<div id="nav-placeholder">

</div>

<script>
$(function(){
  $("#nav-placeholder").load("profile.php");
});
</script>
<!--end of Navigation bar-->

<section>
	<div class="clubs">
		<ol>
			<li>club1</li>
			<li>club2</li>
		</ol>
	</div>

	<div class="center">
		<div class="status">
			<img id="pro-icon" src="#" alt="profile">
			<input id="status" type="text" name="" placeholder="What's happening?">
			<button id="img-btn"><img src="#" alt="cam"></button>
			<button id="post-btn">POST</button>
		</div>

		<div class="home-post">
			<p>posts</p>
		</div>
	</div>
</section>



</body>
</html>
