<?php
$title = "Обо мне";
$metaDesc = "Веб-дизайнер и Веб-разработчик в Санкт-Петербурге. Сделать сайт под ключ. Прототипы в XD и Axure.";

$about = R::find('about');
$about = $about[1];

$skillsF = R::find('skills');
$skillsF = $skillsF[1];

$Fworkplace = R::find('workplaces');
ob_start(); 
include ROOT . "templates/_header.tpl";
include ROOT . "templates/about/index.tpl";
$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_footer.tpl";

?>