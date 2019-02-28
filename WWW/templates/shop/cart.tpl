 <div class="container mt-70 mb-120">

	<?php if ( count(@$cartGoods) > 0) { ?>
		<div class="title-1">Корзина</div>
		<table class="table cart-table">
			<thead>
				<tr class="table-total">
					<td></td>
					<td>Наименование</td>
					<td>Количество</td>
					<td width="200">Стоимость за ед.</td>
					<td width="200">Стоимость всего</td>
					<td></td>
				</tr>
			</thead>
			<tfoot>
				<tr class="table-total">
					<td></td>
					<td></td>
					<td><?=$cartGoodsCount?> шт.</td>
					<td></td>
					<td><?=price_format($cartGoodsTotalPrice)?> руб.</td>
					<td></td>
				</tr>
			</tfoot>
			<tbody>
				<?php foreach ($cartGoods as $item) { ?>
					<tr>
						<td>
							<?php if ( $item['itemimgsmall'] != "") { ?>
							<img class="cart-img-preview" src="<?=HOST?>usercontent/shop/img-item/small/<?=$item['itemimgsmall']?>" alt="<?=$item['name']?>" />
							<?php } else { ?>
							<img class="cart-img-preview" src="<?=HOST?>usercontent/blog_def.jpg" alt="<?=$item['name']?>" />
							<?php } ?>
						</td>
						<td>
							<a href="<?=HOST . 'shop/item?id=' . $item['id']?>">
								<?=$item['name']?>
							</a>
						</td>
						<td>
							<?php echo json_decode($_COOKIE['cart'], true)[ $item['id'] ]; ?>
						</td>
						<td>
							<?=$item['price']?> рублей
						</td>
						<td width="200">
							<?php echo price_format(json_decode($_COOKIE['cart'], true)[$item['id'] ] * $item['price']); ?> рублей
						</td>
						<td>
							<form method="POST" action="<?=HOST.'shop/removefromcart'?>">
								<input type="hidden" name="itemId" id="itemId" value="<?=$item['id']?>">
								<button class="delete-from-cart" type="submit" name="removeFromCart">
									<i class="fas fa-times"></i>
								</button>
							</form>
						</td>
					</tr>
				<?php } ?>
			</tbody>
		</table>
	<?php } else { ?>
		<div class="highlight">
			<div class="title-2">Корзина пуста</div>
		</div>

	<?php } ?>


</div>