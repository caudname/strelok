<?php
	require("includes/db_connect.php");
	if (isset($_POST["regist"])) {
			$name = htmlspecialchars($_POST['name']);
			$email = htmlspecialchars($_POST['email']);
	 		$login = htmlspecialchars($_POST['login']);
	 		$password = htmlspecialchars($_POST['password']);
	 		$query = mysqli_query($link,"SELECT * FROM users WHERE login='".$login."'") ;
	 		if (mysqli_num_rows($query)==0) {
	 			$sql = "INSERT INTO users (name,email,login,password) VALUES('$name','$email','$login','$password')";
	 			$result = mysqli_query($link,$sql);
	 			if ($result == true) {
	 				$message = "Аккаунт был успешно создан!";
	 				session_start(); 
			        $_SESSION['auth'] = 'yes';
			        $_SESSION['auth_login'] = $row["login"];
			        $_SESSION['auth_pass'] = $row["password"];
			        $_SESSION['auth_name'] = $row["name"];
			        $_SESSION['auth_email'] = $row["email"];
	 				header("Location: index.php");
	 			} else {
	 				$message = "Произошла ошибка! Попробуйте позже";
	 			}
	 		} else {
	 			$message = "Такой пользователь уже зарегистрирован";
	 		}
	 	}
	include("includes/header.php");
	
?>

				<h1>Регистрация</h1>
			</div>
		</div>

	 	<div class="registration">
			<div class="container">
				<form method="post">
					<input type="text" name="name" placeholder="Имя" required>
					<input type="text" name="email" placeholder="Email" required>
					<input type="text" name="login" placeholder="Логин" required>
					<input type="password" name="password" placeholder="Пароль" required>
					<button name="regist">Зарегистрироваться</button>
				</form>
<?php
	echo "<p class='message'>".$message."</p>";
?>
			</div> 
		</div>
	</main>

<?php
	include("includes/footer.php");
?>