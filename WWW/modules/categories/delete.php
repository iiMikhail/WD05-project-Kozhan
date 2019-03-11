<?php
$title = "Категории - удалить";

if (!isAdmin()) {
	header("location: " . HOST);
	exit();
}

$category = R::load('categories', $_GET['id']);


$category->cat_title = htmlentities($_POST['cattitle']);
R::store($category);

ob_start();
include ROOT . "templates/_header.tpl";
include ROOT . "templates/categories/edit.tpl";
$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_footer.tpl";

?>