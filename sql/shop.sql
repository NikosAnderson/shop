-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mar 24 Novembre 2015 à 14:31
-- Version du serveur :  5.6.21
-- Version de PHP :  5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `shop`
--
CREATE DATABASE IF NOT EXISTS `shop` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `shop`;

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
`id` int(11) unsigned NOT NULL,
  `category` int(3) DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(11,2) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `rating` decimal(1,1) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `product`
--

INSERT INTO `product` (`id`, `category`, `name`, `description`, `price`, `picture`, `rating`, `date`) VALUES
(1, 0, 'Apple iPhone 6 16 Go', 'L’iPhone 6 n’est pas seulement plus grand en taille. Il est plus grand en tout.', '709.00', 'apple_iphone6.jpg', '0.0', '2015-09-25 16:03:06'),
(2, 0, 'Samsung Galaxy S5 16 Go', 'Le Galaxy S5, un concentré de technologie dans un design chic et glamour.', '459.90', 'samsung_galaxy_s5.jpg', '0.0', '2015-10-01 16:03:06'),
(3, 0, 'LG G3 32 Go', 'LE LG G3 ÉLU MEILLEUR SMARTPHONE 2014 AU MWC 2015.', '384.35', 'lg_g3.jpg', '0.0', '2015-08-15 16:03:06'),
(4, 0, 'Google Nexus 5 16 Go', 'Un téléphone plus grand avec toujours plus de fonctionnalités.', '499.99', 'google_nexus6.jpg', '0.0', '2015-10-01 16:03:06');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `product`
--
ALTER TABLE `product`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `product`
--
ALTER TABLE `product`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
