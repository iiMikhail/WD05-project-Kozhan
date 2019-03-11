<?php 
$title = "Работы - главная";
$pagination = pagination('works');

if (isset($_GET) && @$_GET['catid'] != '') {
	@$work = R::find('works', 'categoryid = ?', array($_GET['catid']));
} else {
	$work = R::find('works', 'ORDER BY id DESC ' . $pagination['sql_pages_limit']);
}

 
ob_start();
include ROOT . "templates/_header.tpl";
include ROOT . "templates/works/works.tpl";
$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_footer.tpl";

?>