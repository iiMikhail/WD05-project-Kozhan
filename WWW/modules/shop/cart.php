  <?php
$title = "Магазин - Корзина";


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
	
ob_start();
include ROOT . "templates/_header.tpl";
include ROOT . "templates/shop/cart.tpl";
$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_footer.tpl";

?>