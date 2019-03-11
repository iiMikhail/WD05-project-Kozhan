<!DOCTYPE html>
<html lang="ru">
<head>
	<meta charset="UTF-8" />
	<!--[if IE]><meta http-equiv="X-UA-Compatible" content="IE=edge"/><![endif]-->
	<title><?=@$title?></title>
	<meta name="keywords" content="" />
	<meta name="description" content="<?=@$metaDesc?>" />
	<link rel="stylesheet" href="<?php echo HOST?>templates/style/libs/normalize-css/normalize.css" />
	<!-- <script src="<?=HOST?>libs/ckeditor/ckeditor.js"></script> -->
	<link rel="stylesheet" href="<?php echo HOST?>templates/style/libs/bootstrap-4-grid/grid.min.css" /><!-- endbuild -->
	<link rel="stylesheet" href="<?php echo HOST?>templates/style/css/main.css" />
	<!-- API AUTORIZATION -->
	<script src="https://vk.com/js/api/openapi.js?160" type="text/javascript"></script>
	<script type="text/javascript">VK.init({apiId: 6891928})</script>
	<script type="text/javascript">
  		VK.Widgets.Auth("vk_auth", {"authUrl":"/login"});
	</script>
	<!-- //API AUTORIZATION -->
	<link rel="stylesheet" href="<?php echo HOST?>templates/style/css/castom.css" />

	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Merriweather|Open+Sans:400,600,700&amp;amp;subset=cyrillic-ext" />

</head>