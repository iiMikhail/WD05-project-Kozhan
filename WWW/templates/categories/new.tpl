	<div class="container pl-0 pr-0 pt-80 pb-120">
		<div class="row m-0">
			<div class="col-10 offset-1 p-0">
				<div class="add-post-content">
					<h1 class="title-general mt-0 mb-0">Добавить категорию</h1>
					<form action="<?php echo HOST?>blog/category-new" method="POST">
						
						<div class="add-post-content__name mt-40">
							<?php include ROOT . "templates/_errors.tpl" ?>
							<input 	class="input" 
									name="cattitle" 
									id="add-post-name" 
									type="text" 
									placeholder="Введите категорию" 
									value="<?=@$_POST['cattitle']?>" />
						</div>

						<div class="add-post-content__submit mt-30">
							<input class="button button-save mr-20" type="submit" name="add-cat" value="Сохранить" />
							<a class="button" href="<?HOST?>blog/categories">Отмена</a>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	