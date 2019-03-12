<?php 
$title = "Профиль";

$userInfo = $_SESSION['logged-user'];
$userId = $userInfo['id'];
$orders = R::find('orders', 'user_id=' . $userId);

 $sql = 'SELECT comments.text, comments.date_time, comments.post_id, comments.user_id, posts.id, posts.title
FROM comments JOIN posts 
ON comments.post_id = posts.id
JOIN users ON comments.user_id=users.id
WHERE users.id = ' . $_SESSION['logged-user']['id'] . '';
$commentsPost = R::getAll($sql);
	
ob_start();
include ROOT . "templates/_header.tpl";
include ROOT . "templates/profile.tpl";
$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_footer.tpl";

?>