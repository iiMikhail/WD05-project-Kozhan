	<div class="container mb-120 pt-80 pl-0 pr-0">
		<div class="works-title">
			<div class="works-title-left">
				<h1 class="works-title-text"><span class="works-title-text--bold">Работы</span>, которые сделал я и моя команда</h1>
			</div>
			<div class="works-title-right"><a class="button button-edit" href="<?php echo HOST?>works/add-work">Добавить работу</a></div>
		</div>
		<div class="row ml-0 mr-0">
		<?php foreach ($work as $work) { ?>
			<div class="mt-50 col-md-4 pl-0 pr-0">
				<div class="card-box card-box--height">
					<div class="card-box__img-portfolio">
						<img src="<?php echo HOST?>usercontent/works/small/<?php echo $work['workimgsmall']?>" /></div>
					<div class="card-box__title"><?php echo $work['name']?></div><a class="button card-box--button" href="<?php echo HOST?>works/separate-work?id=<?php echo $work['id']?>">Смотреть кейс</a>
				</div>
			</div>
		<?php } ?>
		</div>
	</div>