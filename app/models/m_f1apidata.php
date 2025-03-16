<?php

class F1ApiData
{

    function __construct()
    {
    }

    function getConstructorsFromApi()
    {
        global $CMS;
        $seasonYear = $CMS->F1Companion->getSeasonYear();

        $curl = curl_init();

        curl_setopt_array($curl, array(
            CURLOPT_URL => 'http://api.jolpi.ca/ergast/f1/' . $seasonYear . '/constructors/?format=json',
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_ENCODING => '',
            CURLOPT_MAXREDIRS => 10,
            CURLOPT_TIMEOUT => 0,
            CURLOPT_FOLLOWLOCATION => true,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => 'GET',
        ));

        $response = curl_exec($curl);

        curl_close($curl);

        $constructors = json_decode($response, true);

        $i = 0;
        $constructorsArray = array();
        foreach ($constructors['MRData']['ConstructorTable']['Constructors'] as $constructor) {
            $constructorsArray[$i]['name'] = strval($constructor['name']);
            $constructorsArray[$i]['nationality'] = strval($constructor['nationality']);
            $constructorsArray[$i]['url'] = strval($constructor['url']);
            $i++;
        }
        return $constructorsArray;
    }

    function getDriversFromApi()
    {
        global $CMS;
        $seasonYear = $CMS->F1Companion->getSeasonYear();

        $curl = curl_init();

        curl_setopt_array($curl, array(
            CURLOPT_URL => 'http://api.jolpi.ca/ergast/f1/' . $seasonYear . '/drivers/?format=json',
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_ENCODING => '',
            CURLOPT_MAXREDIRS => 10,
            CURLOPT_TIMEOUT => 0,
            CURLOPT_FOLLOWLOCATION => true,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => 'GET',
        ));

        $response = curl_exec($curl);

        curl_close($curl);

        $drivers = json_decode($response, true);

        $i = 0;
        $driversArray = array();
        foreach ($drivers['MRData']['DriverTable']['Drivers'] as $driver) {
            $driversArray[$i]['firstName'] = strval($driver['givenName']);
            $driversArray[$i]['lastName'] = strval($driver['familyName']);
            if ($driver['permanentNumber'] == "") {
                $driversArray[$i]['number'] = 0;
            } else {
                $driversArray[$i]['number'] = intval($driver['permanentNumber']);
            }
            $driversArray[$i]['nationality'] = strval($driver['nationality']);
            $driversArray[$i]['birth'] = strval($driver['dateOfBirth']);
            $driversArray[$i]['url'] = strval($driver['url']);
            $i++;
        }
        return $driversArray;
    }

    function getConstructorStandingsFromApi()
    {
        global $CMS;
        $seasonYear = $CMS->F1Companion->getSeasonYear();

        $curl = curl_init();

        curl_setopt_array($curl, array(
            CURLOPT_URL => 'http://api.jolpi.ca/ergast/f1/' . $seasonYear . '/constructorStandings/?format=json',
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_ENCODING => '',
            CURLOPT_MAXREDIRS => 10,
            CURLOPT_TIMEOUT => 0,
            CURLOPT_FOLLOWLOCATION => true,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => 'GET',
        ));

        $response = curl_exec($curl);

        curl_close($curl);

        $constructorStandings = json_decode($response, true);

        $i = 0;
        $constructorStandingsArray = array();
        foreach ($constructorStandings['MRData']['StandingsTable']['StandingsLists'][0]['ConstructorStandings'] as $standing) {
            $constructorStandingsArray[$i]['position'] = intval($standing['position']);
            $constructorStandingsArray[$i]['name'] = strval($standing['Constructor']['name']);
            $constructorStandingsArray[$i]['points'] = floatval($standing['points']);
            $i++;
        }
        return $constructorStandingsArray;
    }

