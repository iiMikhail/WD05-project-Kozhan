		<div class="sticky-footer-content">
			<div class="container contacts-edit pl-0 pr-0 pt-80 pb-120">
				<div class="contacts-edit__title">
					<h1 class="title-general mt-0 mb-0">Редактировать данные</h1>
				</div>
				<form method="POST" action="<?php echo HOST?>contacts-edit" class="contacts-edit__form mt-40">
					<div class="row">
						<div class="col-md-3 mb-30">
							<label class="label" for="contactName">Имя</label>
							<input class="input mb-30" name="first-name" id="contactName" type="text" placeholder="Введите имя" value="<?php echo $contacts['first_name']?>" />

							<label class="label" for="contactEmail">Email</label>
							<input class="input mb-30" name="email" id="contactEmail" type="text" placeholder="Введите email" value="<?php echo $contacts['email']?>" />

							<label class="label" for="contactVK">Вконтакте</label>
							<input class="input mb-30" name="vkontakte" id="contactVK" type="url" placeholder="Введите ссылку на профиль" value="<?php echo $contacts['vkontakte']?>" />

							<label class="label" for="contactPhone">Телефон</label>
							<input class="input" name="phone" id="contactPhone" type="tel" placeholder="Введите телефон" value="<?php echo $contacts['phone']?>" />
						</div>

						<div class="col-md-3">
							<label class="label" for="contactLastName">Фамилия</label>
							<input class="input mb-30" name="last-name" id="contactLastName" type="text" placeholder="Введите фамилию" value="<?php echo $contacts['last_name']?>" />

							<label class="label" for="contactSkype">Skype</label>
							<input class="input mb-30" name="skype" id="contactSkype" type="text" placeholder="Введите skype" value="<?php echo $contacts['skype']?>" />

							<label class="label" for="contactFacebook">Facebook</label>
							<input class="input mb-30" name="facebook" id="contactFacebook" type="url" placeholder="Введите ссылку на профиль" value="<?php echo $contacts['facebook']?>" />

							<label class="label" for="contactAddress">Адрес</label>
							<input class="input" name="address" id="contactAddress" type="text" placeholder="Введите адрес" value="<?php echo $contacts['address']?>" />
						</div>

						<div class="col-md-3 position-field">
							<div class="input-box">
								<label class="label" for="contactGithub">Github</label>
								<input class="input" name="github" id="contactGithub" type="url" placeholder="Введите ссылку на профиль" value="<?php echo $contacts['github']?>" />
							</div>
						</div>

						<div class="col-md-3 position-field">
							<div class="input-box">
								<label class="label" for="contactTW">Twitter</label>
								<input class="input" name="twitter" id="contactTW" type="url" placeholder="Введите ссылку на профиль" value="<?php echo $contacts['twitter']?>" />
							</div>
						</div>

						<div class="col-mb-4">
							<input class="button button-save ml-15 mr-20" type="submit" name="savebutton" value="Сохранить" />
							<a class="button" href="<php echo HOST>contacts">Отмена</a>
						</div>
					</div>
				</form>
			</div>
		</div>