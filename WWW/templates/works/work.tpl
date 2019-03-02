 <script src="<?php echo HOST?>libs/ckeditor/ckeditor.js"></script>
 	<div class="separate-work-wrapper">
		<div class="separate-work-header-bg mb-50">
			<div class="logo ml-50 mb-120">
				<div class="logo__wrapper">
					<div class="logo__img logo__img--dark mr-15"><i class="far fa-paper-plane mr-0"></i></div>
					<div class="logo__title logo__title--dark">Digital Lifestyle</div>
				</div>
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
				<div class="separate-work-info mt-10">
					<div class="row">
						<div class="col-8 offset-1">
							<span class="separate-work-info__author mr-20"><?php echo $workOne['firstname']?> <?php echo $workOne['lastname']?>
							</span>
							<a class="separate-work-info__category mr-20" href="#"><?php echo $workOne['name']?></a>
							<span class="separate-work-info__date"><?php echo rus_date("j F Y H:i", strtotime($workOne['date_time']))?>
							</span>
						</div>
					</div>
				</div>
				<div class="separate-work-image mt-55">
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
						<div class="separate-work-link-project mb-35">
							<h3 class="title-3 mb-20 mt-25 strong">Ссылка на проект</h3><a class="separate-work-link-project__link" href="<?php echo $work['project']?>"><?php echo $work['project']?></a>
						</div>
						<div class="separate-work-link-github">
							<h3 class="title-3 title-3 mb-20 mt-0 strong">Код на github</h3><a class="separate-work-link-github__link" href="<?php echo $work['github']?>"><?php echo $work['github']?></a>
						</div>
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