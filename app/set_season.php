<?php

include 'init.php';

if (isset($_POST['year']) && !empty($_POST['year'])) {
    $year = intval($_POST['year']);
    $CMS->F1Companion->setSeasonYear($year);
    header('Location: ' . $_SERVER['HTTP_REFERER']);
}
else {
    header('Location: ' . SITE_PATH);
}