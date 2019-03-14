<?php
$title = "Страница одной работы";

if ($_GET['id'] != '') {
	$work = R::load('works', $_GET['id']);
	$work->eyeCount = $work['eyeCount'] + 1;
	R::store($work);
}

$work = R::load('works', $_GET['id']);
@$metaDesc = $work['meta'];

$sql = 'SELECT works.date_time, works.autorid, works.categoryid, users.firstname, users.lastname, workcategory.id, workcategory.name
FROM works JOIN users 
ON works.autorid = users.id
JOIN workcategory ON works.categoryid=workcategory.id
WHERE works.id = ' . $_GET['id'] . '';

$workOne = R::getAll($sql);
@$workOne = $workOne[0];

$workId = R::getCol('SELECT id FROM works ORDER BY id');
foreach ($workId as $index => $id) {
	if ($id == $_GET['id']) {
		@$nextId = $workId[$index - 1]; 
		break; 
	}
}
	
ob_start();
include ROOT . "templates/only-admin-panel.tpl";
include ROOT . "templates/works/work.tpl";
$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_footer.tpl";

?>