<body class="content-page">
	<div class="container pb-120 pt-80 pl-0 pr-0">
		<div class="row">
			<div class="col-10 offset-1">
				<h1 class="title-general mt-0 mb-0">Редактировать профиль</h1>
				<form enctype="multipart/form-data" 
				class="mt-35" action="edit-profile" method="POST">
				<?php include ROOT . "templates/_errors.tpl" ?>
					<div class="user-edit-wrapper">
						<div class="user-edit-name">
							<label class="label" for="userEditName">Имя</label>
							<input class="input" name="first-name" id="userEditName" type="text" placeholder="Введите имя" value="<?=@$userInfo->firstname?>" />
						</div>
						<div class="user-edit-lastname mt-30">
							<label class="label" for="userEditLastname">Фамилия</label>
							<input class="input" name="last-name" id="userEditLastname" type="text" placeholder="Введите фамилию" value="<?=@$userInfo->lastname?>"/>
						</div>
						<div class="user-edit-email mt-30">
							<label class="label" for="userEditEmail">Email</label>
							<input class="input" name="email" id="userEditEmail" type="email" placeholder="Введите email" value="<?=@$userInfo->email?>"/>
						</div>
					</div>
					<div class="user-edit-foto mt-30">
						<section class="upload-file">
							<h6 class="upload-file__title">Фотография</h6>
							<p class="upload-file__description">Изображение jpg или png, рекомендуемый размер 100x100 пикселей, и весом до 2Мб.</p>
							<input class="input-file" type="file" name="avatar" id="upload-file" data-multiple-caption="{count}" />
							<label class="input-file-mark" for="upload-file">Выбрать файл</label><span>Файл не выбран</span>
						</section>
					</div>
					<div class="user-edit-wrapper mt-30">
						<div class="user-edit-land">
							<label class="label" for="userEditLand">Страна</label>
							<input class="input" name="country" id="userEditLand" type="text" placeholder="Введите страну" value="<?=@$userInfo->country?>"/>
						</div>
						<div class="user-edit-city mt-30">
							<label class="label" for="userEditCity">Город</label>
							<input class="input" name="city" id="userEditCity" type="text" placeholder="Введите город" value="<?=@$userInfo->city?>"/>
						</div>
						<div class="user-edit-buttons mt-30">
							<input class="button button-save" type="submit" name="save-profile" value="Сохранить" />
							<a class="button" href="<?=HOST?>profile">Отмена</a>
							<!-- <input class="button" type="submit" name="cancel-edit" value="Отмена" /> -->
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>