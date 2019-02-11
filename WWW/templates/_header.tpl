<?php
	if ( isset($_SESSION['logged-user'])
		&& $_SESSION['login'] == '1'
		&& $_SESSION['role'] == 'admin' ) {
		include ROOT . "templates/_admin-panel.tpl";
	}
?>

	<header class="header">
		<div class="row header__wrapper">
			<div class="logo">
				<div class="logo__wrapper">
					<div class="logo__img">
						<i class="far fa-paper-plane"></i>
					</div>
					<div class="logo__title">Digital Lifestyle</div>
				</div>
				<div class="logo__description">Сайт IT специалиста</div>
			</div>
<?php
	if ( isset($_SESSION['logged-user'])
		&& $_SESSION['login'] == '1') { ?>
			<div class="user-block">
				<div class="user-block__wrapper">
					<div class="row user-group">
						<div height="100px" class="avatar avatar--small">
							<?php if ($userInfo['avatar_small'] != "") { ?>
								<img src="<?php echo HOST?>usercontent/avatar/small/<?php echo $userInfo['avatar_small']?>" alt="alt text avatar" />
							<?php } else { ?>
								<img src="<?php echo HOST?>usercontent/avatar/small/avatar_def_small.png" alt="alt text avatar" />
							<?php } ?>
						</div>
						<div class="user-name"><span><?=@$_SESSION['logged-user']['firstname']?> <?=@$_SESSION['logged-user']['lastname']?></span>
							<p><?=@$userRole?></p>
							<div class="row user-buttons"><a class="button button-profile" href="profile">Профиль</a><a class="button button-profile" href="logout">Выход</a></div>
						</div>
					</div>
				</div>
			</div>	
	<?php } else { ?>
			<div class="user-block nav-dawn">
				<a class="nav__link" href="./registration">Регистрация</a>
				<a class="nav__link" href="./login">Вход</a>
			</div>
	<?php } ?>
		</div>
		<div class="row">
 
			<nav class="nav">
				<a class="nav__link" 
				href="<?php echo HOST?>index">Главная</a>

				<a class="nav__link" 
				href="<?php echo HOST?>about">Обо мне</a>

				<a class="nav__link" 
				href="<?php echo HOST?>works">Работы</a>

				<a class="nav__link" 
				href="<?php echo HOST?>blog">Блог</a>

				<a class="nav__link" 
				href="<?php echo HOST?>contacts">Контакты</a>
			</nav>
		</div>
	</header>