    function getDriverStandingsFromApi()
    {
        global $CMS;
        $seasonYear = $CMS->F1Companion->getSeasonYear();

        $curl = curl_init();

        curl_setopt_array($curl, array(
            CURLOPT_URL => 'http://api.jolpi.ca/ergast/f1/' . $seasonYear . '/driverStandings/?format=json',
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_ENCODING => '',
            CURLOPT_MAXREDIRS => 10,
            CURLOPT_TIMEOUT => 0,
            CURLOPT_FOLLOWLOCATION => true,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => 'GET',
        ));

        $response = curl_exec($curl);

        curl_close($curl);

        $driverStandings = json_decode($response, true);

        $i = 0;
        $lastPosition = 0;
        $driverStandingsArray = array();
        foreach ($driverStandings['MRData']['StandingsTable']['StandingsLists'][0]['DriverStandings'] as $standing) {
            if ($standing['positionText'] != "-") {
                $driverStandingsArray[$i]['position'] = intval($standing['position']);
                $lastPosition = intval($standing['position']);
            } else {
                $driverStandingsArray[$i]['position'] = ++$lastPosition;
            }
            $driverStandingsArray[$i]['firstName'] = strval($standing['Driver']['givenName']);
            $driverStandingsArray[$i]['lastName'] = strval($standing['Driver']['familyName']);
            $driverStandingsArray[$i]['constructorName'] = strval($standing['Constructors'][0]['name']);
            $driverStandingsArray[$i]['points'] = floatval($standing['points']);
            $i++;
        }
        return $driverStandingsArray;
    }

    function getRaceScheduleFromApi()
    {
        global $CMS;
        $seasonYear = $CMS->F1Companion->getSeasonYear();

        $curl = curl_init();

        curl_setopt_array($curl, array(
            CURLOPT_URL => 'http://api.jolpi.ca/ergast/f1/' . $seasonYear . '/?format=json',
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_ENCODING => '',
            CURLOPT_MAXREDIRS => 10,
            CURLOPT_TIMEOUT => 0,
            CURLOPT_FOLLOWLOCATION => true,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => 'GET',
        ));

        $response = curl_exec($curl);

        curl_close($curl);

        $raceSchedule = json_decode($response, true);

        $i = 0;
        $raceScheduleArray = array();
        foreach ($raceSchedule['MRData']['RaceTable']['Races'] as $race) {
            $raceScheduleArray[$i]['round'] = intval($race['round']);
            $raceScheduleArray[$i]['name'] = strval($race['raceName']);
            $raceTime = new DateTime($race['date'] . ' ' . $race['time']);
            $plTime = new DateTimeZone('Europe/Warsaw');
            $raceTime->setTimezone($plTime);
            $raceScheduleArray[$i]['dateTime'] = strval($raceTime->format('Y-m-d H:i:s'));
            $raceScheduleArray[$i]['circuit'] = strval($race['Circuit']['circuitName']);
            $raceScheduleArray[$i]['city'] = strval($race['Circuit']['Location']['locality']);
            $raceScheduleArray[$i]['country'] = strval($race['Circuit']['Location']['country']);
            $i++;
        }
        return $raceScheduleArray;
    }

    function getRaceResultFromApi($round, $year)
    {
        $curl = curl_init();

        curl_setopt_array($curl, array(
            CURLOPT_URL => 'http://api.jolpi.ca/ergast/f1/' . $year . '/' . $round . '/results/?format=json',
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_ENCODING => '',
            CURLOPT_MAXREDIRS => 10,
            CURLOPT_TIMEOUT => 0,
            CURLOPT_FOLLOWLOCATION => true,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => 'GET',
        ));

        $response = curl_exec($curl);

        curl_close($curl);

        $raceResult = json_decode($response, true);

        $i = 0;
        $raceResultArray = array();
        $raceResultArray['race_info']['name'] = strval($raceResult['MRData']['RaceTable']['Races'][0]['raceName']);
        $raceResultArray['race_info']['circuit'] = strval($raceResult['MRData']['RaceTable']['Races'][0]['Circuit']['circuitName']);
        $raceResultArray['race_info']['circuit_city'] = strval($raceResult['MRData']['RaceTable']['Races'][0]['Circuit']['Location']['locality']);
        $raceResultArray['race_info']['circuit_country'] = strval($raceResult['MRData']['RaceTable']['Races'][0]['Circuit']['Location']['country']);
        foreach ($raceResult['MRData']['RaceTable']['Races'][0]['Results'] as $result) {
            $raceResultArray['race_result'][$i]['position'] = strval($result['positionText']);
            $raceResultArray['race_result'][$i]['constructor'] = strval($result['Constructor']['name']);
            $raceResultArray['race_result'][$i]['driver'] = strval($result['Driver']['givenName']) . ' ' . strval($result['Driver']['familyName']);
            $raceResultArray['race_result'][$i]['driver_code'] = strval($result['Driver']['code']);
            $raceResultArray['race_result'][$i]['grid'] = strval($result['grid']);
            $raceResultArray['race_result'][$i]['laps'] = strval($result['laps']);
            $raceResultArray['race_result'][$i]['status'] = strval($result['status']);
            if (!empty($result['Time']['time'])) {
                $raceResultArray['race_result'][$i]['time'] = strval($result['Time']['time']);
            }
            $raceResultArray['race_result'][$i]['points'] = intval($result['points']);
            $i++;
        }
        return $raceResultArray;
    }

