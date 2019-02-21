 <script src="<?php echo HOST?>libs/ckeditor/ckeditor.js"></script> 
 <?php include ROOT . "templates/errors.tpl" ?>
	 <div class="about-me-edit">
		<div class="container">
			<div class="row">
				<div class="col-md-10 offset-md-1">
					<h1 class="title-general edit-title--color mt-0 mb-35">Редактировать - Обо Мне</h1> 
					<form enctype="multipart/form-data" method="POST" action="<?php echo HOST?>about-edit" class="about-me-edit-info-form" id="about-me-edit-info">
						<div class="edit-name">
							<label class="label" for="editFullName">Имя, фамилия</label>
							<input class="input" name="fullName" id="editFullName" type="text" placeholder="Введите имя и фамилию" value="<?php echo $aboutAutor['name']?>" />
						</div>

						<div class="upload-photo mt-30 mb-35">
							<section class="upload-file">
								<h6 class="upload-file__title">Фотография</h6>
								<p class="upload-file__description">
									Изображение jpg или png, рекомендуемый размер 205x205 пикселей, и весом до 2Мб.
								</p>
								<input class="input-file" type="file" name="upload-file" id="upload-file"/>
								<label class="input-file-mark" for="upload-file">
									Выбрать файл
								</label>
								<span>Файл не выбран</span>
							</section>
							<div class="upload-photo__result">
								<img src="<?php echo HOST?>usercontent/about/photo/<?php echo $aboutAutor['photo']?>" alt="user-photo" />
							</div>
						</div>

						<div class="edit-information">
							<label class="label" for="about-me-edit-info">
								Информация на главной
							</label>
							<textarea id="editor1" class="textarea edit-information__textarea" name="about-me-info" id="about-me-edit-info" placeholder="Напишите информацию о себе"><?php echo $aboutAutor['text']?></textarea>

						</div>
						<div class="about-me-edit-buttons">
							<input class="button button-save mr-20" type="submit" name="save-button" value="Сохранить" />
							<a class="button" href="<?php echo HOST?>about-edit">Отмена</a>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<script>
	document.addEventListener('DOMContentLoaded', function(){ // Аналог $(document).ready(function(){
		// CKEDITOR.replace();
		CKEDITOR.replace('editor1', {
			customConfig: '<?php echo HOST?>templates/style/js/cKeditorConfig.js'
		});
	});
</script>