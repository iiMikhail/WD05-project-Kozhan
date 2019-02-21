	<div class="container pb-80 pt-80 pl-0 pr-0">
		<div class="blog-title mb-40">
			<h1 class="title-general mb-0 mt-0 blog-title--color">Блог веб-разработчика</h1><a class="button button-edit" href="<?php echo HOST?>blog/post-new">Добавить пост</a>
		</div>
		<div class="row ml-0 mr-0">
			
			<?php foreach ($posts as $post) {	
				include "blog-post.tpl";
			} ?>

		</div>
	</div>