<?php
include "libs/redbean/rb-mysql.php";
// include "config.php";
R::setup( 'mysql:host=' . SERVER_NAME . ';dbname=' . BD_NAME, USER_NAME, USER_PASSWORD );
// R::freeze( TRUE );



?>