    function updateConstructorsDbData()
    {
        global $CMS;
        $constructors = $this->getConstructorsFromApi();
        $constructorsNumber = count($constructors);

        $stmt = $CMS->Database->prepare('INSERT INTO constructors (Name, Nationality, WikiUrl) SELECT * FROM (SELECT ? AS Name, ? AS Nationality, ? AS WikiUrl) AS tmp WHERE NOT EXISTS (SELECT Name FROM constructors WHERE Name = ?) LIMIT 1');
        for ($i = 0; $i < $constructorsNumber; $i++) {
            $stmt->bind_param('ssss', $constructors[$i]['name'], $constructors[$i]['nationality'], $constructors[$i]['url'], $constructors[$i]['name']);
            $stmt->execute();
        }
        $stmt->close();
    }

    function updateDriversDbData()
    {
        global $CMS;
        $drivers = $this->getDriversFromApi();
        $driversNumber = count($drivers);

        $stmt = $CMS->Database->prepare('INSERT INTO drivers (FirstName, LastName, DriverNumber, Nationality, DateOfBirth, WikiUrl) SELECT * FROM (SELECT ? AS FirstName, ? AS LastName, ? AS DriverNumber, ? AS Nationality, ? AS DateOfBirth, ? AS WikiUrl) AS tmp WHERE NOT EXISTS (SELECT FirstName, LastName FROM drivers WHERE FirstName = ? AND LastName = ?) LIMIT 1');
        for ($i = 0; $i < $driversNumber; $i++) {
            $stmt->bind_param('ssisssss', $drivers[$i]['firstName'], $drivers[$i]['lastName'], $drivers[$i]['number'], $drivers[$i]['nationality'], $drivers[$i]['birth'], $drivers[$i]['url'], $drivers[$i]['firstName'], $drivers[$i]['lastName']);
            $stmt->execute();
        }
        $stmt->close();

        $stmt2 = $CMS->Database->prepare('UPDATE drivers SET DriverNumber = ? WHERE FirstName = ? AND LastName = ?');
        for ($j = 0; $j < $driversNumber; $j++) {
            $stmt2->bind_param('iss', $drivers[$j]['number'], $drivers[$j]['firstName'], $drivers[$j]['lastName']);
            $stmt2->execute();
        }
        $stmt2->close();
    }

    function updateConstructorStandingsDbData()
    {
        global $CMS;
        $standings = $this->getConstructorStandingsFromApi();
        $standingsNumber = count($standings);

        $CMS->Database->query('DELETE FROM constructors_standing');
        $stmt = $CMS->Database->prepare('INSERT INTO constructors_standing (ConstructorPlace, ConstructorID, Points) VALUES (?, (SELECT ConstructorID FROM constructors WHERE Name = ?), ?)');
        for ($i = 0; $i < $standingsNumber; $i++) {
            $stmt->bind_param('isd', $standings[$i]['position'], $standings[$i]['name'], $standings[$i]['points']);
            $stmt->execute();
        }
        $stmt->close();
    }

    function updateDriverStandingsDbData()
    {
        global $CMS;
        $standings = $this->getDriverStandingsFromApi();
        $standingsNumber = count($standings);

        $CMS->Database->query('DELETE FROM drivers_standing');
        $stmt = $CMS->Database->prepare('INSERT INTO drivers_standing (DriverPlace, ConstructorID, DriverID, Points) VALUES (?, (SELECT ConstructorID FROM constructors WHERE Name = ?), (SELECT DriverID FROM drivers WHERE FirstName = ? AND LastName = ?), ?)');
        for ($i = 0; $i < $standingsNumber; $i++) {
            $stmt->bind_param('isssd', $standings[$i]['position'], $standings[$i]['constructorName'], $standings[$i]['firstName'], $standings[$i]['lastName'], $standings[$i]['points']);
            $stmt->execute();
        }
        $stmt->close();
    }

