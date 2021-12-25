-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Czas generowania: 25 Gru 2021, 02:00
-- Wersja serwera: 10.4.14-MariaDB
-- Wersja PHP: 7.4.11

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
(1, 'Alfa Romeo', 'Swiss', 'http://en.wikipedia.org/wiki/Alfa_Romeo_in_Formula_One', NULL, NULL),
(2, 'AlphaTauri', 'Italian', 'http://en.wikipedia.org/wiki/Scuderia_AlphaTauri', NULL, NULL),
(3, 'Alpine F1 Team', 'French', 'http://en.wikipedia.org/wiki/Alpine_F1_Team', NULL, NULL),
(4, 'Aston Martin', 'British', 'http://en.wikipedia.org/wiki/Aston_Martin_in_Formula_One', NULL, NULL),
(5, 'Ferrari', 'Italian', 'http://en.wikipedia.org/wiki/Scuderia_Ferrari', NULL, NULL),
(6, 'Haas F1 Team', 'American', 'http://en.wikipedia.org/wiki/Haas_F1_Team', NULL, NULL),
(7, 'McLaren', 'British', 'http://en.wikipedia.org/wiki/McLaren', NULL, NULL),
(8, 'Mercedes', 'German', 'http://en.wikipedia.org/wiki/Mercedes-Benz_in_Formula_One', NULL, NULL),
(9, 'Red Bull', 'Austrian', 'http://en.wikipedia.org/wiki/Red_Bull_Racing', NULL, NULL),
(10, 'Williams', 'British', 'http://en.wikipedia.org/wiki/Williams_Grand_Prix_Engineering', NULL, NULL),
(11, 'Racing Point', 'British', 'http://en.wikipedia.org/wiki/Racing_Point_F1_Team', NULL, NULL),
(12, 'Renault', 'French', 'http://en.wikipedia.org/wiki/Renault_in_Formula_One', NULL, NULL);

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
(1, 8, '613.5'),
(2, 9, '585.5'),
(3, 5, '323.5'),
(4, 7, '275.0'),
(5, 3, '155.0'),
(6, 2, '142.0'),
(7, 4, '77.0'),
(8, 10, '23.0'),
(9, 1, '13.0'),
(10, 6, '0.0');

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

--
-- Zrzut danych tabeli `drivers_standing`
--

INSERT INTO `drivers_standing` (`DriverPlace`, `ConstructorID`, `DriverID`, `Points`) VALUES
(1, 9, 20, '395.5'),
(2, 8, 5, '387.5'),
(3, 8, 2, '226.0'),
(4, 9, 12, '190.0'),
(5, 5, 16, '164.5'),
(6, 7, 10, '160.0'),
(7, 5, 8, '159.0'),
(8, 7, 14, '115.0'),
(9, 2, 3, '110.0'),
(10, 3, 1, '81.0'),
(11, 3, 11, '74.0'),
(12, 4, 21, '43.0'),
(13, 4, 18, '34.0'),
(14, 2, 19, '32.0'),
(15, 10, 15, '16.0'),
(16, 1, 13, '10.0'),
(17, 10, 7, '7.0'),
(18, 1, 4, '3.0'),
(19, 6, 17, '0.0'),
(20, 1, 6, '0.0'),
(21, 6, 9, '0.0');

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
(1, 'Bahrain Grand Prix', '2021-03-28 17:00:00', 'Bahrain International Circuit', 'Sakhir', 'Bahrain'),
(2, 'Emilia Romagna Grand Prix', '2021-04-18 15:00:00', 'Autodromo Enzo e Dino Ferrari', 'Imola', 'Italy'),
(3, 'Portuguese Grand Prix', '2021-05-02 16:00:00', 'Autódromo Internacional do Algarve', 'Portimão', 'Portugal'),
(4, 'Spanish Grand Prix', '2021-05-09 15:00:00', 'Circuit de Barcelona-Catalunya', 'Montmeló', 'Spain'),
(5, 'Monaco Grand Prix', '2021-05-23 15:00:00', 'Circuit de Monaco', 'Monte-Carlo', 'Monaco'),
(6, 'Azerbaijan Grand Prix', '2021-06-06 14:00:00', 'Baku City Circuit', 'Baku', 'Azerbaijan'),
(7, 'French Grand Prix', '2021-06-20 15:00:00', 'Circuit Paul Ricard', 'Le Castellet', 'France'),
(8, 'Styrian Grand Prix', '2021-06-27 15:00:00', 'Red Bull Ring', 'Spielberg', 'Austria'),
(9, 'Austrian Grand Prix', '2021-07-04 15:00:00', 'Red Bull Ring', 'Spielberg', 'Austria'),
(10, 'British Grand Prix', '2021-07-18 16:00:00', 'Silverstone Circuit', 'Silverstone', 'UK'),
(11, 'Hungarian Grand Prix', '2021-08-01 15:00:00', 'Hungaroring', 'Budapest', 'Hungary'),
(12, 'Belgian Grand Prix', '2021-08-29 15:00:00', 'Circuit de Spa-Francorchamps', 'Spa', 'Belgium'),
(13, 'Dutch Grand Prix', '2021-09-05 15:00:00', 'Circuit Park Zandvoort', 'Zandvoort', 'Netherlands'),
(14, 'Italian Grand Prix', '2021-09-12 15:00:00', 'Autodromo Nazionale di Monza', 'Monza', 'Italy'),
(15, 'Russian Grand Prix', '2021-09-26 14:00:00', 'Sochi Autodrom', 'Sochi', 'Russia'),
(16, 'Turkish Grand Prix', '2021-10-10 14:00:00', 'Istanbul Park', 'Istanbul', 'Turkey'),
(17, 'United States Grand Prix', '2021-10-24 21:00:00', 'Circuit of the Americas', 'Austin', 'USA'),
(18, 'Mexico City Grand Prix', '2021-11-07 20:00:00', 'Autódromo Hermanos Rodríguez', 'Mexico City', 'Mexico'),
(19, 'São Paulo Grand Prix', '2021-11-14 18:00:00', 'Autódromo José Carlos Pace', 'São Paulo', 'Brazil'),
(20, 'Qatar Grand Prix', '2021-11-21 15:00:00', 'Losail International Circuit', 'Al Daayen', 'Qatar'),
(21, 'Saudi Arabian Grand Prix', '2021-12-05 18:30:00', 'Jeddah Street Circuit', 'Jeddah', 'Saudi Arabia'),
(22, 'Abu Dhabi Grand Prix', '2021-12-12 14:00:00', 'Yas Marina Circuit', 'Abu Dhabi', 'UAE');

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
(2, 'SeasonYear', '2021', '2021-12-25 01:57:34');

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
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `constructors`
--
ALTER TABLE `constructors`
  MODIFY `ConstructorID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

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
