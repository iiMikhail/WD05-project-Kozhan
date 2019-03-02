<div class="container mt-70 mb-120">
	<div class="title-1">Заказы в системе</div>

	<table class="table">
		<tbody>
			<?php foreach ($orders as $order) { ?>
				<tr>
					<td>
						<a href="<?=HOST . 'shop/order?id=' . $order['id']?>">
							<?=$order['id']?>
						</a>
					</td>
					<td>
						<?=$order['name']?> <?=$order['secondname']?> 
					</td>
					<td>
						<?=$order['phone']?>
					</td>
					<td>
						<?=$order['email']?>
					</td>
					<td>
						<?=$order['email']?>
					</td>
					<td>
						<?=$order['count']?>
					</td>
					<td>
						<?=$order['total_price']?>
					</td>
					<td>
						<?php if ($order['payment'] == "yes") { ?>
							<td class="text-success">Оплачен</td>
						<?php } else { ?>
							<td class="text-danger">Не оплачен</td>
						<?php } ?>
					</td>
				</tr>
			<?php } ?>
		</tbody>  
	</table>

</div>