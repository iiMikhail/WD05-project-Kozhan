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

<div class="container mb-120 pt-80 pl-0 pr-0">
	<div class="works-title">
		<div class="works-title-left">
			<h1 class="works-title-text"><span class="works-title-text--bold">Работы</span>, которые сделал я и моя команда</h1>
		</div>
		<?php if(@$_SESSION['logged-user']['role'] == 'admin') { ?>
		<div class="works-title-right"><a class="button button-edit" href="<?php echo HOST?>works/add-work">Добавить работу</a></div>
		<?php } ?>
	</div>
	<div class="row ml-0 mr-0">
	<?php foreach ($work as $work) { ?>
		<div class="mt-50 col-md-4 pl-0 pr-0">
			<div class="card-box card-box--height">
				<div class="card-box__img-portfolio">
					<img src="<?php echo HOST?>usercontent/works/small/<?php echo $work['workimgsmall']?>" /></div>
				<div class="card-box__title"><?php echo $work['name']?></div><a class="button card-box--button" href="<?php echo HOST?>works/separate-work?id=<?php echo $work['id']?>">Смотреть кейс</a>
			</div>
		</div>
	<?php } ?>
	</div>
	<?php if (@$_GET['page']) { ?>
		<div class="row">
			<div class="pagination">
				<?php for ($page = 1; $page <= $pagination['number_of_page']; $page++) {
					if ($pagination['page_number'] == $page) {
					echo '<a href="' . HOST . 'works?page=' . $page . '" class="pagination__item  pagination__item--active">' . $page . '</a>';
 					} else {
 						echo '<a href="' . HOST . 'works?page=' . $page . '" class="pagination__item">' . $page . '</a>';
					} 
				} ?>
			</div>
		</div>
	<?php } ?>
</div>