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
						<h1 class="autorization-content__title mb-40">Вход на сайт</h1>
						<form method="POST" class="autorization-content-form" action="login">
							<?php include ROOT . "templates/_errors.tpl" ?>
		<!-- 					<div id="nomail" class="notify notify--error mb-20">Введите email</div>
							<div id="fmail" class="notify notify--error mb-20">Неверный формат email</div>
							<div id="nopas" class="notify notify--error mb-20">Введите пароль</div> -->
							<input 	class="input mb-10 mt-20" 
									name="email" id="input-email" 
									type="email" 
									placeholder="E-mail" 
									value="<?=@$_POST['email']?>" /> 
							<input 	class="input mb-25" 
									name="password" 
									id="input-password" 
									type="password" 
									placeholder="Пароль" 
									value="<?=@$_POST['password']?>" />
							<div class="autorization-content-form-help mb-30">
								<label class="form__label-checkbox">
									<input 	class="form__input-checkbox" 
											type="checkbox" 
											checked="checked" />
										<span class="form__checkbox"> 
										</span>Запомнить меня </label>
										<a class="link" href="lost-password">Забыл пароль</a></div>
							<div class="autorization-content-form-button">
								<input class="button button-enter" type="submit" name="enter-button" value="Войти" />
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
						<p>Создано  в 2019 году. Все права защищены</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="<?=HOST?>libs/jquery/jquery.min.js"></script>
	<script src="<?=HOST?>libs/js/main.js"></script>
	<script defer="defer"
			src="https://use.fontawesome.com/releases/v5.0.6/js/all.js">
	</script>
</body>

</html>