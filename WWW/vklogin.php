<?php
require_once('config.php');
require_once('db.php');
if (isset($_GET)) {
  $apiId = 6891928; 
  $secretKey = 'qOsLFUWGtXVOeHLTkE04'; 
  $url = 'http://dd-life.ru/vklogin.php';
  $code = $_GET['code'];
  $authUrl = "https://oauth.vk.com/access_token?client_id=$apiId&client_secret=$secretKey&redirect_uri=$url&code=$code";
  $user = file_get_contents($authUrl);
  $userArray = json_decode($user, true);
  $userNew = R::findOne('users', 'vkid = ?', array($userArray['user_id']));
  $userNew->email = $userArray['email'];
  R::store($userNew);
  // $_SESSION['logged-user'] = $userArray['email'];
  header("location: " . HOST);
}
?>