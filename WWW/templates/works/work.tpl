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

<script src="<?php echo HOST?>libs/ckeditor/ckeditor.js"></script>
 	<div class="separate-work-wrapper">
		<div class="separate-work-header-bg mb-50">
			<div class="logo ml-50 mb-120">
				<a style="text-decoration: none" href="<?=HOST?>">
					<div class="logo__wrapper">
						<div class="logo__img logo__img--dark mr-15"><i class="far fa-paper-plane mr-0"></i></div>
						<div class="logo__title logo__title--dark">Digital Lifestyle</div>
					</div>
				</a>
				<div class="logo__description logo__description--dark ml-50">Сайт IT специалиста</div>
			</div>
			<div class="container">
				<div class="separate-work-head">
					<div class="row no-gutters justify-content-between">
						<div class="col-8 offset-1"> 
							<h1 class="title-general separate-work-title--size"><?php echo $work['name']?></h1>
						</div>
						<?php if(@$_SESSION['logged-user']['role'] == 'admin') { ?>
						<div class="col-2">
							<div class="separate-work-head__button-edit"><a class="button button-edit" href="<?php echo HOST?>works/edit-work?id=<?php echo $work['id']?>">Редактировать</a></div>
						</div>
						<?php } ?>
					</div>
				</div>
				<div class="separate-work-info">
					<div class="row">
						<div class="col-8 offset-1">
							<div class="post-info">
							<div class="post-info__author"><?=$workOne['firstname']?> <?=$workOne['lastname']?></div> 
							<div class="post-info__topic"><a class="postlink" href="<?=HOST?>works?catid=<?=$workOne['categoryid']?>"><?=$workOne['name']?></a></div>
							<div class="post-info__date">Добавлено: <?=rus_date("j F Y H:i", strtotime($workOne['date_time']))?>
							</div>
							</div>
						</div>
					</div>
				</div>
				<div class="separate-work-image"> 
					<div class="row">
						<div class="col-10 offset-1">
							<div class="separate-work-image-preview"><img src="<?php echo HOST?>usercontent/works/full/<?php echo $work['workimg']?>" alt="Сайт компании" /></div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="separate-work-description-wrapper">
				<div class="row">
					<div class="col-5 offset-1">
						<div class="separate-work-description">
							<h3 class="title-3 mt-0 mb-20 strong">Кратко о проекте</h3>
							<?php echo $work['description']?>
						</div>
						<div class="separate-work-result">
							<h3 class="title-3 mb-20 mt-20 strong">Результат</h3>
							<?php echo $work['result']?>
						</div>
					</div>
					<div class="col-5">
						<div class="separate-work-technologies">
							<h3 class="title-3 mb-20 mt-0 strong">Технологии</h3>
							<?php echo $work['technology']?>
						</div>
						<?php if ($work['project'] != '') { ?>
							<div class="separate-work-link-project mb-35">
								<h3 class="title-3 mb-20 mt-25 strong">Ссылка на проект</h3><a class="separate-work-link-project__link" href="<?=$work['project']?>"><?php echo $work['project']?></a>
							</div>
						<?php } ?>
						<?php if ($work['github'] != '') { ?>
							<div class="separate-work-link-github">
								<h3 class="title-3 title-3 mb-20 mt-0 strong">Код на github</h3><a class="separate-work-link-github__link" href="<?=$work['github']?>"><?php echo $work['github']?></a>
							</div>
						<?php } ?>
					</div>
				</div>
			</div>
			<div class="separate-work-pagination-wrapper mt-45">
				<div class="row">
					<div class="col-10 offset-1">
						<div class="separate-work-pagination"><a class="button button-previous button-work-pagination-prev" href="<?php echo HOST?>works">Все работы <span class="button__icon button__icon--mright float-left"><i class="mr-0 fas fa-arrow-left"></i></span></a>
							<?php if ($nextId != '') { ?>
								<a 	class="button button-next button-work-pagination-next" 
									href="<?=HOST?>works/separate-work?id=<?=$nextId?>">Следующая работа <span class="button__icon"><i class="mr-0 fas fa-arrow-right"></i></span>
								</a>
							<?php } ?>
							
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
<script>
	document.addEventListener('DOMContentLoaded', function(){ // Аналог $(document).ready(function(){
		// CKEDITOR.replace();
		CKEDITOR.replace('editor1', {
			customConfig: '<?php echo HOST?>templates/style/js/cKeditorConfig.js'
		});
		CKEDITOR.replace('editor2', {
			customConfig: '<?php echo HOST?>templates/style/js/cKeditorConfig.js'
		});
		CKEDITOR.replace('editor3', {
			customConfig: '<?php echo HOST?>templates/style/js/cKeditorConfig.js'
		});
	});
</script> 