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
        $CMS->F1ApiData->updateAllDbData();
    }

    function getSeasonYear()
    {
        global $CMS;
        $stmt = $CMS->Database->query('SELECT Value FROM settings WHERE Name = "SeasonYear"');
        $year = $stmt->fetch_assoc();
        $stmt->close();
        return $year['Value'];
    }

    function checkIfDataIsUpToDate()
    {
        global $CMS;
        $stmt = $CMS->Database->query('SELECT LastUpdate FROM settings WHERE Name = "DatabaseDataUpdate"');
        $lastUpdate = $stmt->fetch_row();
        $stmt->close();
        $lastUpdateTime = date('Y-m-d H:i', strtotime($lastUpdate[0]));
        $nowMinusHour = date('Y-m-d H:i', strtotime('-1 hour'));
        if ($nowMinusHour > $lastUpdateTime) {
            $CMS->F1ApiData->updateAllDbData();
            $CMS->Database->query('UPDATE settings SET LastUpdate = NOW() WHERE Name = "DatabaseDataUpdate"');
        }
    }

    function showRaceSchedule()
    {
        global $CMS;
        $schedule = $CMS->F1ApiData->getRaceScheduleFromDb();
        foreach ($schedule as $race) {
            $raceDateTime = new DateTime($race['DateAndTime']);
            $raceDate = $raceDateTime->format('d.m.Y');
            $raceTime = $raceDateTime->format('H:i');
            $raceLocation = $race['City'] . ', ' . $race['Country'];
            $CMS->Template->showRaceCard($race['Round'], $race['Name'], $raceLocation, $raceDate, $raceTime);
        }
    }

    function showNextRaceSchedule()
    {
        global $CMS;
        $nextRace = $CMS->F1ApiData->getNextRaceScheduleFromDb();
        if ($nextRace == NULL) {
            $CMS->Template->showInfoBlock('Wszystkie wyścigi w tym sezonie zostały już rozegrane.');
        } else {
            $raceDateTime = new DateTime($nextRace[0]['DateAndTime']);
            $raceDate = $raceDateTime->format('d.m.Y');
            $raceTime = $raceDateTime->format('H:i');
            $raceLocation = $nextRace[0]['City'] . ', ' . $nextRace[0]['Country'];
            $CMS->Template->showRaceCard($nextRace[0]['Round'], $nextRace[0]['Name'], $raceLocation, $raceDate, $raceTime);
        }
    }

    function showDriverStandings()
    {
        global $CMS;
        $standings = $CMS->F1ApiData->getDriverStandingsFromDb();
        if (count($standings) != 0) {
            foreach ($standings as $row) {
                $driverName = $row['FirstName'] . ' ' . $row['LastName'];
                if (fmod($row['Points'], 1) !== 0.0) {
                    $points = number_format($row['Points'], 2);
                } else {
                    $points = intval($row['Points']);
                }
                $CMS->Template->showStanding($row['DriverPlace'], $row['BackgroundColor'], $row['LogoPictureName'], $driverName, $points);
            }
        } else {
            $year = $this->getSeasonYear();
            $message = 'Brak danych klasyfikacji kierowców dla sezonu ' . $year;
            $CMS->Template->showInfoBlock($message);
        }
    }

    function showTop5DriverStandings()
    {
        global $CMS;
        $standings = $CMS->F1ApiData->getTop5DriverStandingsFromDb();
        if (count($standings) != 0) {
            foreach ($standings as $row) {
                $driverName = $row['FirstName'] . ' ' . $row['LastName'];
                if (fmod($row['Points'], 1) !== 0.0) {
                    $points = number_format($row['Points'], 2);
                } else {
                    $points = intval($row['Points']);
                }
                $CMS->Template->showStanding($row['DriverPlace'], $row['BackgroundColor'], $row['LogoPictureName'], $driverName, $points);
            }
        } else {
            $year = $this->getSeasonYear();
            $message = 'Brak danych klasyfikacji kierowców dla sezonu ' . $year;
            $CMS->Template->showInfoBlock($message);
        }
    }

    function showConstructorStandings()
    {
        global $CMS;
        $standings = $CMS->F1ApiData->getConstructorStandingsFromDb();
        $allPoints = 0;
        foreach ($standings as $rows) {
            $allPoints = $allPoints + $rows['Points'];
        }
        if ($allPoints != 0) {
            foreach ($standings as $row) {
                if (fmod($row['Points'], 1) !== 0.0) {
                    $points = number_format($row['Points'], 2);
                } else {
                    $points = intval($row['Points']);
                }
                $CMS->Template->showStanding($row['ConstructorPlace'], $row['BackgroundColor'], $row['LogoPictureName'], $row['Name'], $points);
            }
        } else {
            $year = $this->getSeasonYear();
            $message = 'Brak danych klasyfikacji konstruktorów dla sezonu ' . $year;
            $CMS->Template->showInfoBlock($message);
        }
    }

    function showTop3ConstructorStandings()
    {
        global $CMS;
        $standings = $CMS->F1ApiData->getTop3ConstructorStandingsFromDb();
        $allPoints = 0;
        foreach ($standings as $rows) {
            $allPoints = $allPoints + $rows['Points'];
        }
        if ($allPoints != 0) {
            foreach ($standings as $row) {
                if (fmod($row['Points'], 1) !== 0.0) {
                    $points = number_format($row['Points'], 2);
                } else {
                    $points = intval($row['Points']);
                }
                $CMS->Template->showStanding($row['ConstructorPlace'], $row['BackgroundColor'], $row['LogoPictureName'], $row['Name'], $points);
            }
        } else {
            $year = $this->getSeasonYear();
            $message = 'Brak danych klasyfikacji konstruktorów dla sezonu ' . $year;
            $CMS->Template->showInfoBlock($message);
        }
    }
}
