<body class="login-page">
	<div class="autorization autorization--vertical-position">
		<div class="autorization-head">
			<div class="autorization-head-logo"><span class="mr-20"><i class="far fa-paper-plane mr-0"></i></span><span>супер сайт</span></div>
			<div class="autorization-head-link"><a class="link" href="registration">Регистрация</a></div>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-12 flex--center">
					<div class="autorization-content">
						<h1 class="autorization-content__title mb-40">Забыл пароль</h1>
						<form method="POST" class="autorization-content-form" action="lost-password">
							<?php include ROOT . "templates/errors.tpl" ?>
							<?php foreach ($success as $item) {
								if (count($item) == 1) { ?>
								<!-- Однострочная ошибка -->
								<div class="notification">
									<div class="notification__title notification--error notification--success mb-20"><!-- <?=$item['title']?> -->
									</div>
								</div>
								<?php }
							} ?>							
							<input class="input mb-25" name="email" id="input-email" type="email" placeholder="E-mail" />
							<div class="autorization-content-form-button">
								<input class="button button-enter" type="submit" name="enter-button" value="Восстановить пароль" />
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="autorization-footer pb-30">
						<p class="mb-15">© Юрий Ключевский</p>
						<p>Создано с <i class="mr-0 fas fa-heart"></i> в <a class="strong" href="http://webcademy.ru" target="_blank">WebCademy.ru</a> в 2018 году</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>