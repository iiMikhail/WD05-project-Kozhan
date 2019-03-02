 <script src="<?php echo HOST?>libs/ckeditor/ckeditor.js"></script> 
 	<div class="container pl-0 pr-0 pt-80 pb-120"> 
		<div class="row m-0">
			<div class="col-10 offset-1 p-0">
				<div class="add-post-content">
					<h1 class="title-general mt-0 mb-0">Редактировать пост</h1>
					<form enctype="multipart/form-data" action="<?php echo HOST?>blog/post-edit?id=<?php echo $post['id']?>" method="POST">
						<div class="add-post-content__name mt-40">
							<?php include ROOT . "templates/_errors.tpl" ?>
							<label class="label" for="add-post-name">
								Поле для ввода
							</label>
							<input class="input" name="post-name" id="add-post-name" type="text" placeholder="Введите имя" value="<?php echo $post['title']?>" />
						</div>

						<div class="add-post-content__name mt-40">
							<label class="label" for="add-post-name">
								Поле для ввода
							</label>
							<select name="postCat" class="input form-control form-control-lg">
								<?php foreach($categories as $category) { ?>
									<option selected="selected" value="<?=$category['id']?>">
										<?=$category['cat_title']?>
									</option>
								<?php } ?>
							</select>
						</div>
						<input class="hidden" name="catId" type="text" value="<?php echo $category['id']?>">
						<div class="add-post-content__img mt-30">
							<section class="upload-file">
								<h6 class="upload-file__title">Изображение</h6>
								<p class="upload-file__description">Изображение jpg или png, рекомендуемая ширина 945px и больше, высота от 400px и более, вес до 2Мб.
								</p>
								<div class="upload-file-input-file">
									<input class="input-file" type="file" name="upload-file" id="upload-file-1">
									<label class="input-file-mark" for="upload-file-1">
										Выбрать файл
									</label>
									<span class="file__inner-caption">Файл не выбран</span>
								</div>
								<div class="file__inner-caption upload-file-image-box">
									<?php if ($post['postimgsmall'] != '') { ?>
										<img src="<?php echo HOST?>usercontent/blog/post/small/<?php echo $post['postimgsmall']?>" alt="<?php echo $post['title']?>" /><a class="button button-delete button--small-delete upload-file-image-box--button-position" href="#">Удалить</a>
									<?php } ?>
								</div>
							</section>
						</div>

						<div class="add-post-content__main mt-30">
							<label class="label" for="add-post-city">
							</label>
							<textarea id="editor1" class="textarea" name="post-desc" id="add-post-city" placeholder="Введите пост"><?php echo $post['text']?></textarea>
						</div>
						
						<div class="add-post-content__submit mt-30">
							<input class="button button-save mr-20" type="submit" name="add-post" value="Сохранить" />
							<a class="button" href="<?HOST?>blog">Отмена</a>
							<!-- <input class="button" type="submit" name="cancel-add-post" value="Отмена" /> -->
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