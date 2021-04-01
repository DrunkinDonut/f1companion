<?php
    include 'init.php';

    if(isset($_GET['v']) && !empty($_GET['v'])){
        if($_GET['v'] == 'drivers_standing'){
            $CMS->load(APP_PATH.'views/v_drivers_standing.php');
        }
        else {
            if($_GET['v'] == 'constructors_standing'){
                $CMS->load(APP_PATH.'views/v_constructors_standing.php');
            }
            else {
                $CMS->load(APP_PATH.'views/v_results.php');
            }
        }
    }
    else {
        $CMS->load(APP_PATH.'views/v_results.php');
    }