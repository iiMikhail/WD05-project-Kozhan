<body class="content-page">
	<div class="sticky-footer-wrapper">
		<div class="sticky-footer-content">
			<div class="container content--padding">
				<div class="row">
					<div class="col-10 offset-1">
						<div class="user-profile-block">
							<h1 class="title-general mt-0 mb-0">Профиль</h1>
							<div class="user-profile__button"><a class="button button-edit" href="edit-profile">Редактировать</a></div>
						</div>
						<div class="user-profile-information mb-35 mt-40">
							<div class="user-profile__avatar">
								<?php if (@$userInfo['avatar'] != ""){ ?>
									<div class="avatar">
									<img src="<?=HOST?>usercontent/avatar/full/<?=@$userInfo->avatar?>" alt="alt text avatar" />
								</div>
								<?php } else { ?>
									<div class="avatar">
										<img src="<?php echo HOST?>usercontent/profile_def.png" alt="alt-avatar" />
									</div>
								<?php } ?>
							</div>
							<div class="user-profile__description"><span>Имя и фамилия</span>
								<p><?=@$userInfo->firstname?> <?=@$userInfo->lastname?></p><span>Email</span>
								<p><?=@$userInfo->email?></p><span>Страна, Город</span>
								<p><?=@$userInfo->country?>, <?=@$userInfo->city?></p>
							</div>
						</div>
						<h2 class="title-2 title-2--color mt-0 mb-25">Комментарии пользователя</h2>
						<div class="user-profile-comments">

							<?php foreach ($commentsPost as $comment) { ?>
								<div class="user-comment">
									<div class="user-comment-profile">
										<a class="mr-20" href="<?php echo HOST?>blog/post?id=<?php echo $comment['id']?>" target="_blank">
										<span class="user-comment__article-title">
											<?php echo $comment['title']?>
										</span></a>
										<span class="user-comment__date">
											<i class="far fa-clock icon--mr"></i>
											<?php echo rus_date("j F Y H:i", strtotime($comment['date_time']))?>
										</span>
										<div class="user-comment__text-profile">
											<p><?php echo $comment['text']?></p>
										</div>
									</div>
								</div>
							<?php } ?>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>