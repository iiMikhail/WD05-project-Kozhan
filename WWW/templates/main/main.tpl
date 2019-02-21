<?php  function indikator($post){
	$offset = 351.85*(1-intval($post)/100) . "px";
	echo $offset;
} ?> 
	<div class="section-about-info mt-80 mb-65">
		<div class="container">
			<div class="row about-info">
				<div class="col-md-3">
					<div class="avatar"><img src="<?php echo HOST?>usercontent/about/photo/<?php echo $about['photo']?>" alt="alt text avatar" /></div>
				</div>
				<div class="col-md-9">
					<div class="about-info">
						<p class="mb-15 about-info__name"><?php echo $about['name']?></p>
						<p class="mb-0"><?php echo $about['text']?></p>
						<div class="about-me__button"><a class="button" href="<?=HOST?>about">Подробнее</a></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="line"></div>
	<div class="new-works container section">
		<div class="row">
			<div class="col-md-12">
				<h2 class="title-2 title-1--weight mb-30"> Новые 
					<a class="title-1--underline" href="<?=HOST?>works">работы</a></h2>
			</div>
		</div>
		<div class="container pl-0 pr-0">
			<div class="row ml-0 mr-0">
			<?php foreach ($work as $work) { ?>
				<div class="col-md-4 pl-0 pr-0">
					<div class="card-box card-box--height">
						<div class="card-box__img-portfolio">
							<img src="<?php echo HOST?>usercontent/works/small/<?php echo $work['workimgsmall']?>" /></div>
						<div class="card-box__title"><?php echo $work['name']?></div><a class="button card-box--button" href="<?php echo HOST?>works/separate-work?id=<?php echo $work['id']?>">Смотреть кейс</a>
					</div>
				</div>
			<?php } ?>
			</div>
		</div>
	</div>
	<div class="blog-entries container">
		<div class="row">
			<div class="col-md-12">
				<h2 class="title-2 title-1--weight"> Новые записи в <a class="title-1--underline" href="<?=HOST?>blog">блоге</a></h2>
			</div>
		</div>
		<div class="container pb-80 pl-0 pr-0">
			<div class="row ml-0 mr-0">
				<?php foreach ($posts as $post) {	
					include ROOT . "templates/blog/blog-post.tpl";
				} ?>
			</div>
		</div>
	</div>