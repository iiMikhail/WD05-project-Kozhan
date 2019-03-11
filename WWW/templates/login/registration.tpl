<!-- Yandex.Metrika counter -->
<script type="text/javascript" >
   (function(m,e,t,r,i,k,a){m[i]=m[i]||function(){(m[i].a=m[i].a||[]).push(arguments)};
   m[i].l=1*new Date();k=e.createElement(t),a=e.getElementsByTagName(t)[0],k.async=1,k.src=r,a.parentNode.insertBefore(k,a)})
   (window, document, "script", "https://mc.yandex.ru/metrika/tag.js", "ym");

   ym(52709323, "init", {
        clickmap:true,
        trackLinks:true,
        accurateTrackBounce:true,
        webvisor:true
   });
</script>
<noscript><div><img src="https://mc.yandex.ru/watch/52709323" style="position:absolute; left:-9999px;" alt="" /></div></noscript>
<!-- /Yandex.Metrika counter -->

<body class="registration">
	<div class="autorization autorization--vertical-position">
		<div class="autorization-head">
			<div class="autorization-head-logo"><span class="mr-20"><i class="far fa-paper-plane mr-0"></i></span><span>DD-Life</span></div>
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
							<div style="display: none" id="fmail" class="notification__title notification--error notification--with-description">Неверный формат email</div>
							<input class="input mb-10 mt-20" name="email" id="input-reg-email" type="email" placeholder="E-mail" />
							<input class="input mb-30" name="password" id="input-reg-password" type="password" placeholder="Пароль" />
							<div class="autorization-content-form-button">
								<input id="buttonreg" class="button button-enter" type="submit" name="enter-button" value="Регистрация" />
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
						<p>Создано в 2019 году. Все права защищены</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="<?=HOST?>libs/jquery/jquery.min.js"></script>
	<script src="<?=HOST?>libs/js/main.js"></script>
	<script src="<?=HOST?>templates/style/js/check-registration.js"></script>
	<script defer="defer" 
			src="https://use.fontawesome.com/releases/v5.0.6/js/all.js">
	</script>
</body>
</html>