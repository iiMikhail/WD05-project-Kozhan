<?php  function indikator($post){
	$offset = 351.85*(1-intval($post)/100) . "px";
	echo $offset;
} ?> 
	<div class="section-about-info mt-80 mb-65">
		<div class="container">
			<div class="row about-info">
				<div class="col-md-3">
					<div class="avatar"><img src="<?php echo HOST?>usercontent/about/photo/<?php echo $about['photo']?>" alt="alt text avatar" /></div>
				</div>
				<div class="col-md-9">
					<div class="about-info">
						<?php if(@$_SESSION['logged-user']['role'] == 'admin') { ?>
						<a class="button button-edit float-right" href="<?php echo HOST?>about-edit">Редактировать</a>
						<?php  } ?>
						<p class="mb-15 about-info__name"><?php echo $about['name']?></p>
						<p class="mb-0"><?php echo $about['text']?></p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="section-indikators pt-50">
		<div class="container">
			<div class="row indikators-block">
				<div class="offset-md-3 col-md-7">
					<h2 class="title-general mb-10 color-width">Технологии</h2>
					<p class="indikators-block__text mt-0 mb-0">Которые использую в работе</p>
				</div>
				<?php if(@$_SESSION['logged-user']['role'] == 'admin') { ?>
				<div class="col-md-2">
					<a class="button button-edit" href="<?php echo HOST?>skills-edit">Редактировать</a></div> <?php } ?>
			</div>
			<div class="row">
				<div class="col-md-2 list-technology">
					<span class="list-technology__text">Design</span>
					<span class="list-technology__text">Frontend</span>
					<span class="list-technology__text">Backend</span>
					<span class="list-technology__text">Workflow</span>
				</div>
				<div class="col-md-10">
					<div class="container-indicators">
						<div class="row ml-90 pt-40">
							<?php if ($skillsF['photoshop']>='0') { ?>
								<div class="indicator">
									<svg class="svg-box">
									<circle 
									class="circle circle--magic"
									stroke-dashoffset="<?php indikator($skillsF['photoshop'])?>">
									</circle>
									</svg>
									<div class="indicator__text">Ps</div>
								</div>					
							<?php } ?>
							
							<?php if ($skillsF['xd']) { ?>
							<div class="indicator"><svg class="svg-box">
								<circle class="circle circle--magic"
								stroke-dashoffset="<?php indikator($skillsF['xd'])?>">
								</circle>
								</svg>
								<div class="indicator__text">XD</div>
							</div>
							<?php } ?>
							<?php if ($skillsF['axure']) { ?>
							<div class="indicator">
								<svg class="svg-box">
								<circle class="circle circle--magic" 
								stroke-dashoffset="<?php indikator($skillsF['axure'])?>">
								</circle>
								</svg>
								<div class="indicator__text">Axure</div>
							</div>
							<?php } ?>
						</div>
						<div class="row ml-90 pt-40">
							<?php if ($skillsF['html']>='0') { ?>
								<div class="indicator">
									<svg class="svg-box">
									<circle 
									class="circle circle--green"
									stroke-dashoffset="<?php indikator($skillsF['html'])?>">
									</circle>
									</svg>
									<div class="indicator__text">HTML5</div>
								</div>					
							<?php } ?>
							
							<?php if ($skillsF['css']) { ?>
							<div class="indicator"><svg class="svg-box">
								<circle class="circle circle--green"
								stroke-dashoffset="<?php indikator($skillsF['css'])?>">
								</circle>
								</svg>
								<div class="indicator__text">CSS3</div>
							</div>
							<?php } ?>
							<?php if ($skillsF['js']) { ?>
							<div class="indicator">
								<svg class="svg-box">
								<circle class="circle circle--green" 
								stroke-dashoffset="<?php indikator($skillsF['js'])?>">
								</circle>
								</svg>
								<div class="indicator__text">js</div>
							</div>
							<?php } ?>
							<?php if ($skillsF['jquery']) { ?>
							<div class="indicator"><svg class="svg-box">
									<circle class="circle circle--green" 
									stroke-dashoffset="<?php indikator($skillsF['jquery'])?>">
									</circle>
								</svg>
								<div class="indicator__text">jQuery</div>
							</div>
							<?php } ?>
						</div>
						<div class="row ml-90 pt-40">
							<?php if ($skillsF['php']) { ?>
							<div class="indicator">
								<svg class="svg-box">
									<circle class="circle circle--blue" 
									stroke-dashoffset="<?php indikator($skillsF['php'])?>">
									</circle>
								</svg>
								<div class="indicator__text">PHP</div>
							</div>
							<?php } ?>
							<?php if ($skillsF['mysql']) { ?>
							<div class="indicator">
								<svg class="svg-box">
									<circle class="circle circle--blue" 
									stroke-dashoffset="<?php indikator($skillsF['mysql'])?>">
									</circle>
								</svg>
								<div class="indicator__text">MySql</div>
							</div>
							<?php } ?>
						</div>
						<div class="row ml-90 pt-40">
							<?php if ($skillsF['git']) { ?>
							<div class="indicator">
								<svg class="svg-box">
									<circle class="circle circle--yellow"
									stroke-dashoffset="<?php indikator($skillsF['git'])?>">
									</circle>
								</svg>
								<div class="indicator__text">Git</div>
							</div>
							<?php } ?>
							<?php if ($skillsF['gulp']) { ?>
							<div class="indicator"><svg class="svg-box">
									<circle class="circle circle--yellow"
									stroke-dashoffset="<?php indikator($skillsF['gulp'])?>">
									</circle>
								</svg>
								<div class="indicator__text">Gulp</div>
							</div>
							<?php } ?>
							<?php if ($skillsF['bower']) { ?>
							<div class="indicator">
								<svg class="svg-box">
									<circle class="circle circle--yellow" 
									stroke-dashoffset="<?php indikator($skillsF['bower'])?>">
									</circle>
								</svg>
								<div class="indicator__text">Bower</div>
							</div>
							<?php } ?>
							<?php if ($skillsF['webpack']) { ?>
							<div class="indicator">
								<svg class="svg-box">
									<circle class="circle circle--yellow" 
									stroke-dashoffset="<?php indikator($skillsF['webpack'])?>">
									</circle>
								</svg>
								<div class="indicator__text">WebPack</div>
							</div>
							<?php } ?>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<?php if ($Fworkplace !== '') { ?>
		<div class="sectoin-workflow pt-80 pb-120">
			<div class="container">
				<div class="row">
					<?php if(@$_SESSION['logged-user']['role'] == 'admin') { ?>
					<div class="offset-md-3 col-md-9 experience-work mb-25">
						<h2 class="title-general mt-0 mb-0">Опыт работы</h2><a class="button button-edit" href="<?php echo HOST?>expirience-edit">Редактировать</a>
					</div>
					<?php } ?>
				</div>
				<div class="row">
					<div class="offset-md-3 col-md-9">
						<?php foreach ($Fworkplace as $Fworkplace) { ?>
							<div class="workflow-block mb-40">
								<div class="workflow-block__date mb-15"><span>февраль 2017 - по настоящее время</span></div>
								<div class="workflow-info">
									<h4 class="title-4 mb-15 mt-0">Frontend разработчик, Вконтакте, mail.ru group</h4>
									<p>Работы в команде Вконтакте. Работал в команде над обновлением сервиса Музыка, работа над видео разделом. Создание видеолеера. Создание кроссбраузерных компонентов. Работа над оптимизацией скорости загрузки медиа контента.</p>
								</div>
							</div>
						<?php } ?>
					</div>
				</div>
			</div>
		</div>
	<?php } ?>