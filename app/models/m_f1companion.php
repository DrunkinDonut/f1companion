<?php

class F1Companion
{

    function __construct()
    {
    }

    function setSeasonYear($year = 'actual')
    {
        global $CMS;
        if ($year == 'actual') {
            $CMS->Database->query('UPDATE settings SET Value = ' . date('Y') . ', LastUpdate = NOW() WHERE Name = "SeasonYear"');
        } else {
            $CMS->Database->query('UPDATE settings SET Value = ' . $year . ', LastUpdate = NOW() WHERE Name = "SeasonYear"');
        }
    }

    function getSeasonYear()
    {
        global $CMS;
        $year = $CMS->Database->query('SELECT Value FROM settings WHERE Name = "SeasonYear"');
        $year = $year->fetch_assoc();
        return $year['Value'];
    }
}
