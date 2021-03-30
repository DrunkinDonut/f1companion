<?php

define("SITE_PATH", "http://localhost:8080/webscraper_test2/");
define("APP_PATH", str_replace("\\", "/", dirname(__FILE__))."/");
define("APP_RES", "http://localhost:8080/webscraper_test2/app/res/");

$server = 'localhost';
$user = 'root';
$pass = '';
$db = 'f1companion';

require_once(APP_PATH.'core.php');
$CMS = new CMS_Core($server, $user, $pass, $db);