<?php 
$title = "Обо мне";

if((@$_GET['id'] != "") && (@$_GET['type'] == "del")) {
	$workplace = R::load('workplaces', $_GET['id']);
	R::trash($workplace);
	header('Location: /expirience-edit');
	exit();
}
$workplaces = R::dispense('workplaces');
if (isset($_POST['save-button'])) {
	$workplaces->date = htmlentities($_POST['date']);
	$workplaces->jobName = htmlentities($_POST['job-name']);
	$workplaces->description = htmlentities($_POST['description']);
	R::store($workplaces);
}
$Fworkplace = R::find('workplaces');

ob_start(); 
include ROOT . "templates/_header.tpl";
include ROOT . "templates/about/expirience-edit.tpl";
$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_footer.tpl";

?>