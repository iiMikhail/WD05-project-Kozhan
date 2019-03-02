<?php
$title = "Категории блога";

$cats = R::find('categories', 'ORDER BY cat_title');
$errors[] = array();
$success[] = array();
@$category = R::load('categories', $_GET['id']);

ob_start();
include ROOT . "templates/_header.tpl";
include ROOT . "templates/categories/all.tpl";
$content = ob_get_contents();

ob_end_clean();
if(@$_GET['id'] != '') {
	// 	// header('location: ' . HOST . 'categories/all?id=' . $category);
	R::trash($category);
	header('Location: /blog/categories');
}

include ROOT . "templates/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_footer.tpl";

?>