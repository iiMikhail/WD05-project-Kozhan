<?php
$title = "Блог - Главная";
$posts = R::find('posts', 'ORDER BY id DESC');
	
ob_start();
include ROOT . "templates/_header.tpl";
include ROOT . "templates/blog/blog.tpl";
$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_footer.tpl";

?>