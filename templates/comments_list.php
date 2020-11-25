<?php

include ('comments.php');
$result = mysqli_query($db,"SELECT * FROM comments ORDER BY id DESC LIMIT 3");

	while($row=mysqli_fetch_object($result))
	{
		?>
		<div class="col-md-3"><?php echo $row->name;?></div>
		<div class="col-md-7"><i><?php echo $row->comment;?></i></div>
		<div class="clearfix"></div>
		<p>&nbsp;</p>
		<?php
	}

?>