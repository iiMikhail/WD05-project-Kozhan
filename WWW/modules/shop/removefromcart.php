<?php 
$currentItemId = intval($_POST['itemId']);
if (isset($_COOKIE['cart'])) {
	$cartLocal = json_decode($_COOKIE['cart'], true);
} else {
	$cartLocal = array();
}
if (isset($cartLocal[$currentItemId])) {
	if ($cartLocal[$currentItemId] > 1) {
		$items = $cartLocal[$currentItemId];
		$items--;
		$cartLocal[$currentItemId] = $items;
	} else {
		unset($cartLocal[$currentItemId]);
	}
}
setcookie("cart", json_encode($cartLocal));
if (isLoggedIn()) {
	$currentUser = $_SESSION['logged-user'];
	$user = R::load('users', $currentUser['id']);
	$user->cart = json_encode($cartLocal);
	R::store($user);
} 
header("location: " . HOST . "shop/cart");
exit();


  ?>