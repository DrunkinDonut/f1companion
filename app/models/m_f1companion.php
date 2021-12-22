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
            $year = date('Y');
            $stmt = $CMS->Database->prepare('UPDATE settings SET Value = ?, LastUpdate = NOW() WHERE Name = "SeasonYear"');
            $stmt->bind_param('i', $year);
            $stmt->execute();
            $stmt->close();
        } else {
            $stmt = $CMS->Database->prepare('UPDATE settings SET Value = ?, LastUpdate = NOW() WHERE Name = "SeasonYear"');
            $stmt->bind_param('i', $year);
            $stmt->execute();
            $stmt->close();
        }
    }

    function getSeasonYear()
    {
        global $CMS;
        $stmt = $CMS->Database->prepare('SELECT Value FROM settings WHERE Name = "SeasonYear"');
        $stmt->execute();
        $year = $stmt->get_result();
        $stmt->close();
        $year = $year->fetch_assoc();
        return $year['Value'];
    }
}
