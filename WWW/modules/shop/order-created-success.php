 <?php
$title = "Магазин - Заказ успешно оформлен";

if (!isset($_SESSION['current-order'])) {
	header("location: " . HOST . "shop");
	exit();
}
	
ob_start();
include ROOT . "templates/_header.tpl";
include ROOT . "templates/shop/order-created-success.tpl";
$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_footer.tpl";

?>