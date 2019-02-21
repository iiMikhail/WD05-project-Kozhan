	<div class="content-exp-page">
		<div class="container">
			<div class="row"> 
				<div class="col-md-9 offset-md-1">
					<h1 class="title-general mt-0 mb-35">Редактировать - Технологии</h1>
					<form method="POST" action="<?php echo HOST?>skills-edit" class="about-me-edit-skills-form" id="about-me-edit-skills">
						<div class="row mb-40">
							<div class="col-3">
								<div class="about-me-tech__input">
									<label class="label" for="technology-html">HTML5</label>
									<input class="input" name="html5" id="technology-html" type="number" placeholder="0" min="0" max="100" 
									value="<?php echo $skillsF['html']?>"/>
									<p class="percent">%</p>
								</div>
							</div>
							<div class="col-3">
								<div class="about-me-tech__input">
									<label class="label" for="technology-css">CSS3</label>
									<input class="input" name="css3" id="technology-css" type="number" placeholder="0" min="0" max="100" 
									value="<?php echo $skillsF['css']?>"/>
									<p class="percent">%</p>
								</div>
							</div>
							<div class="col-3">
								<div class="about-me-tech__input">
									<label class="label" for="technology-js">JS</label>
									<input class="input" name="js" id="technology-js" type="number" placeholder="0" min="0" max="100" 
									value="<?php echo $skillsF['js']?>"/>
									<p class="percent">%</p>
								</div>
							</div>
							<div class="col-3">
								<div class="about-me-tech__input">
									<label class="label" for="technology-jquery">jQuery</label>
									<input class="input" name="jquery" id="technology-jquery" type="number" placeholder="0" min="0" max="100" 
									value="<?php echo $skillsF['jquery']?>"/>
									<p class="percent">%</p>
								</div>
							</div>
						</div>
						<div class="row mb-40">
							<div class="col-3">
								<div class="about-me-tech__input">
									<label class="label" for="technology-php">PHP</label>
									<input class="input" name="php" id="technology-php" type="number" placeholder="0" min="0" max="100" 
									value="<?php echo $skillsF['php']?>"/>
									<p class="percent">%</p>
								</div>
							</div>
							<div class="col-3">
								<div class="about-me-tech__input">
									<label class="label" for="technology-mysql">MySql</label>
									<input class="input" name="mysql" id="technology-mysql" type="number" placeholder="0" min="0" max="100" 
									value="<?php echo $skillsF['mysql']?>"/>
									<p class="percent">%</p>
								</div>
							</div>
						</div>
						<div class="row mb-30">
							<div class="col-3">
								<div class="about-me-tech__input">
									<label class="label" for="technology-git">Git</label>
									<input class="input" name="git" id="technology-git" type="number" placeholder="0" min="0" max="100" 
									value="<?php echo $skillsF['git']?>"/>
									<p class="percent">%</p>
								</div>
							</div>
							<div class="col-3">
								<div class="about-me-tech__input">
									<label class="label" for="technology-gulp">Gulp</label>
									<input class="input" name="gulp" id="technology-gulp" type="number" placeholder="0" min="0" max="100" 
									value="<?php echo $skillsF['gulp']?>"/>
									<p class="percent">%</p>
								</div>
							</div>
							<div class="col-3">
								<div class="about-me-tech__input">
									<label class="label" for="technology-bower">Bower</label>
									<input class="input" name="bower" id="technology-bower" type="number" placeholder="0" min="0" max="100" 
									value="<?php echo $skillsF['bower']?>"/>
									<p class="percent">%</p>
								</div>
							</div>
							<div class="col-3">
								<div class="about-me-tech__input">
									<label class="label" for="technology-webpack">WebPack</label>
									<input class="input" name="webpack" id="technology-webpack" type="number" placeholder="0" min="0" max="100" 
									value="<?php echo $skillsF['webpack']?>"/>
									<p class="percent">%</p>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-auto pr-30">
								<input class="button button-save" type="submit" name="save-button" value="Сохранить" /></div>
							<div class="col-auto">
								<a class="button" href="<?php echo HOST?>about">Отмена</a>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>