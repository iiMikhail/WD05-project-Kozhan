<!-- Yandex.Metrika counter -->
	<script type="text/javascript" >
	   (function(m,e,t,r,i,k,a){m[i]=m[i]||function(){(m[i].a=m[i].a||[]).push(arguments)};
	   m[i].l=1*new Date();k=e.createElement(t),a=e.getElementsByTagName(t)[0],k.async=1,k.src=r,a.parentNode.insertBefore(k,a)})
	   (window, document, "script", "https://mc.yandex.ru/metrika/tag.js", "ym");

	   ym(52709323, "init", {
	        clickmap:true,
	        trackLinks:true,
	        accurateTrackBounce:true,
	        webvisor:true
	   });
	</script> 
	<noscript><div><img src="https://mc.yandex.ru/watch/52709323" style="position:absolute; left:-9999px;" alt="" /></div></noscript>
<!-- /Yandex.Metrika counter -->
<!-- style="background: url(photo.jpg) center top / cover no-repeat fixed;" -->

<header style="background: url(../usercontent/blog/post/<?=$post['postimg']?>) center top / cover no-repeat fixed; position: relative; background-color: rgba(0,0,0,0.7); z-index: 2" class="mb-50 pb-60 blog-header"> 
	<div style="z-index:0" class="blog__header-wrapper"></div> 
	<div style="position: relative;" class="logo ml-50 pt-45 mb-35">
		<a style="text-decoration: none" href="<?=HOST?>">
			<div class="logo">
				<div class="logo__wrapper">
					<div class="logo__img">
						<i class="fab fa-superpowers"></i>
					</div>
					<div style="margin-bottom: 10px; letter-spacing: 3.5px; color: white;" class="logo__title">DD-Life</div>
				</div>
				<div style="margin-left: 37px; line-height: 1.3; font-size: 13px; letter-spacing: 1.5px; color: white; opacity: 0.8;" class="logo__description">
					Цифровой дизайн <br>
					Веб-разработка	
				</div>
			</div>
	</div> 
	<div style="position: relative;" class="row blog--navigation ml-0 mb-100">
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
	<div style="position: relative;" class="container">
		<div class="separate-work-head" style="padding: 0;">
			<?php if(@$_SESSION['logged-user']['role'] == 'admin') { ?>
			<div class="flexpos">
				<div></div>
				<div>
					<a class="button button-edit mr-10" href="<?php echo HOST?>blog/post-edit?id=<?php echo $post['id']?>">Редактировать</a>
					<a class="button button-delete"  
					href="<?php echo HOST?>blog/post?type=del&id=<?php echo $post['id']?>">Удалить</a>
				</div>
			</div> 
			<?php  } ?> 
			<div class="flexpos">
				<h1 style="font-size: 32px; color: white; padding: 0;" class="title-general mb-0 mt-0 col-md-5"><?=$post['title']?></h1>
				<div></div>
			</div>
			<div class="blog__description-info col-md-6 mt-25" style="padding: 0;">
				<?=$post['meta']?>
			</div>
			<div class="post-info mt-30">
				<div style="color: white; opacity: 0.6;" class="post-info__author"><?=$post['firstname']?> <?=$post['lastname']?></div> 
				<div class="post-info__topic"><a class="postlink" href="<?=HOST?>blog?catid=<?=$post['category_id']?>"><?=$post['cat_title']?></a></div>
				<div style="color: white; opacity: 0.6;" class="post-info__date">
					<?php if ($post['update_time'] != "") {
						echo "Обновлено: "; echo rus_date("j F Y H:i", strtotime($post['update_time']));
					} else {
						echo "Добавлено: "; echo rus_date("j F Y H:i", strtotime($post['date_time']));} ?>		 
				</div>
				<div class="post-info__comments"><a class="postlink" href="#comments"><?=commentNumber(count($commentsPost))?></a></div>
			</div>
		</div>
	</div>
