<?php
$title = "Блог - Главная";
// $posts = R::find('posts', 'ORDER BY id DESC');
// $post = R::findOne('posts', 'id=?', array($_GET['id']));
$postDel = R::load('posts', $_GET['id']);
$sql = 'SELECT posts.id, posts.postimg, posts.title, posts.text, posts.date_time, posts.update_time, posts.autor_id, posts.category_id, users.firstname, users.lastname, categories.cat_title
FROM posts JOIN categories 
ON posts.category_id = categories.id
JOIN users ON posts.autor_id=users.id
WHERE posts.id = ' . $_GET['id'] . '';

$post = R::getAll($sql);
$post = $post[0];

if (isset($_POST['addComment'])) {
	// if (trim($_POST['comment']) == "" ) {
	// 	$errors = ['title' => 'Текст комментария не может быть пустым'];
	// }
	$comment = R::dispense('comments');
	$comment -> postId = htmlentities($_GET['id']);
	$comment -> userId = htmlentities($_SESSION['logged-user']['id']);
	$comment -> text = htmlentities($_POST['comment']);
	$comment -> dateTime = R::isoDateTime();
	R::store($comment);
	header('location: ' . HOST . "blog/post?id=" . $_GET['id']);
	exit();

}

$sql = 'SELECT comments.id, comments.text, comments.date_time, comments.post_id, comments.user_id, posts.id, users.firstname, users.lastname, users.avatar_small
FROM comments JOIN posts 
ON comments.post_id = posts.id
JOIN users ON comments.user_id=users.id
WHERE comments.post_id = ' . $_GET['id'] . '';
$commentsPost = R::getAll($sql);

ob_start(); 
include ROOT . "templates/_header.tpl";
include ROOT . "templates/blog/post.tpl";
$content = ob_get_contents();
ob_end_clean();
 if(@$_GET['type'] == 'del') {
		// header('location: ' . HOST . 'categories/all?id=' . $category);
	R::trash($postDel);
	header('Location: /blog');
}
include ROOT . "templates/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_footer.tpl";

?>