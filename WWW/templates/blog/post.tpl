 <script src="<?php echo HOST?>libs/ckeditor/ckeditor.js"></script>
<div class="container pt-80 pb-120">
	<div class="row">
		<div class="col-10 offset-1">
			<div class="post"> 
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
					<h1 class="title-general mb-0 mt-0"><?php echo $post['title']?></h1>
					<div>
					</div>
				</div>
				<div class="post-info">
					<div class="post-info__author"><?php echo $post['firstname']?> <?php echo $post['lastname']?></div>
					<div class="post-info__topic"><a class="postlink" href="#"><?php echo $post['cat_title']?></a></div>
					<div class="post-info__date">
						<?php if ($post['update_time'] != "") {
							echo "Обновлено: "; echo rus_date("j F Y H:i", strtotime($post['update_time']));
						} else {
							echo "Добавлено: "; echo rus_date("j F Y H:i", strtotime($post['date_time']));
						} ?>
							
					</div>
					<div class="post-info__comments"><a class="postlink" href="#"><?php echo commentNumber(count($commentsPost))?></a></div>
				</div>
				<div class="post-img">
					<?php if ($post['postimg'] != ""){ ?>
						<img src="<?php echo HOST?>usercontent/blog/post/<?php echo $post['postimg']?>" alt="Горы" />
					<?php } else { ?>
						<img src="<?php echo HOST?>usercontent/blog/post/post_def_big.jpg" alt="<?php echo $post['title']?>" />
					<?php } ?>
				</div>
				<div class="post-content mb-25">
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
			<div class="user-comments-wrapper mb-25">
				<div class="title-2"><?php echo commentNumber(count($commentsPost))?></div>
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
			<h2 class="title-2 m-0 mb-15">Оставить комментарий</h2>
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
						<!--<div class="notification">
							<div class="notification__title notification--error">Комментарий не может быть пустым</div>
						</div> -->
						<textarea class="textarea" name="comment" placeholder="Присоединиться к обсуждению..."></textarea>
						<input class="button mt-10" type="submit" name="addComment" value="Опубликовать" />
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