<div class="container mt-70 mb-120">
	<div class="title-2">Состав заказа</div>
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
				<td>
					<?=$cartGoodsCount?> шт.</td>
				<td></td>
				<td>
					<?=price_format($cartGoodsTotalPrice)?> руб.</td>
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

	<div class="title-1">Оформить заказ</div>

	<form action="<?=HOST?>shop/order-create" method="POST">
		<!-- row -->
		<div class="row">
			<div class="col-6">
				<label class="label">
					<div class="fieldset__title">Имя</div>
					<?php if (isset($_SESSION['logged-user']['firstname'])) {?>
					<input 	name="name" 
							class="input"
							placeholder="Введите имя" 
							value="<?=$_SESSION['logged-user']['firstname']?>">
					<?php } else { ?>
					<input 	name="name" 
							class="input" 
							placeholder="Введите имя">
					<?php } ?>
				</label>
			</div>
			<div class="col-6">
				<label class="label">
					<div class="fieldset__title">Фамилия</div>
					<?php if (isset($_SESSION['logged-user']['lastname'])) {?>
					<input 	name="secondname" 
							class="input" 
							placeholder="Введите фамилию" 
							value="<?=$_SESSION['logged-user']['lastname']?>">
					<?php } else { ?>
					<input name="secondname" class="input" placeholder="Введите фамилию">
					<?php } ?>
				</label>
			</div>
		</div>
		<!-- // row -->
		<!-- row -->
		<div class="row">
			<div class="col-6">
				<label class="label">
					<div class="fieldset__title">Email</div>
					<?php if (isset($_SESSION['logged-user']['email'])) {?>
					<input name="email" class="input" placeholder="Введите email" value="<?=$_SESSION['logged-user']['email']?>">
					<?php } else { ?>
					<input name="email" class="input" placeholder="Введите email">
					<?php } ?>
				</label>
			</div>  
			<div class="col-6">
				<label class="label">
					<div class="fieldset__title">Телефон</div>
					<input 	name="phone" 
							class="input" 
							placeholder="Введите телефон">
				</label>
			</div>
		</div>
		<!-- // row -->
		<input name="createOrder" type="submit" class="button button-save" value="Оформить заказ">

	</form>

</div>