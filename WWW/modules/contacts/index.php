<?php
$title = "Блог - Главная";
$contacts = R::load('contacts', 1);


if (isset($_POST['save-button'])) {
	$message = R::dispense('messages');

	$message->nameUser = htmlentities($_POST['name-user']);
	$message->email = htmlentities($_POST['email-user']);
	$message->message = htmlentities($_POST['user-message']);
	$message -> dateTime = R::isoDateTime();

	if (isset($_FILES['file']['name']) && $_FILES['file']['tmp_name'] != '') {

			// Переменные
			$fileName = $_FILES['file']['name'];
			$fileTmpLoc = $_FILES['file']['tmp_name'];
			$fileType = $_FILES['file']['type'];
			$fileSize = $_FILES['file']['size'];
			$fileErrorMsg = $_FILES['file']['error'];
			$kaboom = explode(".", $fileName);
			$fileExt = end($kaboom);

			$db_file_name = rand(100000000000,999999999999) . "." . $fileExt;

			if ($fileSize > 4194304) {
				$errors[] = ['title' => 'Файл изображения не должен быть больше 4 мб'];
			}
			if (!preg_match("/\.(gif|png|jpg|pdf|doc)$/i", $fileName)) {
				$errors[] = ['title' => 'Некорректное расширение файла'];
			}
			if ($fileErrorMsg == 1) {
				$errors[] = ['title' => 'Неизвестная ошибка'];
			}
			$fileFolderLocation = ROOT . 'usercontent/upload-files/';
			$uploadfile = $fileFolderLocation . $db_file_name;
			$moveResult = move_uploaded_file($fileTmpLoc, $uploadfile);
			if ($moveResult != true) {
				$errors[] = ['title' => 'Ошибка сохранения файла' ];
			}
			$message->file = $db_file_name;
			$message->originalFile = $fileName;

	R::store($message); 
	header('location: ' . HOST . "contacts?result=message-sent");
	exit();  
}
}


ob_start();
include ROOT . "templates/_header.tpl";
include ROOT . "templates/contacts/contacts.tpl";
$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_footer.tpl";

?>