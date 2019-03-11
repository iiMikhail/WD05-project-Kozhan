<?php
$title = "Блог - все записи";
$metaDesc = "Блог веб-дизайнера. Блог веб-разработчика. Как сделать сайт под ключ";

// ПАГИНАЦИЯ
$pagination = pagination('posts');
if (isset($_GET) && @$_GET['catid'] != '') {
	@$posts = R::find('posts', 'category_id = ?', array($_GET['catid']));
} else {
	$posts = R::find('posts', 'ORDER BY id DESC ' . $pagination['sql_pages_limit']);
}

ob_start();
include ROOT . "templates/_header.tpl";
include ROOT . "templates/blog/blog.tpl";
$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_footer.tpl";

?>