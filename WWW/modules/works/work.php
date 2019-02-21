 <?php
$title = "Страница одной работы";

$work = R::load('works', $_GET['id']);

$sql = 'SELECT works.date_time, works.autorid, works.categoryid, users.firstname, users.lastname, workcategory.id, workcategory.name
FROM works JOIN users 
ON works.autorid = users.id
JOIN workcategory ON works.categoryid=workcategory.id
WHERE works.id = ' . $_GET['id'] . '';

$workOne = R::getAll($sql);
$workOne = $workOne[0];
	
ob_start();
include ROOT . "templates/only-admin-panel.tpl";
include ROOT . "templates/works/work.tpl";
$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_footer.tpl";

?>