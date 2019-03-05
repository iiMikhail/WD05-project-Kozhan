 <?php
$title = "Оплата - выбор оплаты"; 

if (isset($_GET['id']) && isLoggedIn()) {
	$orderId = intval($_GET['id']);
	$order = R::findOne('orders', 'id=' . $orderId); 
	$userInfo = $_SESSION['logged-user'];
	$userId = $userInfo['id'];
	if ($order['user_id'] != $userId) {
		header("location: " . HOST);
		die();
	}
	$_SESSION['order'] = $order;
} elseif ($_SESSION['current-order']) {
	$orderId = $_SESSION['current-order'];
	$order = R::findOne('orders', 'id=' . $orderId); 
	$_SESSION['order'] = $order;
} else {
	header("location: " . HOST);
	die();
}
	
ob_start();
include ROOT . "templates/_header.tpl";
include ROOT . "templates/payments/payment-choice.tpl";
$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_footer.tpl";

?>