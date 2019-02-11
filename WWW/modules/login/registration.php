<?php 
$title = "Регистрация на сайте";
$errors = array();

if (isset($_POST['enter-button'])) {
	if (trim($_POST['email']) == '' || trim($_POST['password']) == '') {
		$errors[] = ['title' => 'Введите E-mail и Пароль'];
	}
	// Проверка что пользователь уже существует
	if( R::count('users', 'email = ?', array($_POST['email'])) > 0 ) {
		$errors[] = 
		['title' => 'Данный email уже занят', 
		'desc' => 'Данный email уже занят'];
	}
	if (empty($errors)) {
		$user = R::dispense('users');
		@$user->email = htmlentities($_POST['email']);
		@$user->role = 'user';
		@$user->password = password_hash($_POST['password'], PASSWORD_DEFAULT);
		R::store($user);

		$_SESSION['logged-user'] = $user;
		$_SESSION['login'] = "1";
		$_SESSION['role'] = $user->role;

		header('Location: /profile');
		// header('Location: ' . HOST . 'profile');
		exit();
	}
}
		// $user = R::dispense('users');
		// @$user->email = htmlentities($_POST['email']);
		// @$user->role = 'user';
		// @$user->password = password_hash($_POST['password'], PASSWORD_DEFAULT);
		// R::store($user);

		// $_SESSION['logged-user'] = $user;
		// $_SESSION['login'] = "1";
		// $_SESSION['role'] = $user->role;

		// header('Location: ' . HOST );
		// header('Location: ' . HOST . 'profile');
		// exit();


ob_start();
$content = ob_get_contents();
ob_end_clean();
// include ROOT . "templates/_head.tpl";

// include ROOT . "templates/_footer.tpl";


// Проверка e-mail при регистрации (что пользователь уже существует)
// $user = R::dispense('users');
// @$user->email = htmlentities($_POST['email']);
// @$user->password = password_hash($_POST['password'], PASSWORD_DEFAULT);
// R::store($user);
include ROOT . "templates/_head.tpl";
include ROOT . "templates/login/registration.tpl";
 ?>