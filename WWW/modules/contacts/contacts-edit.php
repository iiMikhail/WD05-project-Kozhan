<?php
$title = "Контакты - редактировать";

if (!isAdmin()) {
	header("location: " . HOST);
	exit();
}

$contacts = R::load('contacts', 1);
if (isset($_POST['savebutton'])) {
	$contacts->firstName=htmlentities($_POST['first-name']);
	$contacts->email=htmlentities($_POST['email']);
	$contacts->vkontakte=htmlentities($_POST['vkontakte']);
	$contacts->phone=htmlentities($_POST['phone']);
	$contacts->lastName=htmlentities($_POST['last-name']);
	$contacts->skype=htmlentities($_POST['skype']);
	$contacts->facebook=htmlentities($_POST['facebook']);
	$contacts->address=htmlentities($_POST['address']);
	$contacts->github=htmlentities($_POST['github']);
	$contacts->twitter=htmlentities($_POST['twitter']);

	R::store($contacts);
	header('location: ' . HOST . "contacts");
	exit();
}

ob_start();
include ROOT . "templates/_header.tpl";
include ROOT . "templates/contacts/contacts-edit.tpl";
$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_footer.tpl";

?>