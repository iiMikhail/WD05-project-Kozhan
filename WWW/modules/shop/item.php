 <?php

$itemDelete = R::load('goods', $_GET['id']);

if (!isset($_GET)) {
	header('location: /shop');
	exit();
}
 
$item = R::load('goods', $_GET['id']);
$title = $item['name'];
ob_start();

include ROOT . "templates/_header.tpl";
include ROOT . "templates/shop/item.tpl";
$content = ob_get_contents();
ob_end_clean();

if(@$_GET['type'] == 'del') {
	R::trash($itemDelete);
	header('Location: /shop?result=itemDeleted');
}

include ROOT . "templates/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_footer.tpl";
?>