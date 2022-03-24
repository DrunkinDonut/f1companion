-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 24 Mar 2022, 04:10
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
(1, 'Alfa Romeo', 'Swiss', 'http://en.wikipedia.org/wiki/Alfa_Romeo_in_Formula_One', '#9A0002', 'alfa_romeo.png'),
(2, 'AlphaTauri', 'Italian', 'http://en.wikipedia.org/wiki/Scuderia_AlphaTauri', '#26284F', 'alphatauri_white.svg'),
(3, 'Alpine F1 Team', 'French', 'http://en.wikipedia.org/wiki/Alpine_F1_Team', '#101B2D', 'alpine_white.svg'),
(4, 'Aston Martin', 'British', 'http://en.wikipedia.org/wiki/Aston_Martin_in_Formula_One', '#015850', 'aston_martin_white.svg'),
(5, 'Ferrari', 'Italian', 'http://en.wikipedia.org/wiki/Scuderia_Ferrari', '#FE0000', 'ferrari.png'),
(6, 'Haas F1 Team', 'American', 'http://en.wikipedia.org/wiki/Haas_F1_Team', '#F01A3C', 'haas_white.svg'),
(7, 'McLaren', 'British', 'http://en.wikipedia.org/wiki/McLaren', '#FF8800', 'mclaren_white.svg'),
(8, 'Mercedes', 'German', 'http://en.wikipedia.org/wiki/Mercedes-Benz_in_Formula_One', '#01D2BF', 'mercedes.png'),
(9, 'Red Bull', 'Austrian', 'http://en.wikipedia.org/wiki/Red_Bull_Racing', '#161960', 'red_bull.png'),
(10, 'Williams', 'British', 'http://en.wikipedia.org/wiki/Williams_Grand_Prix_Engineering', '#009EDF', 'williams_white.svg'),
(11, 'Racing Point', 'British', 'http://en.wikipedia.org/wiki/Racing_Point_F1_Team', '#EB8FC0', 'racingpoint_white.svg'),
(12, 'Renault', 'French', 'http://en.wikipedia.org/wiki/Renault_in_Formula_One', '#F7C700', 'renault.png'),
(13, 'Toro Rosso', 'Italian', 'http://en.wikipedia.org/wiki/Scuderia_Toro_Rosso', '#032151', 'redbull_white.svg'),
(14, 'Force India', 'Indian', 'http://en.wikipedia.org/wiki/Racing_Point_Force_India', '#FFFFFF', 'force_india.png'),
(15, 'Sauber', 'Swiss', 'http://en.wikipedia.org/wiki/Sauber', '#DE3227', 'sauber.png'),
(16, 'BMW Sauber', 'German', 'http://en.wikipedia.org/wiki/BMW_Sauber', '#FFFFFF', 'bmw.png'),
(17, 'Honda', 'Japanese', 'http://en.wikipedia.org/wiki/Honda_Racing_F1', '#FFFFFF', 'honda.png'),
(18, 'Spyker', 'Dutch', 'http://en.wikipedia.org/wiki/Spyker_F1', '#FFFFFF', 'spyker.png'),
(19, 'Super Aguri', 'Japanese', 'http://en.wikipedia.org/wiki/Super_Aguri_F1', '#FFFFFF', 'super_aguri.png'),
(20, 'Toyota', 'Japanese', 'http://en.wikipedia.org/wiki/Toyota_Racing', '#FFFFFF', 'toyota_racing.png'),
(21, 'Brawn', 'British', 'http://en.wikipedia.org/wiki/Brawn_GP', '#FFFFFF', 'brawn.png'),
(22, 'Caterham', 'Malaysian', 'http://en.wikipedia.org/wiki/Caterham_F1', '#004F30', 'caterham.png'),
(23, 'Lotus F1', 'British', 'http://en.wikipedia.org/wiki/Lotus_F1', '#231F20', 'lotus.png'),
(24, 'Marussia', 'Russian', 'http://en.wikipedia.org/wiki/Marussia_F1', '#FFFFFF', 'marussia.png'),
(25, 'Arrows', 'British', 'http://en.wikipedia.org/wiki/Arrows_Grand_Prix_International', NULL, NULL),
(26, 'Benetton', 'Italian', 'http://en.wikipedia.org/wiki/Benetton_Formula', NULL, NULL),
(27, 'Jordan', 'Irish', 'http://en.wikipedia.org/wiki/Jordan_Grand_Prix', NULL, NULL),
(28, 'Lola', 'British', 'http://en.wikipedia.org/wiki/MasterCard_Lola', NULL, NULL),
(29, 'Minardi', 'Italian', 'http://en.wikipedia.org/wiki/Minardi', NULL, NULL),
(30, 'Prost', 'French', 'http://en.wikipedia.org/wiki/Prost_Grand_Prix', NULL, NULL),
(31, 'Stewart', 'British', 'http://en.wikipedia.org/wiki/Stewart_Grand_Prix', NULL, NULL),
(32, 'Tyrrell', 'British', 'http://en.wikipedia.org/wiki/Tyrrell_Racing', NULL, NULL),
(33, 'Manor Marussia', 'British', 'http://en.wikipedia.org/wiki/Manor_Motorsport', '#FFFFFF', 'marussia.png'),
(34, 'HRT', 'Spanish', 'http://en.wikipedia.org/wiki/Hispania_Racing', '#FFFFFF', 'hrt.png'),
(35, 'Lotus', 'Malaysian', 'http://en.wikipedia.org/wiki/Lotus_Racing', '#E1AB0D', 'team_lotus.png'),
(36, 'Virgin', 'British', 'http://en.wikipedia.org/wiki/Virgin_Racing', '#FFFFFF', 'virgin_racing.png'),
(37, 'MF1', 'Russian', 'http://en.wikipedia.org/wiki/Midland_F1_Racing', '#313131', 'mf1_racing.png'),
(38, 'Spyker MF1', 'Dutch', 'http://en.wikipedia.org/wiki/Midland_F1_Racing', '#313131', 'mf1_racing.png');

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
(1, 5, '44.0'),
(2, 8, '27.0'),
(3, 6, '10.0'),
(4, 1, '9.0'),
(5, 3, '8.0'),
(6, 2, '4.0'),
(7, 4, '0.0'),
(8, 10, '0.0'),
(9, 7, '0.0'),
(10, 9, '0.0');

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
(79, 'Alexander', 'Wurz', 0, 'Austrian', '1974-02-15', 'http://en.wikipedia.org/wiki/Alexander_Wurz'),
(80, 'Alexander', 'Albon', 23, 'Thai', '1996-03-23', 'http://en.wikipedia.org/wiki/Alexander_Albon'),
(81, 'Guanyu', 'Zhou', 24, 'Chinese', '1999-05-30', 'http://en.wikipedia.org/wiki/Guanyu_Zhou'),
(82, 'Jack', 'Aitken', 89, 'British', '1995-09-23', 'http://en.wikipedia.org/wiki/Jack_Aitken'),
(83, 'Pietro', 'Fittipaldi', 51, 'Brazilian', '1996-06-25', 'http://en.wikipedia.org/wiki/Pietro_Fittipaldi'),
(84, 'Brendon', 'Hartley', 28, 'New Zealander', '1989-11-10', 'http://en.wikipedia.org/wiki/Brendon_Hartley'),
(85, 'Sergey', 'Sirotkin', 35, 'Russian', '1995-08-27', 'http://en.wikipedia.org/wiki/Sergey_Sirotkin_(racing_driver)'),
(86, 'Stoffel', 'Vandoorne', 2, 'Belgian', '1992-03-26', 'http://en.wikipedia.org/wiki/Stoffel_Vandoorne'),
(87, 'Paul', 'di Resta', 0, 'British', '1986-04-16', 'http://en.wikipedia.org/wiki/Paul_di_Resta'),
(88, 'Jolyon', 'Palmer', 30, 'British', '1991-01-20', 'http://en.wikipedia.org/wiki/Jolyon_Palmer'),
(89, 'Pascal', 'Wehrlein', 94, 'German', '1994-10-18', 'http://en.wikipedia.org/wiki/Pascal_Wehrlein'),
(90, 'Rio', 'Haryanto', 88, 'Indonesian', '1993-01-22', 'http://en.wikipedia.org/wiki/Rio_Haryanto'),
(91, 'Felipe', 'Nasr', 12, 'Brazilian', '1992-08-21', 'http://en.wikipedia.org/wiki/Felipe_Nasr'),
(92, 'Roberto', 'Merhi', 98, 'Spanish', '1991-03-22', 'http://en.wikipedia.org/wiki/Roberto_Merhi'),
(93, 'Alexander', 'Rossi', 53, 'American', '1991-09-25', 'http://en.wikipedia.org/wiki/Alexander_Rossi_%28racing_driver%29'),
(94, 'Charles', 'Pic', 0, 'French', '1990-02-15', 'http://en.wikipedia.org/wiki/Charles_Pic'),
(95, 'Giedo', 'van der Garde', 0, 'Dutch', '1985-04-25', 'http://en.wikipedia.org/wiki/Giedo_van_der_Garde'),
(96, 'Jérôme', 'd\'Ambrosio', 0, 'Belgian', '1985-12-27', 'http://en.wikipedia.org/wiki/J%C3%A9r%C3%B4me_d%27Ambrosio'),
(97, 'Pedro', 'de la Rosa', 0, 'Spanish', '1971-02-24', 'http://en.wikipedia.org/wiki/Pedro_de_la_Rosa'),
(98, 'Narain', 'Karthikeyan', 0, 'Indian', '1977-01-14', 'http://en.wikipedia.org/wiki/Narain_Karthikeyan'),
(99, 'Vitaly', 'Petrov', 0, 'Russian', '1984-09-08', 'http://en.wikipedia.org/wiki/Vitaly_Petrov'),
(100, 'Bruno', 'Senna', 0, 'Brazilian', '1983-10-15', 'http://en.wikipedia.org/wiki/Bruno_Senna'),
(101, 'Karun', 'Chandhok', 0, 'Indian', '1984-01-19', 'http://en.wikipedia.org/wiki/Karun_Chandhok'),
(102, 'Lucas', 'di Grassi', 0, 'Brazilian', '1984-08-11', 'http://en.wikipedia.org/wiki/Lucas_di_Grassi'),
(103, 'Christian', 'Klien', 0, 'Austrian', '1983-02-07', 'http://en.wikipedia.org/wiki/Christian_Klien'),
(104, 'Sakon', 'Yamamoto', 0, 'Japanese', '1982-07-09', 'http://en.wikipedia.org/wiki/Sakon_Yamamoto'),
(105, 'Christijan', 'Albers', 0, 'Dutch', '1979-04-16', 'http://en.wikipedia.org/wiki/Christijan_Albers'),
(106, 'Scott', 'Speed', 0, 'American', '1983-01-24', 'http://en.wikipedia.org/wiki/Scott_Speed'),
(107, 'Markus', 'Winkelhock', 0, 'German', '1980-06-13', 'http://en.wikipedia.org/wiki/Markus_Winkelhock'),
(108, 'Robert', 'Doornbos', 0, 'Dutch', '1981-09-23', 'http://en.wikipedia.org/wiki/Robert_Doornbos'),
(109, 'Yuji', 'Ide', 0, 'Japanese', '1975-01-21', 'http://en.wikipedia.org/wiki/Yuji_Ide'),
(110, 'Franck', 'Montagny', 0, 'French', '1978-01-05', 'http://en.wikipedia.org/wiki/Franck_Montagny'),
(111, 'Tiago', 'Monteiro', 0, 'Portuguese', '1976-07-24', 'http://en.wikipedia.org/wiki/Tiago_Monteiro'),
(112, 'Juan', 'Pablo Montoya', 0, 'Colombian', '1975-09-20', 'http://en.wikipedia.org/wiki/Juan_Pablo_Montoya');

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
(1, 5, 8, '26.0'),
(2, 5, 16, '18.0'),
(3, 8, 5, '15.0'),
(4, 8, 15, '12.0'),
(5, 6, 52, '10.0'),
(6, 1, 2, '8.0'),
(7, 3, 11, '6.0'),
(8, 2, 19, '4.0'),
(9, 3, 1, '2.0'),
(10, 1, 81, '1.0'),
(11, 6, 17, '0.0'),
(12, 4, 18, '0.0'),
(13, 10, 80, '0.0'),
(14, 7, 14, '0.0'),
(15, 7, 10, '0.0'),
(16, 10, 7, '0.0'),
(17, 4, 49, '0.0'),
(18, 9, 12, '0.0'),
(19, 9, 20, '0.0'),
(20, 2, 3, '0.0');

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
(2, 'Saudi Arabian Grand Prix', '2022-03-27 19:00:00', 'Jeddah Corniche Circuit', 'Jeddah', 'Saudi Arabia'),
(3, 'Australian Grand Prix', '2022-04-10 07:00:00', 'Albert Park Grand Prix Circuit', 'Melbourne', 'Australia'),
(4, 'Emilia Romagna Grand Prix', '2022-04-24 15:00:00', 'Autodromo Enzo e Dino Ferrari', 'Imola', 'Italy'),
(5, 'Miami Grand Prix', '2022-05-08 21:30:00', 'Miami International Autodrome', 'Miami', 'United States'),
(6, 'Spanish Grand Prix', '2022-05-22 15:00:00', 'Circuit de Barcelona-Catalunya', 'Montmeló', 'Spain'),
(7, 'Monaco Grand Prix', '2022-05-29 15:00:00', 'Circuit de Monaco', 'Monte-Carlo', 'Monaco'),
(8, 'Azerbaijan Grand Prix', '2022-06-12 13:00:00', 'Baku City Circuit', 'Baku', 'Azerbaijan'),
(9, 'Canadian Grand Prix', '2022-06-19 20:00:00', 'Circuit Gilles Villeneuve', 'Montreal', 'Canada'),
(10, 'British Grand Prix', '2022-07-03 16:00:00', 'Silverstone Circuit', 'Silverstone', 'UK'),
(11, 'Austrian Grand Prix', '2022-07-10 15:00:00', 'Red Bull Ring', 'Spielberg', 'Austria'),
(12, 'French Grand Prix', '2022-07-24 15:00:00', 'Circuit Paul Ricard', 'Le Castellet', 'France'),
(13, 'Hungarian Grand Prix', '2022-07-31 15:00:00', 'Hungaroring', 'Budapest', 'Hungary'),
(14, 'Belgian Grand Prix', '2022-08-28 15:00:00', 'Circuit de Spa-Francorchamps', 'Spa', 'Belgium'),
(15, 'Dutch Grand Prix', '2022-09-04 15:00:00', 'Circuit Park Zandvoort', 'Zandvoort', 'Netherlands'),
(16, 'Italian Grand Prix', '2022-09-11 15:00:00', 'Autodromo Nazionale di Monza', 'Monza', 'Italy'),
(17, 'Singapore Grand Prix', '2022-10-02 14:00:00', 'Marina Bay Street Circuit', 'Marina Bay', 'Singapore'),
(18, 'Japanese Grand Prix', '2022-10-09 07:00:00', 'Suzuka Circuit', 'Suzuka', 'Japan'),
(19, 'United States Grand Prix', '2022-10-23 21:00:00', 'Circuit of the Americas', 'Austin', 'USA'),
(20, 'Mexico City Grand Prix', '2022-10-30 21:00:00', 'Autódromo Hermanos Rodríguez', 'Mexico City', 'Mexico'),
(21, 'Brazilian Grand Prix', '2022-11-13 19:00:00', 'Autódromo José Carlos Pace', 'São Paulo', 'Brazil'),
(22, 'Abu Dhabi Grand Prix', '2022-11-20 14:00:00', 'Yas Marina Circuit', 'Abu Dhabi', 'UAE');

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
(1, 'DatabaseDataUpdate', NULL, '2022-03-24 04:06:45'),
(2, 'SeasonYear', '2022', '2022-03-24 04:01:31');

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
  MODIFY `ConstructorID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT dla tabeli `drivers`
--
ALTER TABLE `drivers`
  MODIFY `DriverID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

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
