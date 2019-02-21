<div class="sticky-footer-content"> 
	<div class="container content--padding">
		<div class="row">
			<div class="col-10 offset-1">
				<h1 class="title-general contacts-messages-title--color mt-0 mb-0">Сообщения от посетителей</h1>
				<?php foreach ($messages as $message) { ?>
					<div class="user-from-messages mt-30 mb-20">
						<div class="message-user"><a class="button button-delete button--small-delete float-right" 
							href="<?php echo HOST?>messages?type=del&id=<?php echo $message['id']?>">Удалить</a>
							<div class="message-user__date mb-20"><?php echo $message['dateTime']?></div>
							<div class="message-user-info"><span class="message-user-info__name"><?php echo $message['name_user']?></span><a class="message-user-info__email ml-20" href="#"><?php echo $message['email']?></a></div>
							<p class="message-user__text"><?php echo $message['message']?></p><span class="message-info-files strong">Прикрепленные файлы:<a class="message-user-info-files__link ml-20" href="<?php echo HOST?>usercontent/upload-files/<?php echo $message['file']?>"><?php echo $message['original_file']?></a></span>
						</div>
					</div>					
				<?php } ?>

			</div>
		</div>
	</div>
</div>