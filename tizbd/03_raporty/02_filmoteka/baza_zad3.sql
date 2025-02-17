-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 26 Mar 2015, 12:02
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `filmoteka`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `filmy`
--

CREATE TABLE IF NOT EXISTS `filmy` (
  `IDFilm` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Tytul` text,
  `Gatunek` text,
  `RezyserID` int(10) unsigned DEFAULT NULL,
  `RecenzjaID` int(10) unsigned DEFAULT NULL,
  `Link` text,
  PRIMARY KEY (`IDFilm`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Zrzut danych tabeli `filmy`
--

INSERT INTO `filmy` (`IDFilm`, `Tytul`, `Gatunek`, `rezyserID`, `recenzjaID`, `link`) VALUES
(1, 'Matrix', 'SF', 1, 1, NULL),
(2, 'Gwiezdne Wojny', 'SF', 2, 2, NULL),
(3, 'Indiana Jones i Ostatnia Krucjata', 'Przygodowy', 3, 3, NULL),
(4, 'Jurassic Park', 'Przygodowy', 3, 4, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `recenzje`
--

CREATE TABLE IF NOT EXISTS `recenzje` (
  `IDRecenzja` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Ocena` int(10) unsigned DEFAULT NULL,
  `Tresc` longtext,
  `Recenzent` text,
  PRIMARY KEY (`IDRecenzja`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Zrzut danych tabeli `recenzje`
--

INSERT INTO `recenzje` (`IDRecenzja`, `Ocena`, `Tresc`, `Recenzent`) VALUES
(1, 5, 'Dobry film', 'Jan Nowak'),
(2, 4, 'Klasyka gatunku', 'Jan Nowak'),
(3, 4, 'Ciekawy', 'Andrzej Kowalski'),
(4, 3, 'Dinozaury i ludzie', 'Andrzej Kowalski');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rezyserzy`
--

CREATE TABLE IF NOT EXISTS `rezyserzy` (
  `IDRezyser` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Imie` text,
  `Nazwisko` text,
  PRIMARY KEY (`IDRezyser`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Zrzut danych tabeli `rezyserzy`
--

INSERT INTO `rezyserzy` (`IDRezyser`, `imie`, `nazwisko`) VALUES
(1, 'Andy', 'Wachowski'),
(2, 'George', 'Lucas'),
(3, 'Steven', 'Spielberg');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

