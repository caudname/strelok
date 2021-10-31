<?php
  include("includes/db_connect.php");
  session_start();
   
$search = htmlspecialchars($_GET["q"]);

include("includes/header.php");

	echo '<h1>Поиск: '.$search.'</h1>
		</div>
	</div>

	<div class="goods">
		<div class="container">
	';

    $result = mysqli_query($link,"SELECT * FROM weapons WHERE name LIKE '%$search%'");

    if (mysqli_num_rows($result) > 0) {
    	echo "<h1 id='result'>Результаты по запросу: '".$search."'</h1>";
    	$row = mysqli_fetch_array($result);
    	do {
			echo '
			<div class="good">
				<p class="goodimage"><a href="#"><img src="images/'.$row["image"].'"></a></p>
				<p class="goodname"><a href="#">'.$row["name"].'</a></p>
				<p class="goodprice">'.$row["price"].' руб.</p>
				<p class="goodbuy"><a href="#" class="buy" gid="'.$row["id"].'"><img src="images/cart.svg" title="Добавить в корзину"></a><p>
			</div>
			';
    	}
    	while ($row = mysqli_fetch_array($result)); 
         
    } else {
      echo "<h1 id='result'>По запросу '".$search."' результатов нет</h1>";
    }
 
?>

		</div>
	</div>

</main>

<?php
	include("includes/footer.php");
?>