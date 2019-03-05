<?php 
require_once('config.php');
require('db.php');
require('libs/functions.php');
$errors[] = array();
$success[] = array();
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


// include ROOT . "modules/shop/_addtocarttemplate.php";



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
	// ::::::: CONTACTS :::::::::::
	case 'contacts':
		include "modules/contacts/index.php";
		break;
	case 'contacts-edit':
		include "modules/contacts/contacts-edit.php";
		break;
	case 'messages':
		include "modules/contacts/messages.php";
		break;
	// ::::::: USERS :::::::::::		
	case 'about':
		include "modules/about/index.php";
		break;
	case 'about-edit':
		include "modules/about/edit.php";
		break;
	case 'skills-edit':
		include "modules/about/skills-edit.php";
		break;
	case 'expirience-edit':
		include "modules/about/expirience-edit.php";
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
	case 'blog/post-edit':
		include ROOT . "modules/blog/post-edit.php";
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
	// ::::::: WORKS :::::::::::
	case 'works':
		include ROOT . "modules/works/index.php";
		break;
	case 'works/separate-work':
		include ROOT . "modules/works/work.php";
		break;
	case 'works/edit-work':
		include ROOT . "modules/works/edit-work.php";
		break;
	case 'works/add-work':
		include ROOT . "modules/works/add-work.php";
		break;
	// ::::::: WORKS :::::::::::
	case 'shop':
		include ROOT . "modules/shop/index.php";
		break;
	case 'shop/new':
		include ROOT . "modules/shop/item-new.php";
		break;
	case 'shop/item':
		include ROOT . "modules/shop/item.php";
		break;
	case 'shop/item-edit':
		include ROOT . "modules/shop/item-edit.php";
		break;
	case 'shop/item-delete':
		include ROOT . "modules/shop/item-delete.php";
		break;
	// ::::::: CART :::::::::::
	case 'shop/addtocart':
		include ROOT . "modules/shop/addtocart.php";
		break;
	case 'shop/cart':
		include ROOT . "modules/shop/cart.php";
		break;
	case 'shop/removefromcart':
		include ROOT . "modules/shop/removefromcart.php";
		break;
	// ::::::: ORDERS :::::::::::
	case 'shop/order-create':
		include ROOT . "modules/shop/order-create.php";
		break;
	case 'shop/order-created-success':
		include ROOT . "modules/shop/order-created-success.php";
		break;
	case 'shop/orders':
		include ROOT . "modules/shop/orders.php";
		break;
	case 'shop/order':
		include ROOT . "modules/shop/order.php";
		break;
	// ::::::: PAYMENT SYSTEMS :::::::::::
	case 'shop/payment-choice':
		include ROOT . "modules/payment/payment-choice.php";
		break;
	case 'shop/payment-yandex':
		include ROOT . "modules/payment/payment-yandex.php";
		break;
	case 'shop/after-payment':
		include ROOT . "modules/payment/after-payment.php";
		break;
	case 'shop/payment-yandex-notify':
		include ROOT . "modules/payment/payment-yandex-notify.php";
		break;
		

	default:
		echo "<p>Page not found</p><p>Error 404</p>";
		break;
}






 ?>