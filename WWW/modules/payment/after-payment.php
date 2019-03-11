<?php
$title = "Оплата - успех";

if (!isAdmin()) {
	header("location: " . HOST);
	exit();
}

unset($_SESSION['current-order']);
unset($_SESSION['order']);
ob_start();
include ROOT . "templates/_header.tpl";
include ROOT . "templates/payments/after-payment.tpl"; 
$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_footer.tpl";

?>