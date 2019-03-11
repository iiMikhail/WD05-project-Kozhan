<?php 
$title = "Магазин - Оформить заказ";


// Состав заказа
if (isset($_COOKIE['cart'])) {
	if (count(json_decode($_COOKIE['cart'], true)) > 0) {
		$cartItems = array();
		foreach (json_decode($_COOKIE['cart'], true) as $key => $value) {
			$cartItems[] = $key;
		}
		// Запрос в бД для получения данных о товаре
		$cartGoods = R::findLike('goods', ['id' => $cartItems], 'ORDER BY id');
	} else {
		$cartGoods = array();
	}
}

$cartItemsArray = json_decode($_COOKIE['cart'], true);

// Считаем кол-во элементов в корзине
$cartGoodsCount = 0;
$cartGoodsCount = array_sum($cartItemsArray); 

// Итоговое кол-во товаров
$cartGoodsTotalPrice = 0;
foreach ($cartGoods as $item) {
	$cartGoodsTotalPrice += $cartItemsArray[$item['id']]*$item['price'];
} 

if ($cartGoodsTotalPrice <= 0) {
	header("location: " . HOST . "shop/cart");
	exit();
}
// Массив товаров в заказе пользователя
$orderedGoodsSummary = array();

foreach ($cartGoods as $item) {
	$newItem = array();
	$newItem['id'] = $item->id;
	$newItem['price'] = $item->price;
	$newItem['count'] = $cartItemsArray[$item->id];
	$newItem['title'] = $item->name;
	$orderedGoodsSummary[] = $newItem;
}
// Оформить заказ (обработка POST запроса)
if (isset($_POST['createOrder'])) {
	 if (trim($_POST['name']) == '') {
		$errors[] = ['title' => 'Введите ваше имя']; 
	}
	if (trim($_POST['secondname']) == '') {
		$errors[] = ['title' => 'Введите вашу фамилию']; 
	}
	if (trim($_POST['email']) == '') {
		$errors[] = ['title' => 'Введите ваш email']; 
	}
	if (trim($_POST['phone']) == '') {
		$errors[] = ['title' => 'Введите ваш телефон']; 
	}
	if (empty($errors)) {
		$order = R::dispense('orders');
		$order->name = htmlentities($_POST['name']);
		$order->secondname = htmlentities($_POST['secondname']);
		$order->email = htmlentities($_POST['email']);
		$order->phone = htmlentities($_POST['phone']);
		$order->phone = htmlentities($_POST['phone']);
		$order->items = json_encode($orderedGoodsSummary);
		$order->readStatus = false;
		
		if(isLoggedIn()) {
			$order->userId = $_SESSION['logged-user']['id'];
		} 
		$order->itemsCount = $cartGoodsCount;
		$order->totalPrice = $cartGoodsTotalPrice;

		$order->status = "new";
		$order->payment = "no";
		$order->dateTime = R::isoDateTime();

		R::store($order);
 
		SetCookie("cart", "", time()-9999999, "/");

		if (isLoggedIn()) {
			$currentUser = $_SESSION['logged-user'];
			$user = R::load('users', $currentUser['id']);
			$user->cart = "";
			R::store($user);
		}
		$_SESSION['current-order'] = $order['id'];
		header("location: " . HOST . "shop/order-created-success");
		exit();
	}
}

 
ob_start();
include ROOT . "templates/_header.tpl";
include ROOT . "templates/shop/order-create.tpl";
$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_footer.tpl";

?>