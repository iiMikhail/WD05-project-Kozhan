<?php

// Загружаем пользователя
$currentUser = $_SESSION['logged-user'];
$user = R::load('users', $currentUser->id);

// Загружаем корзину в БД
$cartServer = json_decode($user->cart, true);

// Определяем локальную корзину
if (isset($_COOKIE['cart'])) {
	$cartLocal = json_decode($_COOKIE['cart'], true);
} else {
	$cartLocal = array();
}

?>