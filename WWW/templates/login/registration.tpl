<body class="registration">
	<div class="autorization autorization--vertical-position">
		<div class="autorization-head">
			<div class="autorization-head-logo"><span class="mr-20"><i class="far fa-paper-plane mr-0"></i></span><span>супер сайт</span></div>
			<div class="autorization-head-link"><a class="link" href="login">Вход</a></div>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-12 flex--center">
					<div class="autorization-content">
						<h1 class="autorization-content__title mb-40">Регистрация</h1>
						<form class="autorization-content-form" action="registration" method="POST">
							<?php foreach ($errors as $error) {
								if (count($error) == 1) { ?>
								<!-- Однострочная ошибка -->
								<div class="notification">
									<div id="nomail" class="notification__title notification--error mb-20"><?=$error['title']?>
									</div>
								</div>
								<?php } else if (count($error) == 2) { ?>
								<!-- Ошибка с описанием -->
								<div class="notification">
									<div class="notification__title notification--error notification--with-description">Данный email уже занят</div>
									<div class="notification__description">
										<p>Используйте другой email чтобы создать новый аккаунт.</p>
										<p>Или воспользуйтесь <a href="#!">восстановлением пароля</a>, чтобы войти на сайт.</p>
									</div>
								</div>
								<?php }
							} ?>
							<input class="input mb-10 mt-20" name="email" id="input-reg-email" type="email" placeholder="E-mail" />
							<input class="input mb-30" name="password" id="input-reg-password" type="password" placeholder="Пароль" />
							<div class="autorization-content-form-button">
								<input class="button button-enter" type="submit" name="enter-button" value="Регистрация" />
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
	<!-- build:jsLibs js/libs.js -->
	<script src="./templates/style/libs/jquery/jquery.min.js"></script>
	<!-- build:jsMain js/main.js -->
	<script defer="defer" 
			src="https://use.fontawesome.com/releases/v5.0.6/js/all.js">
	</script>
</body>

</html>