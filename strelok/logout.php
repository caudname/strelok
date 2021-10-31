<?php
	session_start();
	unset($_SESSION['auth_login']);
	session_destroy();
	header("location: index.php");
?>