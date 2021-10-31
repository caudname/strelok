<?php
    
if(isset($_POST["auth"])) 
{
    require('includes/db_connect.php');
    
    $login = htmlspecialchars($_POST["login"]);    
    $password  = htmlspecialchars($_POST["password"]);
    $query = "SELECT * FROM users WHERE login='$login' AND password='$password'";
    $result = mysqli_query($link,$query);

    if (mysqli_num_rows($result) != 0)
    {
        $row = mysqli_fetch_array($result);
        session_start(); 
        $_SESSION['auth'] = 'yes';
        $_SESSION['auth_login'] = $row["login"];
        $_SESSION['auth_pass'] = $row["password"];
        $_SESSION['auth_name'] = $row["name"];
        $_SESSION['auth_email'] = $row["email"];
        $error = 'Добро пожаловать, '.$_SESSION["auth_name"];      
    }
    else {
        $error = 'Неверный логин или пароль!';
        }
echo "<script>alert('".$error."');</script>";
}
?>