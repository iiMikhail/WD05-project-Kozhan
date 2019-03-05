 <?php
$title = "Магазин - оплата заказа";  

if (!isset($_SESSION['order'])) {
	header("location: " . HOST);
	die();
}
	
ob_start();
include ROOT . "templates/_header.tpl";
include ROOT . "templates/payments/yandex-payment.tpl";
$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_footer.tpl";

?>