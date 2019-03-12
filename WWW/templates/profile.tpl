<!-- Yandex.Metrika counter -->
<script type="text/javascript" >
   (function(m,e,t,r,i,k,a){m[i]=m[i]||function(){(m[i].a=m[i].a||[]).push(arguments)};
   m[i].l=1*new Date();k=e.createElement(t),a=e.getElementsByTagName(t)[0],k.async=1,k.src=r,a.parentNode.insertBefore(k,a)})
   (window, document, "script", "https://mc.yandex.ru/metrika/tag.js", "ym");

   ym(52709323, "init", {
        clickmap:true,
        trackLinks:true,
        accurateTrackBounce:true,
        webvisor:true
   });
</script>
<noscript><div><img src="https://mc.yandex.ru/watch/52709323" style="position:absolute; left:-9999px;" alt="" /></div></noscript>
<!-- /Yandex.Metrika counter -->

<body class="content-page">
	<div class="sticky-footer-wrapper">
		<div class="sticky-footer-content">
			<div class="container content--padding">
				<div class="row">
					<div class="col-10 offset-1">
						<div class="user-profile-block">
							<h1 class="title-general mt-0 mb-0">Профиль</h1>
							<div class="user-profile__button"><a class="button button-edit" href="edit-profile">Редактировать</a></div>
						</div>
						<div class="user-profile-information mb-35 mt-40">
							<?php if ($userInfo['password'] != '') { ?>
							<div class="user-profile__avatar">
								<?php if (@$userInfo['avatar'] != ""){ ?>
									<div class="avatar">
									<img src="<?=HOST?>usercontent/avatar/full/<?=@$userInfo->avatar?>" alt="alt text avatar" />
								</div>
								<?php } else { ?>
									<div class="avatar">
										<img src="<?php echo HOST?>usercontent/profile_def.png" alt="alt-avatar" />
									</div>
								<?php } ?>
							</div>
							<?php } else { ?>
							<div class="user-profile__avatar">
								<?php if (@$userInfo['avatar'] != ""){ ?>
									<div class="avatar">
									<img src="<?=@$userInfo['avatar']?>" alt="alt text avatar" />
								</div>
								<?php } else { ?>
									<div class="avatar">
										<img src="<?php echo HOST?>usercontent/profile_def.png" alt="alt-avatar" />
									</div>
								<?php } ?>
							</div>
							<?php } ?>
							<div class="user-profile__description"><span>Имя и фамилия</span>
								<p><?=@$userInfo->firstname?> <?=@$userInfo->lastname?></p><span>Email</span>
								<p><?=@$userInfo->email?></p><span>Страна, Город</span>
								<p><?=@$userInfo->country?> 
								<?php if ((@$userInfo['country']) != '' 
								&& (@$userInfo['city']) != '') { echo ", "; } ?> <?=@$userInfo->city?></p>
							</div>
						</div>
						<div class="mb-30">
							<?php if (count($orders) != '') { ?>
							<div id="orders" class="title-1">Заказы пользователя</div>
								<table class="table">
									<tbody>
										<?php foreach ($orders as $order) { 
											$orderItems = json_decode($order['items']) ?>
											<tr class="table-hd">
												<td scope="row">
													<a href="<?=HOST?>myorder?id=<?=$order->id?>">
														Заказ №
														<?=$order->id?>
													</a>
												</td>
												<td>
													<?=rus_date("j F Y H:i", strtotime($order->date_time))?>
												</td>
												<td>
													<?=$order->total_price?> рублей
												</td> 
												<?php if ( $order->payment == 'payed'){ ?>
												<td class="text-su`ccess">Оплачен</td><td></td>
												<?php } else { ?>
												<td class="text-danger">Не оплачен</td>
												<td><a class="button-profile-green" href="shop/payment-choice?id=<?=$order->id?>">Оплатить</a></td>
												<?php } ?>
											</tr>
											<?php foreach ($orderItems as $item) { ?> 
												<tr>
													<td></td>
													<td scope="row">
														<a href="<?=HOST . 'shop/item?id=' . $item->id?>">
															<?=$item->title?>
														</a>
													</td>
													<td>
														<?=$item->count?> шт.
													</td>
													<td>
														<?php echo price_format($item->price); ?> рублей за шт.
													</td>
													<td></td>
												</tr>
											<?php } ?>
										<?php } ?>
									</tbody>  
								</table>
							<?php } ?>
						</div>
						<?php if (count($commentsPost) > 0) { ?>
							<h2 class="title-2 title-2--color mt-0 mb-25">Комментарии пользователя</h2> 
						<?php } else { ?>
							<h2 class="title-4 title-2--color mt-0 mb-25">Нет доступных действий для отображения</h2>
						<?php } ?>
						
						<div class="user-profile-comments">

							<?php foreach ($commentsPost as $comment) { ?>
								<div class="user-comment">
									<div class="user-comment-profile">
										<a class="mr-20" href="<?php echo HOST?>blog/post?id=<?php echo $comment['id']?>" target="_blank">
										<span class="user-comment__article-title">
											<?php echo $comment['title']?>
										</span></a>
										<span class="user-comment__date">
											<i class="far fa-clock icon--mr"></i>
											<?php echo rus_date("j F Y H:i", strtotime($comment['date_time']))?>
										</span>
										<div class="user-comment__text-profile">
											<p><?php echo $comment['text']?></p>
										</div>
									</div>
								</div>
							<?php } ?>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>