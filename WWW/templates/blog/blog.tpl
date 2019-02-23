	<div class="container pb-80 pt-80 pl-0 pr-0">
		<div class="blog-title mb-40">
			<h1 class="title-general mb-0 mt-0 blog-title--color">Блог веб-разработчика</h1>
			<?php if(@$_SESSION['logged-user']['role'] == 'admin') { ?>
			<a class="button button-edit" href="<?php echo HOST?>blog/post-new">Добавить пост</a> <?php } ?>
		</div>
		<div class="row ml-0 mr-0"> 
			<?php foreach ($posts as $post) {	
				include "blog-post.tpl";
			} ?>
		</div>
		<?php if (@$_GET['page']): ?>
			<div class="row">
				<div class="pagination">
					<?php for ($page = 1; $page <= $pagination['number_of_page']; $page++) {
						if ($pagination['page_number'] == $page) {
						echo '<a href="' . HOST . 'blog?page=' . $page . '" class="pagination__item  pagination__item--active">' . $page . '</a>';
	 					} else {
	 						echo '<a href="' . HOST . 'blog?page=' . $page . '" class="pagination__item">' . $page . '</a>';
						} 
					} ?>
				</div>
			</div>
		<?php endif ?>
		
	</div>