<?php
$title = "Сообщения";
$messages = R::find('messages', 'ORDER BY id DESC');
@$messageDel = R::load('messages', $_GET['id']);
 if(@$_GET['type'] == 'del') {
		// header('location: ' . HOST . 'categories/all?id=' . $category);
	R::trash($messageDel);
	header('Location: /messages');
}
ob_start();
include ROOT . "templates/_header.tpl";
include ROOT . "templates/contacts/messages.tpl";
$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_footer.tpl";

?>