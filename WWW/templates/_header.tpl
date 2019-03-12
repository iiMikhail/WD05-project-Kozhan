<?php  if ( isset($_SESSION['logged-user'])
	&& $_SESSION['login'] == '1'
	&& @$_SESSION['role'] == 'admin' ) {
	include ROOT . "templates/_admin-panel.tpl";
} ?>

	<header class="header">
		<div class="row header__wrapper">
			<div class="logo">
				<div class="logo__wrapper">
					<div class="logo__img">
						<i class="fab fa-superpowers"></i>
					</div>
					<div 	style="	margin-bottom: 10px; 
									letter-spacing: 3.5px;" 
							class="logo__title">DD-Life</div>
				</div>
				<div 	style="	margin-left: 37px; 
								line-height: 1.3; 
								font-size: 13px; 
								letter-spacing: 1.5px;" 
						class="logo__description">
					Цифровой дизайн <br>
					Веб-разработка
					
				</div>
			</div>
<?php
	if ( isset($_SESSION['logged-user'])
		&& $_SESSION['login'] == '1') { ?>
			<div class="user-block">
				<div class="user-block__wrapper">
					<div class="row user-group">
						<?php if ($userInfo['password'] != '') { ?>
							<div height="100px" class="avatar avatar--small">
								<?php if ($userInfo['avatar_small'] != "") { ?>
									<img src="<?php echo HOST?>usercontent/avatar/small/<?=$userInfo['avatar_small']?>" alt="alt text avatar" />
								<?php } else { ?>
									<img src="<?=HOST?>usercontent/avatar/small/avatar_def_small.png" alt="alt text avatar" />
								<?php } ?>
							</div>
						<?php } else { ?>
							<div height="100px" class="avatar avatar--small">
								<?php if ($userInfo['avatar_small'] != "") { ?>
									<img src="<?=$userInfo['avatar_small']?>" alt="alt text avatar" />
								<?php } else { ?>
									<img src="<?php echo HOST?>usercontent/avatar/small/avatar_def_small.png" alt="alt text avatar" />
								<?php } ?>
							</div>
						<?php } ?>
						<div class="user-name"><span><?=@$_SESSION['logged-user']['firstname']?> <?=@$_SESSION['logged-user']['lastname']?></span>
							<p><?=@$userRole?></p>
							<div class="row user-buttons"><a class="button button-profile" href="<?php echo HOST?>profile">Профиль</a><a class="button button-profile" href="<?php echo HOST?>logout">Выход</a></div>
						</div>
					</div>
				</div>
			</div>	
	<?php } else { ?>
			<div class="user-block nav-dawn">
				<a class="nav__link" href="<?php echo HOST?>registration">Регистрация</a>
				<a class="nav__link" href="<?php echo HOST?>login">Вход</a>
			</div>
	<?php } ?>
		</div>
		<div class="row">
			<nav style="margin-left: 37px;" class="nav">
				<a class="nav__link" 
				href="<?php echo HOST?>index">Главная</a>
				<a class="nav__link" 
				href="<?php echo HOST?>about">Обо мне</a>
				<a class="nav__link" 
				href="<?php echo HOST?>works">Работы</a>
				<?php if(@$_SESSION['logged-user']['role'] == 'admin') { ?>
					<a class="nav__link" 
					href="<?php echo HOST?>shop">Услуги</a> 
				<?php } ?>
				<a class="nav__link" 
				href="<?php echo HOST?>blog">Блог</a>
				<a class="nav__link" 
				href="<?php echo HOST?>contacts">Контакты</a>
			</nav>
		</div>
		<?php include ROOT . "templates/shop/_cart-in-header.tpl" ?>
	</header>
<script type="text/javascript">
	VK.init({
	apiId: 6891928 
	});
</script>