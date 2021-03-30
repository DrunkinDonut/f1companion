-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Czas generowania: 30 Mar 2021, 23:28
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
  `BackgroundColor` varchar(255) NOT NULL,
  `LogoPictureName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `constructors_standing`
--

CREATE TABLE `constructors_standing` (
  `ConstructorPlace` int(11) NOT NULL,
  `ConstructorID` int(11) NOT NULL,
  `Points` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `drivers`
--

CREATE TABLE `drivers` (
  `DriverID` int(11) NOT NULL,
  `ConstructorID` int(11) NOT NULL,
  `FirstName` varchar(255) NOT NULL,
  `LastName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `drivers_standing`
--

CREATE TABLE `drivers_standing` (
  `DriverPlace` int(11) NOT NULL,
  `ConstructorID` int(11) NOT NULL,
  `DriverID` int(11) NOT NULL,
  `Points` int(3) NOT NULL
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
  ADD PRIMARY KEY (`ConstructorPlace`);

--
-- Indeksy dla tabeli `drivers`
--
ALTER TABLE `drivers`
  ADD PRIMARY KEY (`DriverID`);

--
-- Indeksy dla tabeli `drivers_standing`
--
ALTER TABLE `drivers_standing`
  ADD PRIMARY KEY (`DriverPlace`);

--
-- Indeksy dla tabeli `races`
--
ALTER TABLE `races`
  ADD PRIMARY KEY (`Round`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
