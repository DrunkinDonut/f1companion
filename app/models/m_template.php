<?php

class Template{

    function __construct(){
        
    }

    function showNav(string $activeTab){
        include APP_PATH.'templates/nav.php';
    }
}