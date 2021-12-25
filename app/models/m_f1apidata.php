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
            CURLOPT_URL => 'http://ergast.com/api/f1/' . $seasonYear . '/constructors',
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

        $constructors = new SimpleXMLElement($response);

        $i = 0;
        $constructorsArray = array();
        foreach ($constructors->ConstructorTable->Constructor as $constructor) {
            $constructorsArray[$i]['name'] = strval($constructor->Name);
            $constructorsArray[$i]['nationality'] = strval($constructor->Nationality);
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
            CURLOPT_URL => 'http://ergast.com/api/f1/' . $seasonYear . '/drivers',
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

        $drivers = new SimpleXMLElement($response);

        $i = 0;
        $driversArray = array();
        foreach ($drivers->DriverTable->Driver as $driver) {
            $driversArray[$i]['firstName'] = strval($driver->GivenName);
            $driversArray[$i]['lastName'] = strval($driver->FamilyName);
            $driversArray[$i]['number'] = intval($driver->PermanentNumber);
            $driversArray[$i]['nationality'] = strval($driver->Nationality);
            $driversArray[$i]['birth'] = strval($driver->DateOfBirth);
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
            CURLOPT_URL => 'http://ergast.com/api/f1/' . $seasonYear . '/constructorStandings',
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

        $constructorStandings = new SimpleXMLElement($response);

        $i = 0;
        $constructorStandingsArray = array();
        foreach ($constructorStandings->StandingsTable->StandingsList->ConstructorStanding as $standing) {
            $constructorStandingsArray[$i]['position'] = intval($standing['position']);
            $constructorStandingsArray[$i]['name'] = strval($standing->Constructor->Name);
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
            CURLOPT_URL => 'http://ergast.com/api/f1/' . $seasonYear . '/driverStandings',
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

        $driverStandings = new SimpleXMLElement($response);

        $i = 0;
        $driverStandingsArray = array();
        foreach ($driverStandings->StandingsTable->StandingsList->DriverStanding as $standing) {
            $driverStandingsArray[$i]['position'] = intval($standing['position']);
            $driverStandingsArray[$i]['firstName'] = strval($standing->Driver->GivenName);
            $driverStandingsArray[$i]['lastName'] = strval($standing->Driver->FamilyName);
            $driverStandingsArray[$i]['constructorName'] = strval($standing->Constructor->Name);
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
            CURLOPT_URL => 'http://ergast.com/api/f1/' . $seasonYear,
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

        $raceSchedule = new SimpleXMLElement($response);

        $i = 0;
        $raceScheduleArray = array();
        foreach ($raceSchedule->RaceTable->Race as $race) {
            $raceScheduleArray[$i]['round'] = intval($race['round']);
            $raceScheduleArray[$i]['name'] = strval($race->RaceName);
            $raceTime = new DateTime($race->Date . ' ' . $race->Time);
            $plTime = new DateTimeZone('Europe/Warsaw');
            $raceTime->setTimezone($plTime);
            $raceScheduleArray[$i]['dateTime'] = strval($raceTime->format('Y-m-d H:i:s'));
            $raceScheduleArray[$i]['circuit'] = strval($race->Circuit->CircuitName);
            $raceScheduleArray[$i]['city'] = strval($race->Circuit->Location->Locality);
            $raceScheduleArray[$i]['country'] = strval($race->Circuit->Location->Country);
            $i++;
        }
        return $raceScheduleArray;
    }

    function updateConstructorsDbData()
    {
        global $CMS;
        $constructors = $this->getConstructorsFromApi();
        $constructorsNumber = count($constructors);

        $stmt = $CMS->Database->prepare('INSERT INTO constructors (Name, Nationality, WikiUrl) SELECT ?, ?, ? WHERE NOT EXISTS (SELECT Name FROM constructors WHERE Name = ?)');
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

        $stmt = $CMS->Database->prepare('INSERT INTO drivers (FirstName, LastName, DriverNumber, Nationality, DateOfBirth, WikiUrl) SELECT ?, ?, ?, ?, ?, ? WHERE NOT EXISTS (SELECT FirstName, LastName FROM drivers WHERE FirstName = ? AND LastName = ?)');
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
}
