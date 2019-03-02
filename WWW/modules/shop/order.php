 <?php 
$title = "Магазин - страница заказа";

if($_SESSION['logged-user']['role'] != 'admin') {
	header("location: " . HOST . "index");
	exit();
}
$orders = R::load('orders', $_GET['id']);
$items = json_decode($orders->items); 

ob_start();
include ROOT . "templates/_header.tpl";
include ROOT . "templates/shop/order.tpl";
$content = ob_get_contents();

ob_end_clean();

include ROOT . "templates/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_footer.tpl";

?>