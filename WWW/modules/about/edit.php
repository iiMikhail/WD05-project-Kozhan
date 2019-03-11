<?php
$title = "Обо мне - редактировать информацию";
$aboutAutor = R::find('about');
$aboutAutor = $aboutAutor[1];
 
if (!isAdmin()) {
	header("location: " . HOST);
	exit();
}

if (isset($_POST['save-button'])) {

	if ($_POST['fullName'] == '') { 
		$errors[] = ['title' => 'Введите имя'];
	}
	if ($_POST['about-me-info'] == '') {
		$errors[] = ['title' => 'Введите инфорацию об авторе'];
	}
	if (empty($errors)) {

		$about = R::load('about', 1);
		@$about->name = htmlentities($_POST['fullName']);
		@$about->text = $_POST['about-me-info'];

		if (isset($_FILES['upload-file']['name']) && $_FILES['upload-file']['tmp_name'] != '') {

			// Переменные
			$fileName = $_FILES['upload-file']['name'];
			$fileTmpLoc = $_FILES['upload-file']['tmp_name'];
			$fileType = $_FILES['upload-file']['type'];
			$fileSize = $_FILES['upload-file']['size'];
			$fileErrorMsg = $_FILES['upload-file']['error'];
			$kaboom = explode(".", $fileName);
			$fileExt = end($kaboom);
		 
			// Проверка файла (обработка ошибок при загрузке )
			list($width, $height) = getimagesize($fileTmpLoc);
			if ($width < 10 || $height < 10) {
				$errors[] = ['title' => 'Изображение слишком маленькое'];
			}
			if ($fileSize > 4194304) {
				$errors[] = ['title' => 'Файл изображения не должен быть больше 4 мб'];
			}
			if (!preg_match("/\.(gif|png|jpg)$/i", $fileName)) {
				$errors[] = ['title' => 'Некорректное расширение файла'];
			}
			if ($fileErrorMsg == 1) {
				$errors[] = ['title' => 'Неизвестная ошибка'];
			}

			$avatar = $userInfo['avatar'];
			$avatarFolderLocation = ROOT . 'usercontent/about/photo/';

			$db_file_name = rand(100000000000,999999999999) . "." . $fileExt;
			$uploadfile = $avatarFolderLocation . $db_file_name;
			$moveResult = move_uploaded_file($fileTmpLoc, $uploadfile);
					
			if ($moveResult != true) {
				$errors[] = ['title' => 'Ошибка сохранения файла' ];
			}

			include_once( ROOT . "/libs/image_resize_imagick.php");

			$target_file =  $avatarFolderLocation . $db_file_name;
			$wmax = 222;
			$hmax = 222;
			$img = createThumbnail($target_file, $wmax, $hmax);
			$img->writeImage($target_file);

			$about->photo = $db_file_name;
		}

		R::store($about);
		header('location: /about');
		exit();
	}
}

ob_start(); 
include ROOT . "templates/_header.tpl";
include ROOT . "templates/about/edit.tpl";
$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_footer.tpl";

?>