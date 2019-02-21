<?php
$title = "Обо мне";
$skillsF = R::find('skills');
$skillsF = $skillsF[1];

if (isset($_POST['save-button'])) {
	$skills = R::load('skills', 1);
	$skills->html = htmlentities($_POST['html5']);
	$skills->css = htmlentities($_POST['css3']);
	$skills->js = htmlentities($_POST['js']);
	$skills->jquery = htmlentities($_POST['jquery']);
	$skills->php = htmlentities($_POST['php']);
	$skills->mysql = htmlentities($_POST['mysql']);
	$skills->git = htmlentities($_POST['git']);
	$skills->gulp = htmlentities($_POST['gulp']);
	$skills->bower = htmlentities($_POST['bower']);
	$skills->webpack = htmlentities($_POST['webpack']);
	R::store($skills);
	header('location: /about');
	exit();
}

ob_start(); 
include ROOT . "templates/_header.tpl";
include ROOT . "templates/about/skills-edit.tpl";
$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_footer.tpl";

?>