<?php
$about = R::find('about', 1);
$aboutName = $about[1]['name'];
$aboutDesc = $about[1]['description'];
$title = "main page";
$description = "info about this page";

ob_start();
include ROOT . "templates/main/main.tpl";
$content = ob_get_contents();
ob_end_clean();
echo "hi, this is modul main and main-page";
include ROOT . "templates/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_footer.tpl";

?>