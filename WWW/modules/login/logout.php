<?php 
unset($_SESSION['logged-user']);
unset($_SESSION['login']);
unset($_SESSION['role']);

setcookie("cart", "");

session_destroy();
setcookie(session_name(), '', time() - 60*60*24*52, '/');
header("location: /");

?>