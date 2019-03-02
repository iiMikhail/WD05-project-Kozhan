<?php
$title = "Редактировать пост";

$post = R::load('posts', $_GET['id']);
$categories = R::find('categories', 'ORDER BY cat_title');

if (isset($_POST['add-post'])) {
	if (trim($_POST['post-name']) == '') {
		$errors[] = ['title' => 'Введите название поста']; 
	}
	if (trim($_POST['post-desc']) == '') {
		$errors[] = ['title' => 'Введите текст поста']; 
	} 
	if (trim($_POST['postCat']) == '') {
		$errors[] = ['title' => 'Выберите категорию']; 
	} 
	if (empty($errors)) { 
		$post->title = htmlentities($_POST['post-name']);
		$post->categoryId = htmlentities($_POST['postCat']);
		$post->text = $_POST['post-desc'];
		$post->updateTime = R::isoDateTime();
		$post->autorId = $_SESSION['logged-user']['id'];

		// Загрузка картинок
		if (($_FILES['upload-file']['name'] != "") && ($_FILES['upload-file']['tmp_name'] != "")) {
			 $fileName = $_FILES['upload-file']['name'];
			 $fileTmpLoc = $_FILES['upload-file']['tmp_name'];
			 $fileType = $_FILES['upload-file']['type'];
			 $fileSize = $_FILES['upload-file']['size'];
			 $fileErrorMsg = $_FILES['upload-file']['error'];
			 $kaboom = explode(".", $fileName);
			 $fileExt = end($kaboom);

			 list($width, $height) = getimagesize($fileTmpLoc);
			 if($width < 10 || $height < 10) {
			 	$errors[] = ['title' => 'Изображение не имеет размеров']; 
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
			if (empty($errors)) {
				$postFolderLocation = ROOT . 'usercontent/blog/post/';
				$postFolderLocationSmall = ROOT . 'usercontent/blog/post/small/';

				$postImg = $post->postimg;
				$postImgSmall = $post->postimgsmall;
				if($postImg != "") {
				 	$picurl = $postFolderLocation . $postImg;
				 	if (file_exists($picurl)) {
				 		unlink($picurl);
				 	}
				 	$picurl320 = $postFolderLocationSmall . '320-' . $postImgSmall;
				 	if (file_exists($picurl320)) {
				 		unlink($picurl320);
				 	}
				 }

				$db_file_name = rand(100000000000,999999999999) . "." . $fileExt;
				$uploadfile = $postFolderLocation . $db_file_name;
				$moveResult = move_uploaded_file($fileTmpLoc, $uploadfile);

				include_once( ROOT . "/libs/image_resize_imagick.php");

				$target_file =  $postFolderLocation . $db_file_name;
				$wmax = 920;
				$hmax = 620;
				$img = createThumbnailBig($target_file, $wmax, $hmax);
				$img->writeImage($target_file);

				$post->postimg = $db_file_name;

				$target_file =  $postFolderLocation . $db_file_name;
				$resized_file = $postFolderLocationSmall . "320-" . $db_file_name;
				$wmax = 320;
				$hmax = 140;
				$img = createThumbnailCrop($target_file, $wmax, $hmax);
				$img->writeImage($resized_file);

				$post->postimgsmall = "320-" . $db_file_name;
			}
		 }
		R::store($post);
		header("location: " . HOST . "blog");
		exit();
	}
}
	
ob_start();
include ROOT . "templates/_header.tpl";
include ROOT . "templates/blog/post-edit.tpl";
$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_footer.tpl";

?>