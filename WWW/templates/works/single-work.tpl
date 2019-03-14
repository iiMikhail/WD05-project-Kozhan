<div class="mt-50 col-md-4 pl-0 pr-0">
	<a style="text-decoration: none;" 
		href="<?php echo HOST?>works/separate-work?id=<?=$work['id']?>"> 
		<div class="work__card-box">  
			<div class="card-box__img-portfolio">
				<img src="<?=HOST?>usercontent/works/small/<?=$work['workimgsmall']?>" />
			</div> 
			<div class="card-box__img-blog--wrapper"></div>
			<div class="work__wrapper-desc-preview">
				<div style="color: white; margin: 0; padding: 0; font-size: 20px; text-transform: none;" class="card-box__title-blog-preview"><?=$work['name']?></div>
				<div class="post-buttons-nav works__preview-desc">
					<div class="work__category"><?=$work['cat_name']?></div>
					<div class="work__count-visits"><i class="fas fa-eye"></i>
						<?php if ($work['eye_count'] > 0) { ?>
							<?=$work['eye_count']?>
						<?php } else { ?>
							0
						<?php } ?>
					</div> 
				</div>
			</div>
		</div>
	</a> 
</div>