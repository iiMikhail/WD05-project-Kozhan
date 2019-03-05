<div class="container mt-70 mb-120">

	<div class="title-2">Оплата заказа</div>

	<div class="highlight">
		<p><strong>Номер заказа: </strong>  
			<?=$order['id']?>
		</p>
		<p><strong>Сумма заказа:</strong>
			<?=price_format($order['total_price'])?> руб.</p>
	</div>
 
	<div class="title-2">Выберите способ оплаты</div>

	<div class="card mb-30 user-content">
		<div class="card__title">Система Яндекс.Деньги</div>
		<p>Для оплаты с помощью:</p>
		<ul>
			<li>Карт Visa, MasterCard, МИР</li>
			<li>или с кошелька Яндекс деньги.</li>
		</ul>  
		<div class="yandex-choice"> 
			<a href="<?=HOST?>shop/payment-yandex" class="button-profile-green-big">Оплатить</a>
		</div>
	</div>

</div>
