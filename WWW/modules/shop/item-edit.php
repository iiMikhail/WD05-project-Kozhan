 <?php 
$title = "Добавить товар";

if(@$_SESSION['logged-user']['role'] != 'admin') {
	header('location: /');
	die();
}
 
$item = R::load('goods', $_GET['id']);

if (isset($_POST['add-item'])) {
	if (trim($_POST['item-name']) == '') {
		$errors[] = ['title' => 'Имя товара не может быть пустым']; 
	}
	if (trim($_POST['price']) == '') {
		$errors[] = ['title' => 'Цена не может быть пустой']; 
	}
	if (trim($_POST['item-desc']) == '') {
		$errors[] = ['title' => 'Описание товара не может быть пустым']; 
	}

	if (empty($errors)) {
		// $item = R::dispense('goods');
		$item->name = htmlentities($_POST['item-name']);
		$item->price = htmlentities($_POST['price']);
		$item->priceOld = htmlentities($_POST['priceOld']);
		$item->description = $_POST['item-desc'];
		$item->dateTime = R::isoDateTime();
		$item->autorId = $_SESSION['logged-user']['id'];

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
			if ( !preg_match("/\.(gif|jpg|jpeg|png)$/i", $fileName) ) {
				$errors[]  = [ 'title' => 'Неверный формат файла'];
			}
			$postFolderLocation = ROOT . 'usercontent/shop/img-item/';
			$postFolderLocationSmall = ROOT . 'usercontent/shop/img-item/small/';

			$db_file_name = rand(100000000000,999999999999) . "." . $fileExt;
			$uploadfile = $postFolderLocation . $db_file_name;
			$moveResult = move_uploaded_file($fileTmpLoc, $uploadfile);

			if ($moveResult != true) {
				$errors[] = ['title' => 'Ошибка сохранения файла' ];
			}
			 if ($fileErrorMsg == 1) {
				$errors[] = ['title' => 'Неизвестная ошибка'];
			 }
			 if (empty($errors)) {

				include_once( ROOT . "/libs/image_resize_imagick.php");

				$target_file =  $postFolderLocation . $db_file_name;
				$wmax = 920;
				$hmax = 620;
				$img = createThumbnailCropNew($target_file, $wmax, $hmax);
				$img->writeImage($target_file);
				$item->itemimg = $db_file_name;

				$target_file =  $postFolderLocation . $db_file_name;
				$resized_file = $postFolderLocationSmall . "320-" . $db_file_name;
				$wmax = 320;
				$hmax = 140;
				$img = createThumbnailCropNew($target_file, $wmax, $hmax);
				$img->writeImage($resized_file);

				$item->itemimgsmall = "320-" . $db_file_name;
			}
		 }
		R::store($item);
		header('location: /shop?result=itemUpdate');
		exit();
	}
} 

ob_start();
include ROOT . "templates/_header.tpl";
include ROOT . "templates/shop/edit.tpl";
$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_footer.tpl";

?>