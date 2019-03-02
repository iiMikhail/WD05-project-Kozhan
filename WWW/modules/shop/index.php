<?php
$title = "Магазин - Главная";

$pagination = pagination('goods');
$goods = R::find('goods', 'ORDER BY id DESC ' . $pagination['sql_pages_limit']);
	
ob_start();
include ROOT . "templates/_header.tpl";
include ROOT . "templates/shop/shop.tpl";
$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_footer.tpl";

?>