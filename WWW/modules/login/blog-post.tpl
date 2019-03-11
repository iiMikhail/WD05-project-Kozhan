<div class="col-4 pl-0 pr-0 mb-30">

	<div class="card-box">
		<div class="card-box__img-blog">
			<?php if ($post->postimgsmall != "") { ?>
				<img src="<?php echo HOST?>usercontent/blog/post/small/<?php echo $post->postimgsmall?>" alt="<?=$post->title?>"/>
			<?php } else { ?>
				<img src="<?php echo HOST?>usercontent/blog/post/small/post_def_small.jpg" alt="<?=$post->title?>"/>
			<?php } ?>
		</div>
		<div class="card-box__title"><?php echo mbCutStr($post->title, 45)?></div><a class="button card-box--button" href="<?=HOST?>blog/post?id=<?=$post->id?>">Читать</a>
	</div>
</div>