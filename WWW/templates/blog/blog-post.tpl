<div class="col-4 pl-0 pr-0 mb-30">
<a class="" href="<?=HOST?>blog/post?id=<?=$post->id?>">
	<div style="padding: 0;" class="card-box box_industries">
		<div style="overflow: hidden; position: relative;" class="card-box__img-blog">
			<?php if ($post->postimgsmall != "") { ?>
				<img src="<?=HOST?>usercontent/blog/post/small/<?=$post->postimgsmall?>" alt="<?=$post->title?>"/>
			<?php } else { ?>
				<img src="<?=HOST?>usercontent/blog/post/small/post_def_small.jpg" alt="<?=$post->title?>"/>
			<?php } ?> 
		</div> 
		<div class="card-box__img-blog--wrapper"></div>
		<div class="content">
			<div class="card-box__title-blog-preview">
				<?php echo mbCutStr($post->title, 45)?>
			</div>
			<div id="anim_block" class="card-box__description-blog">
				<?php echo mbCutStr($post->text, 150)?>
			</div>
		</div>
	</div>
</a>
</div>