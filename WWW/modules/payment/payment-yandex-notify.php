<?php

$text = json_encode($_POST);
file_put_contents(ROOT . 'yandex-history.php', $text . PHP_EOL, FILE_APPEND);

$string = 	$_POST['notification_type'] . '&' . 
			$_POST['operation_id'] . '&' . 
			$_POST['amount'] . '&' . 
			$_POST['currency'] . '&' . 
			$_POST['datetime'] . '&' . 
			$_POST['sender'] . '&' . 
			$_POST['codepro'] . '&' . 
			'qWnuVzGVEpjfSdH3nHmDr5yt' . '&' . 
			$_POST['label'];
$hash = sha1($string);

$myHash = 'My hash: ' . $hash;
$yandexHash = 'Yandex hash: ' . $_POST['sha1_hash'];

file_put_contents(ROOT . 'yandex-history.php', $myHash . 
					PHP_EOL . $yandexHash . PHP_EOL, FILE_APPEND);

$codeproString = 'codepro type: ' . gettype($_POST['codepro']) . PHP_EOL .
					'codepro value: ' . $_POST['codepro'] . PHP_EOL;
$anacceptedString = 'codepro type: ' . gettype($_POST['unaccepted']) . PHP_EOL .
					'codepro value: ' . $_POST['unaccepted'] . PHP_EOL;

if ($hash == $_POST['sha1_hash']) {

	$order = R::load('orders', $_POST['label']);
	if ($_POST['codepro'] == 'true') {
		$order->payment = 'codepro';
	}  
	if ($_POST['unaccepted'] == 'true') {
		$order->payment = 'unaccepted';
	}
	if ($_POST['codepro'] != 'true' && $_POST['unaccepted'] != 'true') {
		$order->payment = 'payed';
	}
	$order->payment_datetime = $_POST['datetime'];
	$order->payment_amount = $_POST['amount'];
	R::store($order);
	exit();
}
?>