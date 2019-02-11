	<div class="container pb-120 pt-80 pl-0 pr-0">
		<?php if (isset($_GET['result']) ) {
			include ROOT . "templates/categories/_results.tpl";
		} ?>
		<div class="blog-title mb-40">

			<h1 class="title-general mb-0 mt-0 blog-title--color">Категории блога</h1><a class="button button-edit" href="<?php echo HOST?>blog/category-new">Добавить категорию</a>
		</div>
		<div class="row">
			<div class="col">
				<table class="table table-hover">
					<thead>
						<tr>
							<th class="table-active" scope="col">id</th>
							<th class="table-active" scope="col">Название</th>
							<th class="table-active" scope="col">Редактировать</th>
							<th class="table-active" scope="col">Удалить</th>
						</tr>
					</thead>
					<tbody>
						<?php foreach ($cats as $cat) { ?>
							<tr>
								<th><?php echo $cat['id']?></th>
								<td><?php echo $cat['cat_title']?></td>
								<td>
									<a href="<?php echo HOST?>blog/category-edit?id=<?php echo $cat['id']?>">Редактировать</a>
								</td>
								<td>
									<a href="<?php echo HOST?>blog/categories?id=<?php echo $cat['id']?>">Удалить</a>
								</td>
							</tr>
						<?php } ?>
					</tbody>
				</table>
			</div>
		</div>
	</div>

