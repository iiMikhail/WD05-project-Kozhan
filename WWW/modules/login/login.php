<?php 
$title = "Вход на сайт";

// Авторизация через ВК
$apiId = 6891928;
$secretKey = 'qOsLFUWGtXVOeHLTkE04';
$url = 'http://dd-life.ru/vklogin.php';
$auth = "https://oauth.vk.com/authorize?client_id=$apiId&scope=email&redirect_uri=$url&response_type=code";
if (@$_GET['uid'] != '') {
	$vkid = $_GET['uid'];
	$first_name = $_GET['first_name'];
	$last_name = $_GET['last_name'];
	$photo_rec = $_GET['photo_rec'];
	$photo = $_GET['photo'];
	if ( R::count('users', 'vkid = ?', array($_GET['uid'])) > 0 ) { 
		$user = R::findOne('users', 'vkid = ?', array($_GET['uid']));
		$user->vkid = $vkid;
		$user->first_name = $first_name;
		$user->last_name = $last_name;
		$user->photo_rec = $photo_rec;
		$user->role = 'user';
    	$_SESSION['logged-user'] = $user;
    	$_SESSION['login'] = '1';
    	$_SESSION['role'] == 'user';
	} else { 
		 $user = R::dispense('users');
		 $user->vkid = $vkid;
		 $user->firstname = $first_name;
		 $user->lastname = $last_name;
		 $user->avatar = $photo;
		 $user->avatar_small = $photo_rec;
		 $user->role = 'user';
		 R::store($user);
	}
	header("location: " . $auth);
}
// *******************

if (isset($_POST['enter-button'])) {
	if (trim($_POST['email']) == '' || trim($_POST['password']) == '') {
		$errors[] = ['title' => 'Введите E-mail и Пароль'];
	}
	if (empty($errors)) {
		$user = R::findOne('users', 'email = ?', array($_POST['email']));
		if ($user) {
			if(password_verify($_POST['password'], $user->password)) {
				$_SESSION['logged-user'] = $user;
				$_SESSION['login'] = '1';
				$_SESSION['role'] = $user->role;

					// Функция "Запомнить меня"
				if(isset($_POST["remember_me"])){
					// Создаем токен
					$password_cookie_token = md5( $user['id'] . $user['password'] . time() );
					// добавляем созданый токен в БД
					$user->password_cookie_token = $password_cookie_token;
					R::store($user);
					setcookie('password_cookie_token', $password_cookie_token, time() + (1000*60*60*24*30));  
				} else {
					$user->password_cookie_token = '';
					R::store($user);
					setcookie('password_cookie_token', '', time() - 3600);
				}

				require ROOT . "modules/shop/_cart-update-in-login.php";
				
				header("Location: " . HOST . "/");
				exit();
			} else {
				$errors[] = ['title' => 'Неверный пароль'];
			}
		} else {
			$errors[] = ['title' => 'Неверный E-mail'];
		}
	}
}
ob_start();
$content = ob_get_contents();
ob_end_clean();
include ROOT . "templates/_head.tpl";
include ROOT . "templates/login/login.tpl";
 ?>