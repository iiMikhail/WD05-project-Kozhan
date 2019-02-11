<?php 
require_once('config.php');
require('db.php');
require('libs/functions.php');
session_start();
@$userInfo = $_SESSION['logged-user'];

if(@$_SESSION['logged-user']['role'] == 'admin') {
	$userRole = 'Администратор';
} elseif(@$_SESSION['logged-user']['role'] == 'user') {
	$userRole = 'Пользователь';
} else {
	@$userRole = $_SESSION['logged-user']['role'];
}

$errors = array();

/**************************

РОУТЕР

***************************/
$uri = $_SERVER['REQUEST_URI'];
$uri = rtrim($uri, "/");
$uri = filter_var($uri, FILTER_SANITIZE_URL);
$uri = substr($uri, 1);
$uri = explode('?', $uri);

switch ( $uri[0] ) {
	case '':
		include "modules/main/index.php";
		break;
	case 'index':
		include "modules/main/index.php";
		break;
		// ::::::: USERS :::::::::::
	case 'registration':
		include ROOT . "modules/login/registration.php";
		break;
	// case 'portfolio/registration':
	// 	include ROOT . "modules/login/registration.php";
	// 	break;
	case 'login':
		include ROOT . "modules/login/login.php";
		break;
	case 'logout':
		include ROOT . "modules/login/logout.php";
		break;
	case 'lost-password':
		include ROOT . "modules/login/lost-password.php";
		break;
	case 'set-new-password':
		include ROOT . "modules/login/set-new-password.php";
		break;
	case 'profile':
		include ROOT . "modules/profile/index.php";
		break;
	case 'edit-profile':
		include ROOT . "modules/profile/edit-profile.php";
		break;
	// ::::::: USERS :::::::::::
	case 'contacts':
		include "modules/contacts/index.php";
		break;
	case 'about':
		include "modules/about/index.php";
		break;
	case 'profile':
		echo "profile.php";
		break;
	// ::::::: BLOG :::::::::::
	case 'blog':
		include ROOT . "modules/blog/index.php";
		break;
	case 'blog/post-new':
		include ROOT . "modules/blog/post-new.php";
		break;
	case 'blog/post':
		include ROOT . "modules/blog/post.php";
		break;
	// ::::::: CATEGORIES :::::::::::
	case 'blog/categories':
		include ROOT . "modules/categories/all.php";
		break;
	case 'blog/category-new':
		include ROOT . "modules/categories/new.php";
		break;
	case 'blog/category-edit':
		include ROOT . "modules/categories/edit.php";
		break;
	case 'blog/category-delete':
		include ROOT . "modules/categories/delete.php";
		break;

	default:
		include "modules/main/index.php";
		break;
}
// print_r($uri);






 ?>