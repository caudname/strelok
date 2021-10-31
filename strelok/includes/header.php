<?php
	include("auth.php");
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Оружейный магазин СТРЕЛОК</title>
	<link rel="stylesheet" type="text/css" href="styles/style.css">
	<link rel="icon" href="images/icon.png">
</head>
<body>
<!-- Шапка сайта -->
	<header>
		<div class="container">
			<div id="logo">
				<a href="index.php">
					<img src="images/logo.png">
				</a>
			</div>
			<nav>
				<ul>
					<li><a href="about.php">О компании</a></li>
					<li><a href="delivery.php">Доставка и оплата</a></li>
					<li><a href="news.php">Новости</a></li>
					<li><a href="comments.php">Отзывы</a></li>
					<li><a href="contacts.php">Контакты</a></li>
					<li><a href="#">
					<?php
						if ($_SESSION['auth'] == 'yes') {
							echo '<img src="images/authuser.svg" id="userimage"></a></li>
									<div id="user">
										<p>
											Вы авторизованы <a href="logout.php">Выйти</a>
										</p>
									</div>';
						} else {
							echo '<img src="images/user.svg" id="authuserimage"></a></li>
									<div id="authuser">
										<h3>Вход</h3>
										<form method="post">
											<input type="text" name="login" placeholder="Логин" id="login"><br>
											<input type="password" name="password" placeholder="Пароль" id="password"><br>
											<p>
												<button name="auth">Войти</button>
											</p>
										</form>
										<p>
											Нет аккаунта? <a href="regist.php">Регистрация</a>
										</p>
									</div>';
						}
					?>
						
					<li><a href="cart.php"><img src="images/cart.svg"></a></li>
				</ul>
			</nav>
		</div>
	</header>
	<!-- Основной контент -->
	<main>
		<div class="title">
			<div class="container">
				<div id="searchblock">
					<form method="get" action="search.php?q=">
						<input type="text" name="q" placeholder="Поиск" value="<?php echo $search;?>" required>
						<button>Поиск</button>
					</form>
				</div>

