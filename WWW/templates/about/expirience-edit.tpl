	<div class="content-exp-page"> 
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-10">
					<h1 class="title-general mt-0 mb-35">Редактировать - Опыт работы</h1>

<?php if (isset($Fworkplace)) { ?>
	<?php foreach ($Fworkplace as $Fworkplace) { ?>
		<div class="message-user mb-20">
			<a class="button button-delete button--small-delete float-right" href="<?php echo HOST?>expirience-edit?type=del&id=<?php echo $Fworkplace['id']?>">Удалить</a>
			<div class="message-user__date mb-20"><?php echo $Fworkplace['date']?></div>
			<div class="message-user-info">
				<h4 class="title-4 mt-0 mb-0"><?php echo $Fworkplace['job_name']?></h4>
			</div>
			<p class="about-me-job__text"><?php echo $Fworkplace['description']?></p>
		</div>	
	<?php } ?>
<?php } ?>


					<form method="POST" action="<?php echo HOST?>expirience-edit">
					<h3 class="title-3 mt-0 mb-35">Добавить новое место</h3>
					<div class="about-me-edit-form">
						<label class="label" for="work-date">Период</label>
						<input class="input" name="date" id="work-date" type="text" placeholder="Введите даты начала и окончания работы" />

						<label class="label" for="name-post">Название должности</label>
						<input class="input" name="job-name" id="name-post" type="text" placeholder="Введите название должности" />

						<label class="label" for="description-text">Описание работы, должностные обязанности, достигнутые результаты</label>
						<textarea class="textarea" name="description" id="description-text" placeholder="Напишите интересное краткое содержательное описание"></textarea>
						<div class="row">
							<div class="col-auto pr-30">
								<input class="button button-save" type="submit" name="save-button" value="Добавить" /></div>
							<div class="col-auto">
								<a class="button" href="<?php echo HOST?>about">Отмена</a>
							</div>
						</div>
					</div>
					</form>
				</div>
			</div>
		</div>
	</div>