<?php include ROOT . "templates/errors.tpl" ?>
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
						<h1 class="autorization-content__title mb-40">Введите новый пароль</h1>
						<form method="POST" class="autorization-content-form" action="set-new-password">
							<?php foreach ($success as $item) {
								if (count($item) == 1) { ?>
								<!-- Однострочная ошибка -->
								<div class="notification">
									<div class="notification__title notification--error notification--success mb-20"><!-- <?=$item['title']?> -->
									</div>
								</div>
								<?php }
							} ?>
							<input class="input mb-25" name="resetpassword" id="input-email" type="password" placeholder="Введите новый пароль" />
							<div class="autorization-content-form-button">
								<input type="hidden" name="resetemail" value="<?=$_GET['email']?>">
								<input type="hidden" name="onetimecode" value="<?=$_GET['code']?>">
								<input class="button button-enter" type="submit" name="enter-button" value="Сохранить пароль" />
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
						<p class="mb-15">© Михаил Кожан</p>
						<p>Создано с <i class="mr-0 fas fa-heart"></i> в <a class="strong" href="http://glc.ru" target="_blank">DLC</a> в 2019 году</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>