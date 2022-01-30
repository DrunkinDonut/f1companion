-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 30 Sty 2022, 01:15
-- Wersja serwera: 10.4.11-MariaDB
-- Wersja PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `f1companion`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `constructors`
--

CREATE TABLE `constructors` (
  `ConstructorID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Nationality` varchar(50) NOT NULL,
  `WikiUrl` varchar(255) NOT NULL,
  `BackgroundColor` varchar(255) DEFAULT NULL,
  `LogoPictureName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `constructors`
--

INSERT INTO `constructors` (`ConstructorID`, `Name`, `Nationality`, `WikiUrl`, `BackgroundColor`, `LogoPictureName`) VALUES
(1, 'Alfa Romeo', 'Swiss', 'http://en.wikipedia.org/wiki/Alfa_Romeo_in_Formula_One', '#9A0002', 'alfaromeo_white'),
(2, 'AlphaTauri', 'Italian', 'http://en.wikipedia.org/wiki/Scuderia_AlphaTauri', '#26284F', 'alphatauri_white'),
(3, 'Alpine F1 Team', 'French', 'http://en.wikipedia.org/wiki/Alpine_F1_Team', '#101B2D', 'alpine_white'),
(4, 'Aston Martin', 'British', 'http://en.wikipedia.org/wiki/Aston_Martin_in_Formula_One', '#015850', 'aston_martin_white'),
(5, 'Ferrari', 'Italian', 'http://en.wikipedia.org/wiki/Scuderia_Ferrari', '#FE0000', 'ferrari_white'),
(6, 'Haas F1 Team', 'American', 'http://en.wikipedia.org/wiki/Haas_F1_Team', '#F01A3C', 'haas_white'),
(7, 'McLaren', 'British', 'http://en.wikipedia.org/wiki/McLaren', '#FF8800', 'mclaren_white'),
(8, 'Mercedes', 'German', 'http://en.wikipedia.org/wiki/Mercedes-Benz_in_Formula_One', '#01D2BF', 'mercedes_white'),
(9, 'Red Bull', 'Austrian', 'http://en.wikipedia.org/wiki/Red_Bull_Racing', '#161960', 'redbull_white'),
(10, 'Williams', 'British', 'http://en.wikipedia.org/wiki/Williams_Grand_Prix_Engineering', '#009EDF', 'williams_white'),
(11, 'Racing Point', 'British', 'http://en.wikipedia.org/wiki/Racing_Point_F1_Team', '#EB8FC0', 'racingpoint_white'),
(12, 'Renault', 'French', 'http://en.wikipedia.org/wiki/Renault_in_Formula_One', '#F7C700', 'renault_white'),
(13, 'Toro Rosso', 'Italian', 'http://en.wikipedia.org/wiki/Scuderia_Toro_Rosso', '#032151', NULL),
(14, 'Force India', 'Indian', 'http://en.wikipedia.org/wiki/Racing_Point_Force_India', NULL, NULL),
(15, 'Sauber', 'Swiss', 'http://en.wikipedia.org/wiki/Sauber', '#D72F25', NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `constructors_standing`
--

CREATE TABLE `constructors_standing` (
  `ConstructorPlace` int(11) NOT NULL,
  `ConstructorID` int(11) NOT NULL,
  `Points` decimal(4,1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `constructors_standing`
--

INSERT INTO `constructors_standing` (`ConstructorPlace`, `ConstructorID`, `Points`) VALUES
(1, 1, '0.0'),
(2, 2, '0.0'),
(3, 3, '0.0'),
(4, 4, '0.0'),
(5, 5, '0.0'),
(6, 6, '0.0'),
(7, 7, '0.0'),
(8, 8, '0.0'),
(9, 9, '0.0'),
(10, 10, '0.0');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `drivers`
--

CREATE TABLE `drivers` (
  `DriverID` int(11) NOT NULL,
  `FirstName` varchar(255) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `DriverNumber` int(2) DEFAULT NULL,
  `Nationality` varchar(50) NOT NULL,
  `DateOfBirth` date NOT NULL,
  `WikiUrl` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `drivers`
--

INSERT INTO `drivers` (`DriverID`, `FirstName`, `LastName`, `DriverNumber`, `Nationality`, `DateOfBirth`, `WikiUrl`) VALUES
(1, 'Fernando', 'Alonso', 14, 'Spanish', '1981-07-29', 'http://en.wikipedia.org/wiki/Fernando_Alonso'),
(2, 'Valtteri', 'Bottas', 77, 'Finnish', '1989-08-28', 'http://en.wikipedia.org/wiki/Valtteri_Bottas'),
(3, 'Pierre', 'Gasly', 10, 'French', '1996-02-07', 'http://en.wikipedia.org/wiki/Pierre_Gasly'),
(4, 'Antonio', 'Giovinazzi', 99, 'Italian', '1993-12-14', 'http://en.wikipedia.org/wiki/Antonio_Giovinazzi'),
(5, 'Lewis', 'Hamilton', 44, 'British', '1985-01-07', 'http://en.wikipedia.org/wiki/Lewis_Hamilton'),
(6, 'Robert', 'Kubica', 88, 'Polish', '1984-12-07', 'http://en.wikipedia.org/wiki/Robert_Kubica'),
(7, 'Nicholas', 'Latifi', 6, 'Canadian', '1995-06-29', 'http://en.wikipedia.org/wiki/Nicholas_Latifi'),
(8, 'Charles', 'Leclerc', 16, 'Monegasque', '1997-10-16', 'http://en.wikipedia.org/wiki/Charles_Leclerc'),
(9, 'Nikita', 'Mazepin', 9, 'Russian', '1999-03-02', 'http://en.wikipedia.org/wiki/Nikita_Mazepin'),
(10, 'Lando', 'Norris', 4, 'British', '1999-11-13', 'http://en.wikipedia.org/wiki/Lando_Norris'),
(11, 'Esteban', 'Ocon', 31, 'French', '1996-09-17', 'http://en.wikipedia.org/wiki/Esteban_Ocon'),
(12, 'Sergio', 'Pérez', 11, 'Mexican', '1990-01-26', 'http://en.wikipedia.org/wiki/Sergio_P%C3%A9rez'),
(13, 'Kimi', 'Räikkönen', 7, 'Finnish', '1979-10-17', 'http://en.wikipedia.org/wiki/Kimi_R%C3%A4ikk%C3%B6nen'),
(14, 'Daniel', 'Ricciardo', 3, 'Australian', '1989-07-01', 'http://en.wikipedia.org/wiki/Daniel_Ricciardo'),
(15, 'George', 'Russell', 63, 'British', '1998-02-15', 'http://en.wikipedia.org/wiki/George_Russell_%28racing_driver%29'),
(16, 'Carlos', 'Sainz', 55, 'Spanish', '1994-09-01', 'http://en.wikipedia.org/wiki/Carlos_Sainz_Jr.'),
(17, 'Mick', 'Schumacher', 47, 'German', '1999-03-22', 'http://en.wikipedia.org/wiki/Mick_Schumacher'),
(18, 'Lance', 'Stroll', 18, 'Canadian', '1998-10-29', 'http://en.wikipedia.org/wiki/Lance_Stroll'),
(19, 'Yuki', 'Tsunoda', 22, 'Japanese', '2000-05-11', 'http://en.wikipedia.org/wiki/Yuki_Tsunoda'),
(20, 'Max', 'Verstappen', 33, 'Dutch', '1997-09-30', 'http://en.wikipedia.org/wiki/Max_Verstappen'),
(21, 'Sebastian', 'Vettel', 5, 'German', '1987-07-03', 'http://en.wikipedia.org/wiki/Sebastian_Vettel'),
(22, 'Jack', 'Aitken', 89, 'British', '1995-09-23', 'http://en.wikipedia.org/wiki/Jack_Aitken'),
(23, 'Alexander', 'Albon', 23, 'Thai', '1996-03-23', 'http://en.wikipedia.org/wiki/Alexander_Albon'),
(24, 'Pietro', 'Fittipaldi', 51, 'Brazilian', '1996-06-25', 'http://en.wikipedia.org/wiki/Pietro_Fittipaldi'),
(25, 'Romain', 'Grosjean', 8, 'French', '1986-04-17', 'http://en.wikipedia.org/wiki/Romain_Grosjean'),
(26, 'Nico', 'Hülkenberg', 27, 'German', '1987-08-19', 'http://en.wikipedia.org/wiki/Nico_H%C3%BClkenberg'),
(27, 'Daniil', 'Kvyat', 26, 'Russian', '1994-04-26', 'http://en.wikipedia.org/wiki/Daniil_Kvyat'),
(28, 'Kevin', 'Magnussen', 20, 'Danish', '1992-10-05', 'http://en.wikipedia.org/wiki/Kevin_Magnussen'),
(29, 'Marcus', 'Ericsson', 9, 'Swedish', '1990-09-02', 'http://en.wikipedia.org/wiki/Marcus_Ericsson'),
(30, 'Brendon', 'Hartley', 28, 'New Zealander', '1989-11-10', 'http://en.wikipedia.org/wiki/Brendon_Hartley'),
(31, 'Sergey', 'Sirotkin', 35, 'Russian', '1995-08-27', 'http://en.wikipedia.org/wiki/Sergey_Sirotkin_(racing_driver)'),
(32, 'Stoffel', 'Vandoorne', 2, 'Belgian', '1992-03-26', 'http://en.wikipedia.org/wiki/Stoffel_Vandoorne');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `drivers_standing`
--

CREATE TABLE `drivers_standing` (
  `DriverPlace` int(11) NOT NULL,
  `ConstructorID` int(11) NOT NULL,
  `DriverID` int(11) NOT NULL,
  `Points` decimal(4,1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `races`
--

CREATE TABLE `races` (
  `Round` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `DateAndTime` datetime NOT NULL,
  `Circuit` varchar(255) NOT NULL,
  `City` varchar(255) NOT NULL,
  `Country` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `races`
--

INSERT INTO `races` (`Round`, `Name`, `DateAndTime`, `Circuit`, `City`, `Country`) VALUES
(1, 'Bahrain Grand Prix', '2022-03-20 16:00:00', 'Bahrain International Circuit', 'Sakhir', 'Bahrain'),
(2, 'Saudi Arabian Grand Prix', '2022-03-27 19:30:00', 'Jeddah Street Circuit', 'Jeddah', 'Saudi Arabia'),
(3, 'Australian Grand Prix', '2022-04-10 07:10:00', 'Albert Park Grand Prix Circuit', 'Melbourne', 'Australia'),
(4, 'Emilia Romagna Grand Prix', '2022-04-24 15:00:00', 'Autodromo Enzo e Dino Ferrari', 'Imola', 'Italy'),
(5, 'Miami Grand Prix', '2022-05-08 21:00:00', 'Miami International Autodrome', 'Miami', 'United States'),
(6, 'Spanish Grand Prix', '2022-05-22 15:00:00', 'Circuit de Barcelona-Catalunya', 'Montmeló', 'Spain'),
(7, 'Monaco Grand Prix', '2022-05-29 15:00:00', 'Circuit de Monaco', 'Monte-Carlo', 'Monaco'),
(8, 'Azerbaijan Grand Prix', '2022-06-12 14:00:00', 'Baku City Circuit', 'Baku', 'Azerbaijan'),
(9, 'Canadian Grand Prix', '2022-06-19 21:10:00', 'Circuit Gilles Villeneuve', 'Montreal', 'Canada'),
(10, 'British Grand Prix', '2022-07-03 16:00:00', 'Silverstone Circuit', 'Silverstone', 'UK'),
(11, 'Austrian Grand Prix', '2022-07-10 15:00:00', 'Red Bull Ring', 'Spielberg', 'Austria'),
(12, 'French Grand Prix', '2022-07-24 15:00:00', 'Circuit Paul Ricard', 'Le Castellet', 'France'),
(13, 'Hungarian Grand Prix', '2022-07-31 15:00:00', 'Hungaroring', 'Budapest', 'Hungary'),
(14, 'Belgian Grand Prix', '2022-08-28 15:00:00', 'Circuit de Spa-Francorchamps', 'Spa', 'Belgium'),
(15, 'Dutch Grand Prix', '2022-09-04 15:00:00', 'Circuit Park Zandvoort', 'Zandvoort', 'Netherlands'),
(16, 'Italian Grand Prix', '2022-09-11 15:00:00', 'Autodromo Nazionale di Monza', 'Monza', 'Italy'),
(17, 'Russian Grand Prix', '2022-09-25 14:00:00', 'Sochi Autodrom', 'Sochi', 'Russia'),
(18, 'Singapore Grand Prix', '2022-10-02 14:10:00', 'Marina Bay Street Circuit', 'Marina Bay', 'Singapore'),
(19, 'Japanese Grand Prix', '2022-10-09 07:10:00', 'Suzuka Circuit', 'Suzuka', 'Japan'),
(20, 'United States Grand Prix', '2022-10-23 21:00:00', 'Circuit of the Americas', 'Austin', 'USA'),
(21, 'Mexico City Grand Prix', '2022-10-30 20:00:00', 'Autódromo Hermanos Rodríguez', 'Mexico City', 'Mexico'),
(22, 'São Paulo Grand Prix', '2022-11-13 18:00:00', 'Autódromo José Carlos Pace', 'São Paulo', 'Brazil'),
(23, 'Abu Dhabi Grand Prix', '2022-11-20 14:00:00', 'Yas Marina Circuit', 'Abu Dhabi', 'UAE');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `settings`
--

CREATE TABLE `settings` (
  `SettingID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Value` varchar(255) DEFAULT NULL,
  `LastUpdate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `settings`
--

INSERT INTO `settings` (`SettingID`, `Name`, `Value`, `LastUpdate`) VALUES
(1, 'DatabaseDataUpdate', NULL, '2021-04-08 00:39:17'),
(2, 'SeasonYear', '2022', '2022-01-30 01:13:18');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `constructors`
--
ALTER TABLE `constructors`
  ADD PRIMARY KEY (`ConstructorID`);

--
-- Indeksy dla tabeli `constructors_standing`
--
ALTER TABLE `constructors_standing`
  ADD PRIMARY KEY (`ConstructorPlace`),
  ADD KEY `ConstructorID` (`ConstructorID`);

--
-- Indeksy dla tabeli `drivers`
--
ALTER TABLE `drivers`
  ADD PRIMARY KEY (`DriverID`);

--
-- Indeksy dla tabeli `drivers_standing`
--
ALTER TABLE `drivers_standing`
  ADD PRIMARY KEY (`DriverPlace`),
  ADD KEY `ConstructorID` (`ConstructorID`),
  ADD KEY `DriverID` (`DriverID`);

--
-- Indeksy dla tabeli `races`
--
ALTER TABLE `races`
  ADD PRIMARY KEY (`Round`);

--
-- Indeksy dla tabeli `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`SettingID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `constructors`
--
ALTER TABLE `constructors`
  MODIFY `ConstructorID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT dla tabeli `drivers`
--
ALTER TABLE `drivers`
  MODIFY `DriverID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `constructors_standing`
--
ALTER TABLE `constructors_standing`
  ADD CONSTRAINT `constructors_standing_ibfk_1` FOREIGN KEY (`ConstructorID`) REFERENCES `constructors` (`ConstructorID`);

--
-- Ograniczenia dla tabeli `drivers_standing`
--
ALTER TABLE `drivers_standing`
  ADD CONSTRAINT `drivers_standing_ibfk_1` FOREIGN KEY (`ConstructorID`) REFERENCES `constructors` (`ConstructorID`),
  ADD CONSTRAINT `drivers_standing_ibfk_2` FOREIGN KEY (`DriverID`) REFERENCES `drivers` (`DriverID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