</header>
<div class="container pb-120 col-md-6" style="margin-top: -100px; z-index: 999; position: relative;">
	<div class="row">
		<div class="col-9">
			<div class="post">
				<div class="post-content mb-25" style="padding-top: 60px; padding-left: 20px; padding-right: 30px; background-color: white;">
					<?php echo $post['text']?>
				</div>
				<div class="post-buttons-nav mb-25">
					<?php if ($prevId != '') { ?>
						<a class="button button-previous" href="<?=HOST?>blog/post?id=<?=$prevId?>">Назад <span class="button__icon button__icon--mright float-left"><i class="mr-0 fas fa-arrow-left"></i></span></a>
					<?php } else { ?>
						<div></div>
					<?php } ?>
					<?php if ($nextId != '') { ?>
					<a class="button button-next" href="<?=HOST?>blog/post?id=<?=$nextId?>">Вперед <span class="button__icon"><i class="mr-0 fas fa-arrow-right"></i></span></a>
					<?php } else { ?>
						<div></div>
					<?php } ?>
				</div>	
			</div>
			<div id="comments" class="user-comments-wrapper mb-25">
				<?php if (count($commentsPost) > 0) { ?>
					<div class="title-4"><?php echo commentNumber(count($commentsPost))?></div>
				<?php } ?>
				<?php foreach ($commentsPost as $commentPost) { ?>
					<div class="user-comment">
						<div class="user-comment__avatar">
							<div class="avatar avatar--small"><img src="<?php echo HOST?>usercontent/avatar/small/<?php echo $commentPost['avatar_small']?>" alt="<?php echo $commentPost['avatar_small']?>" /></div>
						</div>
						<div class="user-comment-info-wrapper">
							<span class="user-comment__name">
								<?php echo $commentPost['firstname']?> 
								<?php echo $commentPost['lastname']?>
							</span> 
							<span class="user-comment__date"><i class="far fa-clock"></i>
								<?php echo rus_date("j F Y H:i", strtotime($commentPost['date_time'])) ?>
							</span>
							<div class="user-comment__text">
								<p><?php echo $commentPost['text']?></p>
							</div>
						</div>
					</div>
				<?php } ?>
			</div> 
			<?php if (count($commentsPost) > 0) { ?>
				<h2 class="title-4 m-0 mb-15">Оставить комментарий</h2>
			<?php } else { ?>
				<h2 class="title-4 m-0 mb-15">Ваш комментарий может быть первым</h2>
			<?php } ?>
			
			<?php include ROOT . "templates/_errors.tpl" ?>
			<?php if (@$_SESSION['logged-user']['id']) { ?>
				<form method="POST" action="<?php echo HOST?>blog/post?id=<?php echo $post['id']?>" class="comments-submit">
					<div class="avatar avatar--small">
						<?php if ($_SESSION['logged-user']['avatar_small'] != '') { ?>
							<img src="<?php echo HOST?>usercontent/avatar/small/<?php echo $_SESSION['logged-user']['avatar_small']?>" alt="<?php echo $_SESSION['logged-user']['avatar_small']?>" />
						<?php } else { ?>
						<img src="<?php echo HOST?>usercontent/avatar/small/avatar_def_small.png" alt="avatar_def_small.png" />
					<?php } ?>
					</div>
					<div class="comments-form">
						<b class="comments__author">
							<?php echo $_SESSION['logged-user']['firstname']?>
							<?php echo $_SESSION['logged-user']['lastname']?>
						</b>
						<div class="notification">
							<div id="nocomment" class="notification__title notification--error">Комментарий не может быть пустым</div>
						</div> 
						<textarea id="addCommentUser" class="textarea" name="comment" placeholder="Присоединиться к обсуждению..."></textarea>
						<input id="button-comment-send" class="button mt-10" type="submit" name="addComment" value="Опубликовать" />
					</div>
				</form>	
			<?php } else { ?>
				<div class="comments-unregistered">
					<p class="comments-unregistered__note"><a class="link" href="<?php echo HOST?>login">Войдите</a> или <a class="link" href="<?php echo HOST?>registration">Зарегистрируйтесь</a> чтобы оставить комментарий</p>
				</div> 
			<?php } ?>
		</div>
	</div>
</div>
<script>
	document.addEventListener('DOMContentLoaded', function(){ // Аналог $(document).ready(function(){
		// CKEDITOR.replace();
		CKEDITOR.replace('editor1', {
			customConfig: '<?php echo HOST?>templates/style/js/cKeditorConfig.js'
		});
	});
</script>