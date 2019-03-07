<div class="container pt-55 pb-80">
	
	<div class="row">   
		<?php if(@$_SESSION['logged-user']['role'] == 'admin') { ?>
		<div class="col-12 clearfix mb-30"><a class="button float-right" href="<?php echo HOST?>messages">Сообщения</a><a class="button button-edit float-right mr-20" href="<?php echo HOST?>contacts-edit">Редактировать</a></div> <?php  } ?> 
		<div class="col-5">
			<h1 class="title-general mb-30">Контакты</h1>
			<div class="row justify-content-between">
				<div class="col-auto">
					<div class="contacts-category mb-55">
						<p>Email</p>
						<p>Skype</p>
						<p>Телефон</p>
						<p>Адрес</p>
						<p>Социальные сети</p>
					</div>
				</div>
				<div class="col-auto">
					<div class="link-box mb-15">
						<div class="link-box-info mb-20">
							<p><a class="link" href="mailto:<?=$contacts['email']?>"><?php echo $contacts['email']?></a></p>
							<p><a class="link" href="#!"><?=$contacts['skype']?></a></p>
						</div>
						<div class="info mb-20">
							<p><?php echo $contacts['phone']?></p>
							<p><?php echo $contacts['address']?></p>
						</div>
						<div class="link-box-info">
							<?php if ($contacts['vkontakte'] != '') { ?>
								<p><a class="link link--bold" href="<?=$contacts['vkontakte']?>">Профиль Вконтакте</a></p>
							<?php } ?>
							<?php if ($contacts['facebook'] != '') { ?>
								<p><a class="link link--bold" href="<?=$contacts['facebook']?>">Профиль Facebook</a></p>
							<?php } ?>
							<?php if ($contacts['twitter'] != '') { ?>
								<p><a class="link link--bold" href="<?=$contacts['twitter']?>">Профиль Twitter</a></p>
							<?php } ?>
						</div>
					</div>
				</div>
			</div>
		</div>  
		<div class="col-4 offset-1">
			<div class="title-general mb-40">Связаться со мной</div>
			<?php if (isset($_GET['result'])) { 
				include ROOT . "templates/categories/_results.tpl";
			} ?>
			<?php include ROOT . "templates/_errors.tpl" ?>
			<form 	enctype="multipart/form-data" 
				  	class="feedback-form" method="POST" 
				  	action="<?php echo HOST?>contacts">
				<input class="input" name="name-user" type="text" placeholder="Введите имя" />
				<input class="input" name="email-user" type="email" placeholder="Email" />
				<textarea class="textarea mb-20" name="user-message" placeholder="Сообщение"></textarea>
				<section class="upload-file">
					<h6 class="upload-file__title">Прикрепить файл</h6>
					<p class="upload-file__description">jpg, png, pdf, doc, весом до 2Мб.</p>
					<input class="input-file" type="file" name="file" id="upload-file"><label class="input-file-mark input-file-mark--rounded" for="upload-file">Выбрать файл</label><span>Файл не выбран</span>
				</section>
				<input class="button button-save mt-20" type="submit" name="save-button" value="Отправить" />
			</form>
		</div>
	</div> 
</div>
<!-- <div class="geolocation" id="map"></div> -->