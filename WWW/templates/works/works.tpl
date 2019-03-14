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
			<h1 class="works-title-text"><span class="works-title-text--bold">Мои работы</span></h1>
		</div>
		<?php if(@$_SESSION['logged-user']['role'] == 'admin') { ?>
		<div class="works-title-right"><a class="button button-edit" href="<?php echo HOST?>works/add-work">Добавить работу</a></div>
		<?php } ?>
	</div>
	<div class="row ml-0 mr-0"> 
	<?php foreach ($work as $work) { ?>
	<!-- Карточка работы --> 
	<?php include ROOT . "templates/works/single-work.tpl" ?>
	<!-- //Карточка работы -->
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