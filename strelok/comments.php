<?php
	require("includes/db_connect.php");
	session_start();
	$name = $_GET["name"];
	$comment = $_GET["comment"];

	if (isset($_GET["submit"])) {
		$sql = mysqli_query($link, "INSERT INTO comments (name, comment) VALUES('$name','$comment')");
	}

	include("includes/header.php");
?>

			<h1>Отзывы</h1>
		</div>
	</div>
	
	<div class="container">
		<div class="comments">


<?php
	$result = mysqli_query($link,"SELECT * FROM comments");

	if (mysqli_num_rows($result) > 0) {
		$row = mysqli_fetch_array($result);
		do {
			echo '
				<div class="comment">
					<div class="commentimage">
						<img src="images/comment.png">
					</div>
					<div class="commentinfo">
						<h1>'.$row["name"].'</h1>
						<p>'.$row["comment"].'</p>
					</div>
				</div>
			';
		}
		while ($row = mysqli_fetch_array($result)); 
	}
echo '			
		</div>

		<div id="addcomment">
			<h1>Оставить отзыв</h1>
			<form method="get">
				<input type="text" name="name" placeholder="Введите имя" value="'.$_SESSION['auth_name'].'" required><br>
				<textarea name="comment" placeholder="Введите сообщение" required></textarea><br>
				<button name="submit">Опубликовать</button>
			</form>
		</div>
		';
?>

	</div>
</main>

<?php
	include("includes/footer.php");
?>