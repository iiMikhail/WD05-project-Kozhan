<?php

// Получаем ID товара 
$currentItemId = intval($_POST['itemId']);

// Определяем локальную корзину
if (isset($_COOKIE['cart'])) {
	// получаем из json строки ассоциативный массив
	$cartLocal = json_decode($_COOKIE['cart'], true);
} else {
	$cartLocal = array();
}
// Определяем кол-во товара в корзине
if (isset($cartLocal[$currentItemId])) {
	$items = $cartLocal[$currentItemId];
	$items++;
	$cartLocal[$currentItemId] = $items;
} else {
	$cartLocal[$currentItemId] = 1;
} 

// Сохраняем в COOKIE, кодируем массив в json строку
SetCookie("cart", json_encode($cartLocal), time()+9999999, "/");

if (isLoggedIn()) {
	$currentUser = $_SESSION['logged-user'];
	$user = R::load('users', $currentUser['id']);
	$user->cart = json_encode($cartLocal);
	R::store($user);
}
header("location: " . HOST . "shop/item?id=" . $currentItemId);
exit();

?>