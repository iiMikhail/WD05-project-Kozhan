<?php 
$title = "Работы - главная";
$pagination = pagination('works');

if (isset($_GET) && @$_GET['catid'] != '') {
	@$work = R::find('works', 'categoryid = ?', array($_GET['catid']));
} else {
	$sql = 'SELECT works.id, works.eye_count, works.name, works.workimgsmall, works.categoryid, workcategory.name AS cat_name
	FROM works JOIN workcategory 
	ON works.categoryid=workcategory.id';
	$work = R::getAll($sql);
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