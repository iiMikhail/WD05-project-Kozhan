<?php
$title = "Главная";

// Обо мне
$about = R::find('about');
$about = $about[1];
$skillsF = R::find('skills');
$skillsF = $skillsF[1];
$Fworkplace = R::find('workplaces');

// Новые работы
$work = R::find('works', 'ORDER BY id DESC LIMIT 3');

// Новые записи в блоге
$posts = R::find('posts', 'ORDER BY id DESC LIMIT 3');
	
ob_start();
include ROOT . "templates/_header.tpl";
include ROOT . "templates/main/main.tpl";
$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_footer.tpl";

?>