	<div class="container pl-0 pr-0 pt-80 pb-120">
		<div class="row m-0">
			<div class="col-10 offset-1 p-0">
				<div class="add-post-content">
					<h1 class="title-general mt-0 mb-0">Редактировать категорию</h1>
					<form action="<?php echo HOST?>blog/category-edit?id=<?php echo $category->id?>" method="POST">

						<div class="add-post-content__name mt-40">
							<input class="input" name="cattitle" id="add-post-name" type="text" placeholder="<?php echo $category->cat_title?>" />
						</div>

						<div class="add-post-content__submit mt-30">
							<input class="button button-save mr-20" type="submit" name="add-cat" value="Сохранить" />
							<a class="button" href="<?php echo HOST?>blog/categories">Отмена</a>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	