<?php

$user = R::load('users', $_SESSION['logged-user']['id']);
$user->password_cookie_token = '';
R::store($user);

unset($_SESSION['logged-user']);
unset($_SESSION['login']);
unset($_SESSION['role']);

setcookie("cart", "");

setcookie('password_cookie_token', '', time() - 3600);

session_destroy();
setcookie(session_name(), '', time() - 60*60*24*52, '/');
header("location: /");

?>