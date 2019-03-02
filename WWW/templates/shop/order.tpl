<div class="container mt-70 mb-120">

	<div class="title-2">Состав заказа №
		<?=$orders['id']?>
	</div>

	<table class="table table-hover">
		<thead>
			<tr class="table-total">
				<td>Наименование</td>
				<td>Количество</td>
				<td width="200">Стоимость за шт.</td>
			</tr>
		</thead>
		<tfoot>
			<tr class="table-total">
				<td></td>
				<td scope="row">
					<strong>
						<?=$orders->items_count?> товаров</strong>
				</td>
				<td>
					<strong>
						<?=price_format($orders->total_price)?> рублей</strong>
				</td>
			</tr>
		</tfoot>
		<tbody>
			<?php foreach ($items as $item) { ?>
				<tr>
					<td scope="row">
						<a href="<?=HOST . 'shop/item?id=' . $item->id?>">
							<?=$item->title?>
						</a>
					</td>

					<td>
						<?=$item->count?>
					</td>
					<td>
						<?php echo price_format($item->price) ?> рублей
					</td>
				</tr>
			<?php } ?>
		</tbody> 
	</table>

	<a href="<?=HOST?>shop/orders" class="button">← Назад к заказам</a>

</div>
