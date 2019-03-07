<?php 
$title = "Вход на сайт";

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