    function updateRaceScheduleDbData()
    {
        global $CMS;
        $schedule = $this->getRaceScheduleFromApi();
        $racesNumber = count($schedule);

        $CMS->Database->query('DELETE FROM races');
        $stmt = $CMS->Database->prepare('INSERT INTO races (Round, Name, DateAndTime, Circuit, City, Country) VALUES (?, ?, ?, ?, ?, ?)');
        for ($i = 0; $i < $racesNumber; $i++) {
            $stmt->bind_param('isssss', $schedule[$i]['round'], $schedule[$i]['name'], $schedule[$i]['dateTime'], $schedule[$i]['circuit'], $schedule[$i]['city'], $schedule[$i]['country']);
            $stmt->execute();
        }
        $stmt->close();
    }

    function updateAllDbData()
    {
        $this->updateConstructorsDbData();
        $this->updateDriversDbData();
        $this->updateConstructorStandingsDbData();
        $this->updateDriverStandingsDbData();
        $this->updateRaceScheduleDbData();
    }

    function getRaceScheduleFromDb()
    {
        global $CMS;
        $stmt = $CMS->Database->query('SELECT * FROM races');
        $schedule = $stmt->fetch_all(MYSQLI_ASSOC);
        $stmt->close();
        return $schedule;
    }

    function getEndedRaceScheduleFromDb()
    {
        global $CMS;
        $stmt = $CMS->Database->query('SELECT * FROM races WHERE DateAndTime < (NOW() - INTERVAL 2 HOUR)');
        $schedule = $stmt->fetch_all(MYSQLI_ASSOC);
        $stmt->close();
        return $schedule;
    }

    function getNextRaceScheduleFromDb()
    {
        global $CMS;
        $stmt = $CMS->Database->query('SELECT * FROM races WHERE DateAndTime > NOW()');
        $nextRace = $stmt->fetch_all(MYSQLI_ASSOC);
        $stmt->close();
        return $nextRace;
    }

    function getDriverStandingsFromDb()
    {
        global $CMS;
        $stmt = $CMS->Database->query('SELECT s.DriverPlace, c.BackgroundColor, c.LogoPictureName, d.FirstName, d.LastName, s.Points FROM drivers_standing AS s, constructors AS c, drivers AS d WHERE s.ConstructorID = c.ConstructorID AND s.DriverID = d.DriverID ORDER BY s.DriverPlace ASC');
        $standings = $stmt->fetch_all(MYSQLI_ASSOC);
        $stmt->close();
        return $standings;
    }

    function getTop5DriverStandingsFromDb()
    {
        global $CMS;
        $stmt = $CMS->Database->query('SELECT s.DriverPlace, c.BackgroundColor, c.LogoPictureName, d.FirstName, d.LastName, s.Points FROM drivers_standing AS s, constructors AS c, drivers AS d WHERE s.ConstructorID = c.ConstructorID AND s.DriverID = d.DriverID ORDER BY s.DriverPlace ASC LIMIT 5');
        $standings = $stmt->fetch_all(MYSQLI_ASSOC);
        $stmt->close();
        return $standings;
    }

    function getConstructorStandingsFromDb()
    {
        global $CMS;
        $stmt = $CMS->Database->query('SELECT s.ConstructorPlace, c.Name, c.BackgroundColor, c.LogoPictureName, s.Points FROM constructors_standing AS s, constructors AS c WHERE s.ConstructorID = c.ConstructorID ORDER BY s.ConstructorPlace ASC');
        $standings = $stmt->fetch_all(MYSQLI_ASSOC);
        $stmt->close();
        return $standings;
    }

    function getTop3ConstructorStandingsFromDb()
    {
        global $CMS;
        $stmt = $CMS->Database->query('SELECT s.ConstructorPlace, c.Name, c.BackgroundColor, c.LogoPictureName, s.Points FROM constructors_standing AS s, constructors AS c WHERE s.ConstructorID = c.ConstructorID ORDER BY s.ConstructorPlace ASC LIMIT 3');
        $standings = $stmt->fetch_all(MYSQLI_ASSOC);
        $stmt->close();
        return $standings;
    }
}
