<?php
$title = "Категории - добавить новую";

if (!isAdmin()) {
	header("location: " . HOST);
	exit();
}

if(isset($_POST['cattitle'])) {
	if ($_POST['add-cat'] = '') {
		$errors = ['title' => 'Введите имя категории']; 
	}
	if( R::count('categories', 'cat_title = ?', array($_POST['cattitle'])) > 0 ) {
		$errors[] = ['title' => 'Категория уже существует'];
	} 
	elseif (isset($errors)) {
		$cat = R::dispense('categories');
		$cat->cat_title = htmlentities($_POST['cattitle']);
		R::store($cat);
		header('location: ' . HOST . "blog/categories?result=cat-created");
		exit(); 
	}
}

ob_start();
include ROOT . "templates/_header.tpl";
include ROOT . "templates/categories/new.tpl";
$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_footer.tpl";

?>