<?php

define("APP_PATH", str_replace("\\", "/", dirname(__FILE__)) . "/");
if ($_SERVER['SERVER_NAME'] != 'f1companion.test') {
    define("SITE_PATH", 'http://' . $_SERVER['SERVER_NAME'] . '/f1companion/');
    define("APP_RES", 'http://' . $_SERVER['SERVER_NAME'] . "/f1companion/app/res/");
} else {
    define("SITE_PATH", 'http://' . $_SERVER['SERVER_NAME'] . '/');
    define("APP_RES", 'http://' . $_SERVER['SERVER_NAME'] . "/app/res/");
}

$server = 'localhost';
$user = 'root';
$pass = '';
$db = 'f1companion';

date_default_timezone_set("Europe/Warsaw");

require_once(APP_PATH . 'core.php');
$CMS = new CMS_Core($server, $user, $pass, $db);
