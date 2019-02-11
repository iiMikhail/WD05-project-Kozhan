<?php
$title = "Добавить категорию";
$category = R::load('categories', $_GET['id']);

$errors[] = array();
if ($_POST['add-cat'] = '') {
	$errors = ['title' => 'Введите имя категории'];
}
if(@$_POST['cattitle'] != '') {
	$category->cat_title = htmlentities($_POST['cattitle']);
	R::store($category);
	header('location: ' . HOST . "blog/categories?result=cat-updaded");
	exit();
}

ob_start();
include ROOT . "templates/_header.tpl";
include ROOT . "templates/categories/edit.tpl";
$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_footer.tpl";

?>