<div class="container pt-80 pb-120">
	<div class="row">
		<div class="col-10 offset-1"> 
			<div class="post"> 
				<?php if(@$_SESSION['logged-user']['role'] == 'admin') { ?>
				<div class="flexpos">
					<div></div>
					<div class="mb-50">
						<a 	class="button button-edit mr-10" 
							href="<?=HOST?>shop/item-edit?id=<?=$item['id']?>">Редактировать</a>
						<a 	class="button button-delete" 
							href="<?=HOST?>shop/item?type=del&id=<?=$item['id']?>">Удалить</a>
					</div>
				</div>
				<?php } ?>
				<div class="flexpos">
					<div class="col-md-5">
						<div class="post-img flex--center">
							<?php if ($item['itemimg'] != ""){ ?>
								<img 	src="<?=HOST?>usercontent/shop/img-item/<?=$item['itemimg']?>" 
										alt="<?=$item['name']?>" />
							<?php } else { ?>
								<img 	src="<?=HOST?>usercontent/blog/post/post_def_big.jpg" 
										alt="<?=$item['name']?>" />
							<?php } ?>
						</div>
					</div>
					<div class="col ml-35">
						<div class="flexpos">
							<h1 class="title-general mb-0 mt-0"><?=$item['name']?></h1>
							<div></div> 
						</div>
						<div class="price-holder">
							<?php if ($item['price_old']) { ?>
								<div class="price-old">
									<?=price_format($item['price_old'])?>
								</div>
							<?php } ?>
							<div class="price">
								<?=price_format($item['price'])?><span> рублей</span>
							</div>
						</div>
						<div class="post-content mb-50">
							<?=$item['description']?>
						</div>
						<form id="addToCart" method="POST" action="<?=HOST.'shop/addtocart'?>">
							<input 	type="hidden" 
									name="itemId" 
									id="itemId" 
									value="<?=$item['id']?>">
							<input 	type="submit" 
									name="addToCart" 
									class="button mb-15" 
									value="В корзину">
						</form> 
					</div>
				</div>
			</div>
		</div>
	</div>
</div>