<?php
$title = "Добавить работу";
$categories = R::find('workcategory', 'ORDER BY name');

if (isset($_POST['linkGithub'])) {
	$works = R::dispense('works');
	$works->name = htmlentities($_POST['workName']);
	$works->description = $_POST['workDescription'];
	$works->result = $_POST['workResult'];
	$works->technology = $_POST['workTechnology'];
	$works->project = htmlentities($_POST['linkProject']);
	$works->github = htmlentities($_POST['linkGithub']);
	$works->autorid = htmlentities($_SESSION['logged-user']['id']);
	$works->dateTime = R::isoDateTime();
	$works->categoryid = htmlentities($_POST['catid']);
	
	if (($_FILES['file']['name'] != "") && ($_FILES['file']['tmp_name'] != "")) {
		$fileName = $_FILES['file']['name'];
		$fileTmpLoc = $_FILES['file']['tmp_name'];
		$fileType = $_FILES['file']['type'];
		$fileSize = $_FILES['file']['size'];
		$fileErrorMsg = $_FILES['file']['error'];
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

		$workFolderLocation = ROOT . 'usercontent/works/full/';
		$workFolderLocationSmall = ROOT . 'usercontent/works/small/';

		$db_file_name = rand(100000000000,999999999999) . "." . $fileExt;
		$uploadfile = $workFolderLocation . $db_file_name;
		$moveResult = move_uploaded_file($fileTmpLoc, $uploadfile);
			
		if ($moveResult != true) {
			$errors[] = ['title' => 'Ошибка сохранения файла' ];
		}

		include_once( ROOT . "/libs/image_resize_imagick.php");

		// $target_file =  $workFolderLocation . $db_file_name;
		// $wmax = 945;
		// $hmax = 545;
		// $img = createThumbnailBig($target_file, $wmax, $hmax);
		// $img->writeImage($target_file);
		// $works->workimg = $db_file_name;

		$target_file = $workFolderLocation . $db_file_name;
		$wmax = 945;
		$hmax = 545;
		$img = createThumbnailCrop($target_file, $wmax, $hmax);
		$img->writeImage($target_file);
		$works->workimg = $db_file_name;



		// $target_file =  $workFolderLocation . $db_file_name;
		$resized_file = $workFolderLocationSmall . "360-" . $db_file_name;
		$wmax = 360;
		$hmax = 190;
		$img = createThumbnailCrop($target_file, $wmax, $hmax);
		$img->writeImage($resized_file);
		$works->workimgsmall = "360-" . $db_file_name;
	}
	R::store($works);
	header('location: /works');
	exit();
}
	 
ob_start();
include ROOT . "templates/_header.tpl";
include ROOT . "templates/works/add-work.tpl";
$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_footer.tpl";

?>