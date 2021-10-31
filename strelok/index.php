<?php
	require("includes/db_connect.php");
	session_start();
	include("includes/header.php");
?>

				<h1>Каталог товаров</h1>
			</div>
		</div>

		<div class="categories">
			<div class="container">
				<div class="category" id="rifles">
					<a href="goods.php?type=Винтовки">
						<h1>Винтовки</h1>
					</a>
				</div>
				<div class="category" id="automata">
					<a href="goods.php?type=Автоматы">
						<h1>Автоматы</h1>
					</a>
				</div>
				<div class="category" id="pistols">
					<a href="goods.php?type=Пистолеты">
						<h1>Пистолеты</h1>
					</a>
				</div>
				<div class="category" id="patrons">
					<a href="goods.php?type=Патроны">
						<h1>Патроны</h1>
					</a>
				</div>
				<div class="category" id="knives">
					<a href="goods.php?type=Ножи">
						<h1>Ножи</h1>
					</a>
				</div>
				<div class="category" id="arbalets">
					<a href="goods.php?type=Арбалеты и луки">
						<h1>Арбалеты и луки</h1>
					</a>
				</div>
				<div class="category" id="selfdefence">
					<a href="goods.php?type=Средства самообороны">
						<h1>Средства самообороны</h1>
					</a>
				</div>
				<div class="category" id="workwear">
					<a href="goods.php?type=Спецодежда">
						<h1>Спецодежда</h1>
					</a>
				</div>
				<div class="category" id="accessories">
					<a href="goods.php?type=Аксессуары">
						<h1>Аксессуары</h1>
					</a>
				</div>
			</div>
		</div>
	</main>
	

<?php
	include("includes/footer.php");
?>