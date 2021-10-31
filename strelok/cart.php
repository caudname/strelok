<?php
	include("includes/db_connect.php");
	session_start();
	// Получаем id товара 
	$id = $_GET["id"];
	// Получаем действие над товаром
    $action = $_GET["action"];
    
  	if ($action=='delete') {
        $delete = mysqli_query($link,"DELETE FROM cart WHERE cart_id = '$id' AND ip = '{$_SERVER['REMOTE_ADDR']}'");
	}

	$result = mysqli_query($link,"SELECT * FROM cart,weapons WHERE cart.ip = '{$_SERVER['REMOTE_ADDR']}' AND weapons.id = cart.cart_id");
if (mysqli_num_rows($result) > 0)
{
$row = mysqli_fetch_array($result);
do
{ 
$int = $int + ($row["price"] * $row["count"]); 
}
 while ($row = mysqli_fetch_array($result));
 
   $itogpricecart = $int;
}     
	include("includes/header.php");
?>

				<h1>Корзина товаров</h1>
			</div>
		</div>
		<div class="cart">
			<div class="container">

<?php
$result = mysqli_query($link,"SELECT * FROM cart,weapons WHERE cart.ip = '{$_SERVER["REMOTE_ADDR"]}' AND weapons.id = cart.cart_id");

if (mysqli_num_rows($result) > 0)
{
$row = mysqli_fetch_array($result);
	
	echo '
   <div id="header-list-cart">    
   <div id="head1" >Изображение</div>
   <div id="head2" >Наименование товара</div>
   <div id="head3" >Количество</div>
   <div id="head4" >Цена</div>
   </div> 
	';

do
{

$int = $row["price"] * $row["count"];
$all_price = $all_price + $int;

if  (strlen($row["image"]) > 0 && file_exists("./images/".$row["image"]))
{
$img_path = './images/'.$row["image"];
$width = 100; 
$height = 100; 
}

	echo '
	<div class="block-list-cart">

	<div class="img-cart">
	<p align="center"><img src="'.$img_path.'" width="'.$width.'" height="'.$height.'" /></p>
	</div>

	<div class="title-cart">
	<p><a href="#">'.$row["name"].'</a></p>
	
	</div>

	<div class="count-cart">
	<ul class="input-count-style">

	<li>
	<p align="center" iid="'.$row["cart_id"].'" class="count-minus">-</p>
	</li>

	<li>
	<p align="center"><input id="input-id'.$row["cart_id"].'" iid="'.$row["cart_id"].'" class="count-input" maxlength="3" type="text" value="'.$row["count"].'" /></p>
	</li>

	<li>
	<p align="center" iid="'.$row["cart_id"].'" class="count-plus">+</p>
	</li>

	</ul>
	</div>

	<div id="tovar'.$row["cart_id"].'" class="price-product"><h5><span class="span-count" >'.$row["count"].'</span> x <span>'.$row["price"].'</span></h5><p price="'.$row["price"].'" >'.$int.' руб</p></div>
	<div class="delete-cart"><a href="cart.php?id='.$row["cart_id"].'&action=delete">x</a></div>

	</div>
';

}
while ($row = mysqli_fetch_array($result));
 
 echo '
 <h2 class="itog-price" align="right">Итого: <strong>'.$all_price.'</strong> руб</h2>
 <p align="right" class="button-next" ><a href="#">Оформить заказ</a></p> 
 ';
  
} 
else
{
    echo '<h1 align="center">Корзина пуста</h1>';
}
?>
			</div>
		</div>
<?php
	include("includes/footer.php");
?>