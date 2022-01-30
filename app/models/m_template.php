<?php

class Template
{

    function __construct()
    {
    }

    function showNav(string $activeTab)
    {
        include APP_PATH . 'templates/t_nav.php';
    }

    function showRaceCard(int $round, string $raceName, string $raceLocation, string $raceDate, string $raceTime, bool $addArrow = false)
    {
        include APP_PATH . 'templates/t_race_card.php';
    }

    function showStanding(int $place, ?string $teamBackgroundColor, ?string $teamLogoName, string $name, float $points)
    {
        include APP_PATH . 'templates/t_standing.php';
    }

    function showInfoBlock(string $message)
    {
        include APP_PATH . 'templates/t_info_block.php';
    }
}
