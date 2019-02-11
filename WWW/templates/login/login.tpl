

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

<?php foreach ($errors as $error) {
	if (count($error) == 1) { ?>
	<!-- Однострочная ошибка -->
	<div class="notification">
		<div id="nomail" class="notification__title notification--error mb-20"><?=$error['title']?>
		</div>
	</div>
	<?php }
} ?>							
							<input class="input mb-10 mt-20" name="email" id="input-email" type="email" placeholder="E-mail" />
							<input class="input mb-25" name="password" id="input-password" type="password" placeholder="Пароль" />
							<div class="autorization-content-form-help mb-30"><label class="form__label-checkbox"><input class="form__input-checkbox" type="checkbox" checked="checked" /><span class="form__checkbox"> </span>Запомнить меня </label><a class="link" href="lost-password">Забыл пароль</a></div>
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
						<p class="mb-15">© Юрий Ключевский</p>
						<p>Создано с <i class="mr-0 fas fa-heart"></i> в <a class="strong" href="http://webcademy.ru" target="_blank">WebCademy.ru</a> в 2018 году</p>
					</div>
				</div>
			</div>
		</div>
	</div><!-- build:jsLibs js/libs.js -->
	<script src="./libs/jquery/jquery.min.js"></script><!-- endbuild -->
	<!-- build:jsVendor js/vendor.js -->
	<script src="./libs/jquery-custom-scrollbar/jquery.custom-scrollbar.js"></script><!-- endbuild -->
	<!-- build:jsMain js/main.js -->
	<script src="./js/main.js"></script>
	<script src="./js/input-file.js"></script><!-- endbuild -->
	<script async="async" defer="defer" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAIr67yxxPmnF-xb4JVokCVGgLbPtuqxiA&amp;callback=initMap"></script>
	<script defer="defer" src="https://use.fontawesome.com/releases/v5.0.6/js/all.js"></script>
</body>

</html>