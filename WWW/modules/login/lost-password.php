<?php 
$title = "Забыл пароль";

if (isset($_POST['enter-button'])) {
	if (trim($_POST['email']) == '') {
		$errors[] = ['title' => 'Введите E-mail'];
	}
	if (empty($errors)) {
		$user = R::findOne('users', 'email = ?', array($_POST['email']));
		if ($user) {

			// Генерация кода и сохранение в БД
			function random_str($num = 30) {
				return substr(str_shuffle('0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'), 0, $num);
			}
			$recovery_code = random_str(15);
			$user->recovery_code = $recovery_code;
			$user->recovery_code_times = 3;
			R::store($user);

			// Сообщение пользователю
			$recovery_message = "<p>Код для сброса пароля </b>$recovery_code</b></p>";
			$recovery_message = "<p>Для сброса пароля перейтиде по ссылке ниже</p>";
			$recovery_message = '"<p><a href="' . HOST;
			$recovery_message = "set-new-password?email=" . 
								$_POST['email'] . "&code=" . $recovery_code;
			$recovery_message = '" target="_blank">';
			$recovery_message = "<p>Установить новый пароль</a></p>";

			// Заголовок письма
			$headers = "MIME-version: 1.0" . PHP_EOL .
						"Content-type: text/html; charset=utf-8" . PHP_EOL .
						"From" . adopt(SITE_NAME) . "<" . SITE_EMAIL . ">" . PHP_EOL .
						"Reply-To: ADMIN_EMAIL";

			// Отправка письма через функцию mail
			mail($_POST['email'], 'Восстановление доступа', $recovery_message, $headers);
			$success[] = ['title' => "Инструкция по восстановлению пароля выслана на {$_POST['email']}"];
			// header('Location: /login');
			exit();
		} else {
			$errors[] = ['title' => 'Пользователь с таким E-mail не зарегистрирован'];
		}
	}
}
ob_start();
$content = ob_get_contents();
ob_end_clean();
include ROOT . "templates/_head.tpl";
include ROOT . "templates/login/lost-password.tpl";
 ?>