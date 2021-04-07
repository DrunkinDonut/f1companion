<?php

class Template{

    function __construct(){
        
    }

    function showNav(string $activeTab){
        include APP_PATH.'templates/t_nav.php';
    }

    function showRaceCard(int $round, string $raceName, string $raceLocation, string $raceDate, string $raceTime, bool $addArrow = false){
        include APP_PATH.'templates/t_race_card.php';
    }
}