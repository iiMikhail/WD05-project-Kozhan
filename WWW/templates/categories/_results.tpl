<?php if ($_GET['result'] == 'cat-created')  {?>
	<div class="notification">
		<div id="notify-created" class="notification__title notification--success mb-20 green">Категория добавлена
		</div>
	</div>
<?php } elseif ($_GET['result'] == 'cat-updaded')  {?>
	<div class="notification">
		<div id="notify-updaded" class="notification__title notification--success mb-20 green">Категория обновлена
		</div>
	</div>
<?php } elseif ($_GET['result'] == 'message-sent')  {?>
	<div class="notification">
		<div id="notify-updaded" class="notification__title notification--success mb-20 green">Сообщение отправлено</div>
	</div>
<?php } ?>