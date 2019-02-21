<?php  if ( isset($_SESSION['logged-user'])
	&& $_SESSION['login'] == '1'
	&& $_SESSION['role'] == 'admin' ) {
	include ROOT . "templates/_admin-panel.tpl";
} ?>