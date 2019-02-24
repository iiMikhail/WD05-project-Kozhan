 	<div class="container pb-80 pt-80 pl-0 pr-0">
		<div class="blog-title mb-40">
			<h1 class="title-general mb-0 mt-0 blog-title--color">Магазин</h1>
			<?php if(@$_SESSION['logged-user']['role'] == 'admin') { ?>
			<a class="button button-edit" href="<?php echo HOST?>shop/new">Добавить товар</a> <?php } ?> 
		</div>
		<?php if (isset($_GET['result']) ) {
			include ROOT . "templates/shop/_results.tpl";
		} ?>
		<div class="row ml-0 mr-0"> 
			<?php foreach ($goods as $good) { ?>
				<div class="col-4 pl-0 pr-0 mb-30">
					<div class="card-box">
						<div class="card-box__img-blog flex--center">
							<?php if ($good->itemimgsmall != "") { ?>
								<img src="<?php echo HOST?>usercontent/shop/img-item/small/<?php echo $good->itemimgsmall?>" alt="<?=$good['name']?>"/>
							<?php } else { ?>
								<img src="<?php echo HOST?>usercontent/blog/post/small/post_def_small.jpg" alt="<?=$good['name']?>"/>
							<?php } ?>
						</div> 
						<div class="card-box__title">
							<?=mbCutStr($good['name'], 40)?>
						</div>
						<div class="header__wrapper mb-0 cart-price-holder">
							<div class="card__price">
								<?=price_format($good['price'])?><span> рублей</span>
							</div>
							<a class="button card-box--button" href="<?=HOST?>shop/item?id=<?=$good['id']?>">Подробнее</a>
						</div>
					</div>
				</div>
			<?php } ?>
		</div>
		<div class="row">
			<div class="pagination">
				<?php for ($page = 1; $page <= $pagination['number_of_page']; $page++) {
					if ($pagination['page_number'] == $page) {
					echo '<a href="' . HOST . 'shop?page=' . $page . '" class="pagination__item  pagination__item--active">' . $page . '</a>';
	 				} else {
	 					echo '<a href="' . HOST . 'shop?page=' . $page . '" class="pagination__item">' . $page . '</a>';
					} 
				} ?>
			</div>
		</div>
	</div>