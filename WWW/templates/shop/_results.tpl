<?php if ($_GET['result'] == 'itemCreated') { ?>
	<div class="notification">
		<div 	id="notify-created" 
				class="notification__title notification--success mb-20 green">Товар добавлен
		</div>
	</div>
<?php } elseif ($_GET['result'] == 'itemUpdate') { ?>
	<div class="notification">
		<div 	id="notify-updaded" 
				class="notification__title notification--success mb-20 green">Товар обновлен
		</div>
	</div> 
<?php } elseif ($_GET['result'] == 'itemDeleted') { ?>
	<div class="notification">
		<div 	id="notify-updaded" 
				class="notification__title notification--success mb-20 green">Товар удален
		</div>
	</div>
<?php } ?>