<?php if (isset($_COOKIE['cart'])) { ?>
	<?php $itemInCart = array_sum(json_decode($_COOKIE['cart'], true)) ?>
	<?php if ($itemInCart > 0) { ?>
		<div class="cart">
			<a href="<?=HOST?>shop/cart">
				<i class="fas fa-shopping-cart"></i>
				<?=itemInCart($itemInCart)?>
			</a>
		</div>
	<?php } ?>
<?php } ?>