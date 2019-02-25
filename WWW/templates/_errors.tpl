<?php foreach ($errors as $error) {
	if (count($error) > 0) { ?>
	<!-- Однострочная ошибка -->
	<div class="notification">
		<div id="nomail" class="notification__title notification--error mb-20"><?=$error['title']?>
		</div>
	</div>
	<?php }
} ?>	