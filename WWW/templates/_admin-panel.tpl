<div class="content-page">
<div class="header-admin">
	<div class="header-admin__left">
		<div class="user ml-20">
			<a class="avatar-link" href="profile">
				<div class="avatar avatar--small">
					<?php if ($userInfo['avatar_small'] != "") { ?>
						<img src="<?php echo HOST?>usercontent/avatar/small/<?php echo $userInfo['avatar_small']?>" alt="alt text avatar" />
					<?php } else { ?>
						<img src="<?php echo HOST?>usercontent/avatar/small/avatar_def_small.png" alt="alt text avatar" />
					<?php } ?>
				</div>
			</a>
			<div class="brif ml-20">
				<p class="brif__name"><?=@$_SESSION['logged-user']['firstname']?> <?=@$_SESSION['logged-user']['lastname']?></p>
				<span class="badge"><?=@$userRole?></span>
			</div>
		</div>
		<nav class="admin-nav ml-70">
			<a href="<?php echo HOST?>blog/post-new">
				<i class="fas fa-plus-circle"></i>Пост
			</a>
			<a href="<?php echo HOST?>blog/categories">
				<i class="fas fa-folder"></i>Категория
			</a>
			<a href="<?php echo HOST?>works/add-work">
				<i class="fas fa-plus-circle"></i>Работа
			</a>
			<a href="<?php echo HOST?>about">
				<i class="fas fa-edit"></i>Обо мне
			</a>
			<a href="<?php echo HOST?>contacts-edit">
				<i class="fas fa-edit"></i>Контакты
			</a>
			<a href="<?php echo HOST?>messages">
				<i class="fas fa-envelope"></i>Сообщения <?php if ($unreadMessages > 0) { ?><span class="notify-count"><?=$unreadMessages?></span><?php } ?>
			</a>
			<a href="<?php echo HOST?>shop/orders">
				<i class="fas fa-shopping-cart"></i>Заказы
			</a>
		</nav>
	</div>
	<div class="header-admin__right">
		<a href="logout"><i class="fas fa-sign-out-alt"></i>Выход</a>
	</div>
</div>
</div>