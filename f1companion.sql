-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Czas generowania: 11 Lut 2022, 23:22
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
(15, 'Sauber', 'Swiss', 'http://en.wikipedia.org/wiki/Sauber', '#D72F25', NULL),
(16, 'BMW Sauber', 'German', 'http://en.wikipedia.org/wiki/BMW_Sauber', NULL, NULL),
(17, 'Honda', 'Japanese', 'http://en.wikipedia.org/wiki/Honda_Racing_F1', NULL, NULL),
(18, 'Spyker', 'Dutch', 'http://en.wikipedia.org/wiki/Spyker_F1', NULL, NULL),
(19, 'Super Aguri', 'Japanese', 'http://en.wikipedia.org/wiki/Super_Aguri_F1', NULL, NULL),
(20, 'Toyota', 'Japanese', 'http://en.wikipedia.org/wiki/Toyota_Racing', NULL, NULL),
(21, 'Brawn', 'British', 'http://en.wikipedia.org/wiki/Brawn_GP', NULL, NULL),
(22, 'Caterham', 'Malaysian', 'http://en.wikipedia.org/wiki/Caterham_F1', NULL, NULL),
(23, 'Lotus F1', 'British', 'http://en.wikipedia.org/wiki/Lotus_F1', NULL, NULL),
(24, 'Marussia', 'Russian', 'http://en.wikipedia.org/wiki/Marussia_F1', NULL, NULL),
(25, 'Arrows', 'British', 'http://en.wikipedia.org/wiki/Arrows_Grand_Prix_International', NULL, NULL),
(26, 'Benetton', 'Italian', 'http://en.wikipedia.org/wiki/Benetton_Formula', NULL, NULL),
(27, 'Jordan', 'Irish', 'http://en.wikipedia.org/wiki/Jordan_Grand_Prix', NULL, NULL),
(28, 'Lola', 'British', 'http://en.wikipedia.org/wiki/MasterCard_Lola', NULL, NULL),
(29, 'Minardi', 'Italian', 'http://en.wikipedia.org/wiki/Minardi', NULL, NULL),
(30, 'Prost', 'French', 'http://en.wikipedia.org/wiki/Prost_Grand_Prix', NULL, NULL),
(31, 'Stewart', 'British', 'http://en.wikipedia.org/wiki/Stewart_Grand_Prix', NULL, NULL),
(32, 'Tyrrell', 'British', 'http://en.wikipedia.org/wiki/Tyrrell_Racing', NULL, NULL);

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
(22, 'Rubens', 'Barrichello', 0, 'Brazilian', '1972-05-23', 'http://en.wikipedia.org/wiki/Rubens_Barrichello'),
(23, 'Sébastien', 'Bourdais', 0, 'French', '1979-02-28', 'http://en.wikipedia.org/wiki/S%C3%A9bastien_Bourdais'),
(24, 'Jenson', 'Button', 22, 'British', '1980-01-19', 'http://en.wikipedia.org/wiki/Jenson_Button'),
(25, 'David', 'Coulthard', 0, 'British', '1971-03-27', 'http://en.wikipedia.org/wiki/David_Coulthard'),
(26, 'Anthony', 'Davidson', 0, 'British', '1979-04-18', 'http://en.wikipedia.org/wiki/Anthony_Davidson'),
(27, 'Giancarlo', 'Fisichella', 0, 'Italian', '1973-01-14', 'http://en.wikipedia.org/wiki/Giancarlo_Fisichella'),
(28, 'Timo', 'Glock', 0, 'German', '1982-03-18', 'http://en.wikipedia.org/wiki/Timo_Glock'),
(29, 'Nick', 'Heidfeld', 0, 'German', '1977-05-10', 'http://en.wikipedia.org/wiki/Nick_Heidfeld'),
(30, 'Heikki', 'Kovalainen', 0, 'Finnish', '1981-10-19', 'http://en.wikipedia.org/wiki/Heikki_Kovalainen'),
(31, 'Felipe', 'Massa', 19, 'Brazilian', '1981-04-25', 'http://en.wikipedia.org/wiki/Felipe_Massa'),
(32, 'Kazuki', 'Nakajima', 0, 'Japanese', '1985-01-11', 'http://en.wikipedia.org/wiki/Kazuki_Nakajima'),
(33, 'Nelson', 'Piquet Jr.', 0, 'Brazilian', '1985-07-25', 'http://en.wikipedia.org/wiki/Nelson_Piquet,_Jr.'),
(34, 'Nico', 'Rosberg', 6, 'German', '1985-06-27', 'http://en.wikipedia.org/wiki/Nico_Rosberg'),
(35, 'Takuma', 'Sato', 0, 'Japanese', '1977-01-28', 'http://en.wikipedia.org/wiki/Takuma_Sato'),
(36, 'Adrian', 'Sutil', 99, 'German', '1983-01-11', 'http://en.wikipedia.org/wiki/Adrian_Sutil'),
(37, 'Jarno', 'Trulli', 0, 'Italian', '1974-07-13', 'http://en.wikipedia.org/wiki/Jarno_Trulli'),
(38, 'Mark', 'Webber', 0, 'Australian', '1976-08-27', 'http://en.wikipedia.org/wiki/Mark_Webber_(racing_driver)'),
(39, 'Jaime', 'Alguersuari', 0, 'Spanish', '1990-03-23', 'http://en.wikipedia.org/wiki/Jaime_Alguersuari'),
(40, 'Luca', 'Badoer', 0, 'Italian', '1971-01-25', 'http://en.wikipedia.org/wiki/Luca_Badoer'),
(41, 'Sébastien', 'Buemi', 0, 'Swiss', '1988-10-31', 'http://en.wikipedia.org/wiki/S%C3%A9bastien_Buemi'),
(42, 'Romain', 'Grosjean', 8, 'French', '1986-04-17', 'http://en.wikipedia.org/wiki/Romain_Grosjean'),
(43, 'Kamui', 'Kobayashi', 10, 'Japanese', '1986-09-13', 'http://en.wikipedia.org/wiki/Kamui_Kobayashi'),
(44, 'Vitantonio', 'Liuzzi', 0, 'Italian', '1980-08-06', 'http://en.wikipedia.org/wiki/Vitantonio_Liuzzi'),
(45, 'Jules', 'Bianchi', 17, 'French', '1989-08-03', 'http://en.wikipedia.org/wiki/Jules_Bianchi'),
(46, 'Max', 'Chilton', 4, 'British', '1991-04-21', 'http://en.wikipedia.org/wiki/Max_Chilton'),
(47, 'Marcus', 'Ericsson', 9, 'Swedish', '1990-09-02', 'http://en.wikipedia.org/wiki/Marcus_Ericsson'),
(48, 'Esteban', 'Gutiérrez', 21, 'Mexican', '1991-08-05', 'http://en.wikipedia.org/wiki/Esteban_Guti%C3%A9rrez'),
(49, 'Nico', 'Hülkenberg', 27, 'German', '1987-08-19', 'http://en.wikipedia.org/wiki/Nico_H%C3%BClkenberg'),
(50, 'Daniil', 'Kvyat', 26, 'Russian', '1994-04-26', 'http://en.wikipedia.org/wiki/Daniil_Kvyat'),
(51, 'André', 'Lotterer', 45, 'German', '1981-11-19', 'http://en.wikipedia.org/wiki/Andr%C3%A9_Lotterer'),
(52, 'Kevin', 'Magnussen', 20, 'Danish', '1992-10-05', 'http://en.wikipedia.org/wiki/Kevin_Magnussen'),
(53, 'Pastor', 'Maldonado', 13, 'Venezuelan', '1985-03-09', 'http://en.wikipedia.org/wiki/Pastor_Maldonado'),
(54, 'Will', 'Stevens', 28, 'British', '1991-06-28', 'http://en.wikipedia.org/wiki/Will_Stevens'),
(55, 'Jean-Éric', 'Vergne', 25, 'French', '1990-04-25', 'http://en.wikipedia.org/wiki/Jean-%C3%89ric_Vergne'),
(56, 'Jean', 'Alesi', 0, 'French', '1964-06-11', 'http://en.wikipedia.org/wiki/Jean_Alesi'),
(57, 'Gerhard', 'Berger', 0, 'Austrian', '1959-08-27', 'http://en.wikipedia.org/wiki/Gerhard_Berger'),
(58, 'Pedro', 'Diniz', 0, 'Brazilian', '1970-05-22', 'http://en.wikipedia.org/wiki/Pedro_Diniz'),
(59, 'Norberto', 'Fontana', 0, 'Argentine', '1975-01-20', 'http://en.wikipedia.org/wiki/Norberto_Fontana'),
(60, 'Heinz-Harald', 'Frentzen', 0, 'German', '1967-05-18', 'http://en.wikipedia.org/wiki/Heinz-Harald_Frentzen'),
(61, 'Mika', 'Häkkinen', 0, 'Finnish', '1968-09-28', 'http://en.wikipedia.org/wiki/Mika_H%C3%A4kkinen'),
(62, 'Johnny', 'Herbert', 0, 'British', '1964-06-25', 'http://en.wikipedia.org/wiki/Johnny_Herbert'),
(63, 'Damon', 'Hill', 0, 'British', '1960-09-17', 'http://en.wikipedia.org/wiki/Damon_Hill'),
(64, 'Eddie', 'Irvine', 0, 'British', '1965-11-10', 'http://en.wikipedia.org/wiki/Eddie_Irvine'),
(65, 'Ukyo', 'Katayama', 0, 'Japanese', '1963-05-29', 'http://en.wikipedia.org/wiki/Ukyo_Katayama'),
(66, 'Nicola', 'Larini', 0, 'Italian', '1964-03-19', 'http://en.wikipedia.org/wiki/Nicola_Larini'),
(67, 'Jan', 'Magnussen', 0, 'Danish', '1973-07-04', 'http://en.wikipedia.org/wiki/Jan_Magnussen'),
(68, 'Tarso', 'Marques', 0, 'Brazilian', '1976-01-19', 'http://en.wikipedia.org/wiki/Tarso_Marques'),
(69, 'Gianni', 'Morbidelli', 0, 'Italian', '1968-01-13', 'http://en.wikipedia.org/wiki/Gianni_Morbidelli'),
(70, 'Shinji', 'Nakano', 0, 'Japanese', '1971-04-01', 'http://en.wikipedia.org/wiki/Shinji_Nakano'),
(71, 'Olivier', 'Panis', 0, 'French', '1966-09-02', 'http://en.wikipedia.org/wiki/Olivier_Panis'),
(72, 'Ricardo', 'Rosset', 0, 'Brazilian', '1968-07-27', 'http://en.wikipedia.org/wiki/Ricardo_Rosset'),
(73, 'Mika', 'Salo', 0, 'Finnish', '1966-11-30', 'http://en.wikipedia.org/wiki/Mika_Salo'),
(74, 'Ralf', 'Schumacher', 0, 'German', '1975-06-30', 'http://en.wikipedia.org/wiki/Ralf_Schumacher'),
(75, 'Michael', 'Schumacher', 0, 'German', '1969-01-03', 'http://en.wikipedia.org/wiki/Michael_Schumacher'),
(76, 'Vincenzo', 'Sospiri', 0, 'Italian', '1966-10-07', 'http://en.wikipedia.org/wiki/Vincenzo_Sospiri'),
(77, 'Jos', 'Verstappen', 0, 'Dutch', '1972-03-04', 'http://en.wikipedia.org/wiki/Jos_Verstappen'),
(78, 'Jacques', 'Villeneuve', 0, 'Canadian', '1971-04-09', 'http://en.wikipedia.org/wiki/Jacques_Villeneuve'),
(79, 'Alexander', 'Wurz', 0, 'Austrian', '1974-02-15', 'http://en.wikipedia.org/wiki/Alexander_Wurz');

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
(1, 'DatabaseDataUpdate', NULL, '2022-02-11 22:40:21'),
(2, 'SeasonYear', '2021', '2022-02-11 23:21:37');

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
  MODIFY `ConstructorID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT dla tabeli `drivers`
--
ALTER TABLE `drivers`
  MODIFY `DriverID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

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
