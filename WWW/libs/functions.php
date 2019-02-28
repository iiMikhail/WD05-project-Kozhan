<?php
function pagination($table, $count=6){
	$number_of_results = R::count($table);
	$results_per_page = $count;
	$number_of_page = ceil($number_of_results/$results_per_page);
	if (!isset($_GET['page'])) {
		$page_number = 1;
	} else {
		$page_number = $_GET['page'];
	}
	$starting_limit_number = ($page_number - 1)*$results_per_page;
	$sql_pages_limit = 'LIMIT ' . $starting_limit_number . ',' . $results_per_page;
	$result['number_of_page'] = $number_of_page;
	$result['page_number'] = $page_number;
	$result['sql_pages_limit'] = $sql_pages_limit;
	return $result;
}
function mbCutStr($string, $lenght, $postfix = '...', $encoding = 'UTF-8'){

	if(mb_strlen($string, $encoding) <= $lenght) {
		return $string;
	} else {
		$temp = mb_substr($string, 0, $lenght, $encoding);
		$spacePosition = mb_strripos($temp, " ", 0, $encoding);
		$result = mb_substr($temp, 0, $spacePosition, $encoding) . "...";
		return $result;
	}
}

function isAdmin(){
	$result = false;
	if ( isset($_SESSION['logged_user']) && $_SESSION['login'] == 1 ) {
		if ($_SESSION['role'] == 'admin') {
				$result = true;
		}
	}
	return $result;
}

function isLoggedIn(){
	$result = false;
	if ( isset($_SESSION['logged-user']) && $_SESSION['login'] == 1 ) {
		$result = true;
	}
	return $result;
}

function rus_date() {
	// Перевод
	$translate = array(
		"am" => "дп",
		"pm" => "пп",
		"AM" => "ДП",
		"PM" => "ПП",
		"Monday" => "Понедельник",
		"Mon" => "Пн",
		"Tuesday" => "Вторник",
		"Tue" => "Вт",
		"Wednesday" => "Среда",
		"Wed" => "Ср",
		"Thursday" => "Четверг",
		"Thu" => "Чт",
		"Friday" => "Пятница",
		"Fri" => "Пт",
		"Saturday" => "Суббота",
		"Sat" => "Сб",
		"Sunday" => "Воскресенье",
		"Sun" => "Вс",
		"January" => "Января",
		"Jan" => "Янв",
		"February" => "Февраля",
		"Feb" => "Фев",
		"March" => "Марта",
		"Mar" => "Мар",
		"April" => "Апреля",
		"Apr" => "Апр",
		"May" => "Мая",
		"May" => "Мая",
		"June" => "Июня",
		"Jun" => "Июн",
		"July" => "Июля",
		"Jul" => "Июл",
		"August" => "Августа",
		"Aug" => "Авг",
		"September" => "Сентября",
		"Sep" => "Сен",
		"October" => "Октября",
		"Oct" => "Окт",
		"November" => "Ноября",
		"Nov" => "Ноя",
		"December" => "Декабря",
		"Dec" => "Дек",
		"st" => "ое",
		"nd" => "ое",
		"rd" => "е",
		"th" => "ое"
	);
 	// если передали дату, то переводим ее
	if (func_num_args() > 1) {
		$timestamp = func_get_arg(1);
		return strtr(date(func_get_arg(0), $timestamp), $translate);
	} else {
	// иначе текущую дату
		return strtr(date(func_get_arg(0)), $translate);
	}
}

function commentNumber ($num) {

    //Оставляем две последние цифры от $num
	$number = substr($num, -2);

    //Если 2 последние цифры входят в диапазон от 11 до 14
    //Тогда подставляем окончание "ЕВ" 
	if($number > 10 and $number < 15)
	{
		$term = "ев";
	}
	else
	{ 

		$number = substr($number, -1);

		if($number == 0) {$term = "ев";}
		if($number == 1 ) {$term = "й";}
		if($number > 1 ) {$term = "я";}
		if($number > 4 ) {$term = "ев";}
	}

	echo  $num.' комментари'.$term;
}

function itemInCart ($num) {
 
    //Оставляем две последние цифры от $num
	$number = substr($num, -2);

    //Если 2 последние цифры входят в диапазон от 11 до 14
    //Тогда подставляем окончание "ЕВ" 
    if($number == 1) {
    	$term = "";
	} elseif($number > 1 and $number < 5) {
		$term = "а";
	} elseif($number >= 5 and $number < 21) {
		$term = "ов";
	} elseif($number == 21) {
		$term = "";
	} elseif($number > 21 and $number < 25) {
		$term = "а";
	} elseif($number >= 25 and $number < 31) {
		$term = "ов";
	} elseif($number == 31) {
		$term = "";
	} elseif($number > 31 and $number < 35) {
		$term = "а";
	} elseif($number >= 35 and $number < 41) {
		$term = "ов";
	}

	echo  $num.' товар'.$term;
}


// Adjusting text encoding
function adopt($text) {
	return '=?UTF-8?B?'.base64_encode($text).'?=';
}
function price_format($price){
	return number_format($price, 0, '', ' ');
}
?>