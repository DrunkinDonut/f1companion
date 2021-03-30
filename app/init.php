<?php

define("SITE_PATH", $_SERVER['SERVER_NAME']);
define("APP_PATH", str_replace("\\", "/", dirname(__FILE__))."/");
define("APP_RES", $_SERVER['SERVER_NAME']."/app/res/");

$server = 'localhost';
$user = 'root';
$pass = '';
$db = 'f1companion';

date_default_timezone_set("Europe/Warsaw");

require_once(APP_PATH.'core.php');
$CMS = new CMS_Core($server, $user, $pass, $db);