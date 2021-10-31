<?php
	require("includes/db_connect.php");
	session_start();
	include("includes/header.php");
?>

			<h1>Новости</h1>
		</div>
	</div>
	
	<div class="news">
		<div class="container">


<?php
	$result = mysqli_query($link,"SELECT * FROM news");

	if (mysqli_num_rows($result) > 0) {
		$row = mysqli_fetch_array($result);
		do {
			echo '
			<div class="new">
				<div class="newimage">
					<a href="#"><img src="images/'.$row["image"].'"></a>
				</div>
				<div class="newinfo">
					<h1><a href="#">'.$row["title"].'</a></h1>
					<p>'.$row["description"].'</p>
				</div>
				<div class="clearfix"></div>
			</div>
			';
		}
		while ($row = mysqli_fetch_array($result)); 
	}
?>			

		</div>
	</div>
</main>

<?php
	include("includes/footer.php");
?>

