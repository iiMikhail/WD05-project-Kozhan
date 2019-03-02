 <?php 
$title = "Магазин - все заказы";

if($_SESSION['logged-user']['role'] != 'admin') {
	header("location: " . HOST . "index");
	exit();
}
$orders = R::find('orders', 'ORDER BY date_time DESC');
 
ob_start();
include ROOT . "templates/_header.tpl";
include ROOT . "templates/shop/orders.tpl";
$content = ob_get_contents();

ob_end_clean();

include ROOT . "templates/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_footer.tpl";

?>