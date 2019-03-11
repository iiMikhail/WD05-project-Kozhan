 <script src="<?php echo HOST?>libs/ckeditor/ckeditor.js"></script>
 		<div class="sticky-footer-content">
			<div class="container add-works pl-0 pr-0 pt-80 pb-120">
				<div class="row ml-0 mr-0">
					<div class="col-10 offset-1 pl-0 pr-0">
						<div class="add-works__title">
							<h1 class="title-general mt-0 mb-0">Добавить работу</h1>
						</div> 
						<form 
							method="POST" 
							enctype="multipart/form-data" 
							class="add-works__form mt-40" 
							action="<?php echo HOST?>works/add-work"
						>
							<div class="add-works__form-item mb-30">
								<label class="label" for="field-work-name">Название</label>
								<input class="input" name="workName" id="field-work-name" type="text" placeholder="Введите название работы" />
							</div>
							<div class="add-works__form-item mb-30">
								<label class="label" for="field-work-meta">Мета описание</label>
								<input class="input" name="meta" id="field-work-meta" type="text" placeholder="Введите название работы" />
							</div>

							<div class="add-post-content__name mb-30">
								<label class="label" for="add-post-name">
									Выберите категорию
								</label>
								<select name="postCat" class="input form-control form-control-lg">
								<option selected="selected"></option>
								<?php foreach ($categories as $category) { ?>
									<option><?php echo $category['name']?></option>
								<?php } ?>
								</select>
								<input class="hidden" name="catid" type="text" value="<?php echo $category['id']?>">
							</div>

							<div class="add-works__form-item mb-30">
								<section class="upload-file">
									<h6 class="upload-file__title">Изображение</h6>
									<p class="upload-file__description">изображение и параметры 945px и больше, высота от 400px</p><input class="input-file" type="file" name="file" id="upload-file" data-multiple-caption="{count}" /><label class="input-file-mark" for="upload-file">Выбрать файл</label><span>Файл не выбран</span>
								</section>
							</div>

							<div class="add-works__form-item mb-30">
								<label class="label" for="description-work">Содержание</label>
								<textarea id="editor1" class="textarea" name="workDescription" id="description-work" placeholder="Введите описание"></textarea>
							</div>

							<div class="add-works__form-item mb-30">
								<label class="label" for="result-work">Результат</label>
								<textarea id="editor2" class="textarea" name="workResult" id="result-work" placeholder="Введите описание"></textarea>
							</div>

							<div class="add-works__form-item mb-30">
								<label class="label" for="tech-for-work">Технологии</label>
								<textarea id="editor3" class="textarea" name="workTechnology" id="tech-for-work" placeholder="Введите описание"></textarea>
							</div>

							<div class="row ml-0 mr-0">
								<div class="col-3 no-paddings mr-30">
									<label class="label" for="field-link-project">Ссылка на проект</label>
									<input class="input" name="linkProject" id="field-link-project" type="url" placeholder="Введите ссылку" />
								</div>

								<div class="col-3 no-paddings">
									<label class="label" for="link-on-github">Ссылка на GitHub</label>
									<input class="input" name="linkGithub" id="link-on-github" type="url" placeholder="Введите ссылку" />
								</div>
							</div>

							<div class="row ml-0 mr-0 mt-30">
								<input class="button button-save mr-20" type="submit" name="save-button-work" value="Сохранить" />
								<a class="button" href="<?php echo HOST?>works">Отмена</a> 
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
		CKEDITOR.replace('editor2', {
			customConfig: '<?php echo HOST?>templates/style/js/cKeditorConfig.js'
		});
		CKEDITOR.replace('editor3', {
			customConfig: '<?php echo HOST?>templates/style/js/cKeditorConfig.js'
		});
	});
</script> 