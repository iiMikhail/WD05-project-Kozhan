<?php
$title = "Обо мне"; 

$about = R::find('about');
$about = $about[1];

$skillsF = R::find('skills');
$skillsF = $skillsF[1];

$Fworkplace = R::find('workplaces');
// function indikator($post){
// 	$offset = 351.85*(1-intval($post)/100) . "px";
// }
// print_r($offset);
ob_start(); 
include ROOT . "templates/_header.tpl";
include ROOT . "templates/about/index.tpl";
$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_footer.tpl";

?>