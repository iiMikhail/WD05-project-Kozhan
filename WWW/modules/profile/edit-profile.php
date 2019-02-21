<?php 
$title = "Редактировать профиль";

$userInfo = $_SESSION['logged-user'];
$userID = R::load('users', $userInfo->id);

if (isset($_POST['save-profile'])) {
	if(trim($_POST['email']) == '') {
		$errors[] = ['title' => 'Введите E-mail'];
	}
	if(trim($_POST['first-name']) == '') {
		$errors[] = ['title' => 'Введите имя'];
	}
	if(trim($_POST['first-name']) == '') {
		$errors[] = ['title' => 'Введите фамилию'];
	}
	if (empty($errors)) {
		$userInfo->firstname = htmlentities($_POST['first-name']);
		$userInfo->lastname = htmlentities($_POST['last-name']);
		$userInfo->email = htmlentities($_POST['email']);
		$userInfo->country = htmlentities($_POST['country']);
		$userInfo->city = htmlentities($_POST['city']);

		if (isset($_FILES['avatar']['name']) && $_FILES['avatar']['tmp_name'] != '') {

			// Переменные
			$fileName = $_FILES['avatar']['name'];
			$fileTmpLoc = $_FILES['avatar']['tmp_name'];
			$fileType = $_FILES['avatar']['type'];
			$fileSize = $_FILES['avatar']['size'];
			$fileErrorMsg = $_FILES['avatar']['error'];
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

			// Проверка установлен ли у пользователя аватар
			$avatar = $userInfo['avatar'];
			$avatarFolderLocation = ROOT . 'usercontent/avatar/full/';
			$avatarFolderLocationSmall = ROOT . 'usercontent/avatar/small/';

			// Если аватар установлен - удалить его
			if ($avatar != '') {
				$picurl = $avatarFolderLocation . $avatar; //usercontent/avatar/full/photo.jpg
				if(file_exists($picurl)) {unlink($picurl);}
			}
			$db_file_name = rand(100000000000,999999999999) . "." . $fileExt;
			$uploadfile = $avatarFolderLocation . $db_file_name;
			$moveResult = move_uploaded_file($fileTmpLoc, $uploadfile);
			
			if ($moveResult != true) {
				$errors[] = ['title' => 'Ошибка сохранения файла' ];
			}

			include_once( ROOT . "/libs/image_resize_imagick.php");

			$target_file =  $avatarFolderLocation . $db_file_name;
			// $resized_file = $avatarFolderLocation . $db_file_name;
			$wmax = 222;
			$hmax = 222;
			$img = createThumbnail($target_file, $wmax, $hmax);
			$img->writeImage($target_file);

			$userInfo->avatar = $db_file_name;

			$target_file =  $avatarFolderLocation . $db_file_name;
			$resized_file = $avatarFolderLocationSmall . "48-" . $db_file_name;
			$wmax = 48;
			$hmax = 48;
			$img = createThumbnail($target_file, $wmax, $hmax);
			$img->writeImage($resized_file);

			$userInfo->avatarSmall = "48-" . $db_file_name;

		}

		R::store($userInfo);
		session_start();
		@$userInfo = $_SESSION['logged-user'];
		
		$_SESSION['logged-user'] = $userID;
		$userInfo = $_SESSION['logged-user'];
		$_SESSION['logged-user'] = $userInfo;
		header('location: /profile');
		exit();
	}
}
	
ob_start();
include ROOT . "templates/_header.tpl";
include ROOT . "templates/profile-edit.tpl";
$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_footer.tpl";

?>