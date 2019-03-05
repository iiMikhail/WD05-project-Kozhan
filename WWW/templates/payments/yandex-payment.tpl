<div class="container mt-70 mb-120">
	<div class="title-2">Оплата заказа через Яндекс.Деньги</div>

	<form 	method="POST" 
			action="https://money.yandex.ru/quickpay/confirm.xml">    
			<input 	type="hidden" 
					name="receiver"
					value="<?=YANDEX_WALLET?>">    
			<input 	type="hidden" 
					name="formcomment" 
					value="Оплата заказа на сайте <?=SITE_NAME?>">    
			<input 	type="hidden" 
					name="short-dest" 
					value="Оплата заказа на сайте <?=SITE_NAME?>">    
			<input 	type="hidden" 
					name="label" 
					value="<?=$_SESSION['order']['id']?>">    
			<input 	type="hidden" 
					name="quickpay-form"
					value="shop">    
			<input 	type="hidden" 
					name="targets" 
					value="Оплата в магазине <?=SITE_NAME?> заказ № <?=$_SESSION['order']['id']?>">   
			<input 	type="hidden" 
					name="sum" 
					value="<?=$_SESSION['order']['total_price']?>" 
					data-type="number">
			<input 	type="hidden" 
					name="successURL" 
					value="<?=HOST?>shop/after-payment">
<!-- 			<input 	type="hidden" 
					name="comment" 
					value="Хотелось бы получить дистанционное управление.">   -->
<!-- 			<input 	type="hidden" 
					name="need-fio" 
					value="true">     -->
<!-- 			<input 	type="hidden" 
					name="need-email" 
					value="true">   
			<input 	type="hidden" 
					name="need-phone" 
					value="false">    -->
<!-- 			<input 	type="hidden" 
					name="need-address" 
					value="false">  -->
			<div class="form-element mb-15">
				<label class="radio"><input class="radio__input" value="PC" type="radio" name="paymentType" /><span class="radio__label"></span>Яндекс.Деньгами</label>

			</div>
			<div class="form-element mb-35">
				<label class="radio"><input class="radio__input" value="AC" type="radio" name="paymentType" /><span class="radio__label"></span>Банковской картой</label>
			</div>
			<div class="form-element">
				<input 	type="submit"
						value="Перевести" 
						class="button-profile-green-big">
			</div>
	</form>
</div>