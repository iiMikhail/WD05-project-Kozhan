   <script src="<?php echo HOST?>libs/ckeditor/ckeditor.js"></script> 
 	<div class="container pl-0 pr-0 pt-80 pb-120">
		<div class="row m-0">
			<div class="col-10 offset-1 p-0"> 
				<div class="add-post-content"> 
					<h1 class="title-general mt-0 mb-0">Изменить товар</h1>
					<form 	enctype="multipart/form-data" 
							action="<?=HOST?>shop/item-edit?id=<?=$item['id']?>" 
							method="POST">

						<div class="add-post-content__name mt-40">
							<?php include ROOT . "templates/_errors.tpl" ?>
							<label class="label" for="add-post-name">
								Поле для ввода 
							</label>
							<input class="input" name="item-name" id="add-post-name" type="text" placeholder="Введите название товара" value="<?=$item['name']?>" />
						</div>
						<div class="row add-post-content__img mt-30">
							<div class="col">
								<div class="fieldset">
									<label class="label fieldset__title" for="price">
										Новая цена
									</label>
									<input 	id="add-post-name"
											type="text" 
											class="input" 
											name="price"
											placeholder="Введите цену"
											value="<?=$item['price']?>">
								</div> 
							</div>
							<div class="col">
								<div class="fieldset">
									<label class="label fieldset__title" for="priceOld">
										Старая цена
									</label>
									<input 	id="add-post-name"
											type="text" 
											class="input" 
											name="priceOld"
											placeholder="Введите цену"
											value="<?=$item['price_old']?>">
								</div>
							</div>
						</div>
						<input 	class="hidden" 
								name="catId" 
								type="text">

						<div class="add-post-content__img mt-30">
							<section class="upload-file">
								<h6 class="upload-file__title">
									Изображение
								</h6>
								<p class="upload-file__description">
									изображение и параметры 945px и больше, высота от 400px
								</p>
								<input 	class="input-file" 
										type="file" 
										name="upload-file" 
										id="upload-file"/>

								<label 	class="input-file-mark" 
										for="upload-file">
										Выбрать файл
								</label>
								<span>Файл не выбран</span>
							</section>
						</div>

						<div class="add-post-content__main mt-30">
							<label class="label" for="add-post-city">Содержание</label>
							<textarea id="editor1" class="textarea" name="item-desc" id="add-post-city" placeholder="Введите описание товара"><?=$item['description']?></textarea>
						</div>

						<div class="add-post-content__submit mt-30">
							<input 	class="button button-save mr-20" 
									type="submit" 
									name="add-item" 
									value="Сохранить" />
							<a class="button" href="<?=HOST?>shop/item?id=<?=$_GET['id']?>">Отмена</a>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
<script>
	document.addEventListener('DOMContentLoaded', function(){
		CKEDITOR.replace('editor1', {
			customConfig: '<?php echo HOST?>templates/style/js/cKeditorConfig.js'
		});
	});
</script>