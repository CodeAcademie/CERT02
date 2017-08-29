-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Mar 29 Août 2017 à 14:38
-- Version du serveur :  5.7.19-0ubuntu0.16.04.1
-- Version de PHP :  7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `cert02`
--

--
-- Contenu de la table `t_debts`
--

INSERT INTO `t_debts` (`id`, `owner`, `amount`, `name`, `state`) VALUES
(1, 1, 50, 'Name of the debt', 'Terminé'),
(2, 1, 20, 'Name of the debt', 'En Cours'),
(3, 1, 75, 'Name of the debt', 'En Cours'),
(4, 1, 30, 'Name of the debt', 'Terminé'),
(5, 1, 150, 'Name of the debt', 'En Cours');

--
-- Contenu de la table `t_groups`
--

INSERT INTO `t_groups` (`id`, `name`) VALUES
(1, 'NAME TEAM');

--
-- Contenu de la table `t_users`
--

INSERT INTO `t_users` (`id`, `email`, `password`, `adress`, `groupid`, `loggedIn`) VALUES
(1, 'admin@toto.fr', '6daaa468c6c83ad91cbb33df8592677cb3230c2b', '23 rue d\'aiguillon, 35200 Rennes', 1, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
