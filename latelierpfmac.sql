-- phpMyAdmin SQL Dump
-- version 4.1.9
-- http://www.phpmyadmin.net
--
-- Client :  latelierpfmac.mysql.db
-- Généré le :  Jeu 27 Novembre 2014 à 21:42
-- Version du serveur :  5.1.73-2+squeeze+build1+1-log
-- Version de PHP :  5.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `latelierpfmac`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'ordinateurs', 'Ordinateurs Mac Apple, du MacBook Air à l''iMac, en passant par le MacBook Pro', '2014-11-04 00:00:00', '0000-00-00 00:00:00'),
(2, 'tablettes', 'iPads, iPads air, iPads minis ', '2014-11-04 00:00:00', '0000-00-00 00:00:00'),
(3, 'pièces détachées', 'Du processeur à la carte mère en passant par le disque dure', '2014-11-04 00:00:00', '2014-11-04 19:04:29'),
(4, 'accessoires', 'Coques, housses, claviers, audio ...', '2014-11-04 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(255) NOT NULL,
  `contenu` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `telephone` varchar(15) NOT NULL,
  `service` varchar(255) NOT NULL,
  `photo1` varchar(255) DEFAULT NULL,
  `photo2` varchar(255) DEFAULT NULL,
  `photo3` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=48 ;

--
-- Contenu de la table `messages`
--

INSERT INTO `messages` (`id`, `author`, `contenu`, `email`, `telephone`, `service`, `photo1`, `photo2`, `photo3`, `created_at`, `updated_at`) VALUES
(1, 'Robin', 'Mon message test', 'robin.chalas@gomail.com', '', 'technique', NULL, NULL, NULL, '2014-10-30 18:49:06', '2014-10-30 17:49:06'),
(2, 'Robin', 'Mon message test', 'robin.chalas@gomail.com', '', 'technique', NULL, NULL, NULL, '2014-10-30 18:49:38', '2014-10-30 17:49:38'),
(3, 'Robin', 'Mon message test', 'robin.chalas@gomail.com', '', 'technique', NULL, NULL, NULL, '2014-10-30 18:49:50', '2014-10-30 17:49:50'),
(4, 'Robin', 'Mon message test', 'robin.chalas@gomail.com', '', 'technique', NULL, NULL, NULL, '2014-10-30 18:57:14', '2014-10-30 17:57:14'),
(5, 'Robin', 'Mon message test', 'robin.chalas@gomail.com', '', 'technique', NULL, NULL, NULL, '2014-10-30 18:57:36', '2014-10-30 17:57:36'),
(6, 'Robin', 'Mon message test', 'robin.chalas@gomail.com', '', 'technique', NULL, NULL, NULL, '2014-10-30 18:57:52', '2014-10-30 17:57:52'),
(7, 'Robin', 'Mon message test', 'robin.chalas@gomail.com', '', 'technique', NULL, NULL, NULL, '2014-10-30 18:58:13', '2014-10-30 17:58:13'),
(8, 'Robin', 'Mon message test', 'robin.chalas@gomail.com', '', 'technique', NULL, NULL, NULL, '2014-10-30 18:58:23', '2014-10-30 17:58:23'),
(9, 'Robin', 'Mon message test', 'robin.chalas@gomail.com', '', 'technique', NULL, NULL, NULL, '2014-10-30 18:58:42', '2014-10-30 17:58:42'),
(10, 'Robin', 'Mon message test', 'robin.chalas@gomail.com', '', 'technique', NULL, NULL, NULL, '2014-10-30 19:00:07', '2014-10-30 18:00:07'),
(11, 'Robin', 'Mon message test', 'robin.chalas@gomail.com', '', 'technique', NULL, NULL, NULL, '2014-10-30 19:00:18', '2014-10-30 18:00:18'),
(12, 'Robin', 'Mon message test', 'robin.chalas@gomail.com', '', 'technique', NULL, NULL, NULL, '2014-10-30 19:00:58', '2014-10-30 18:00:58'),
(13, 'Robin', 'Mon message test', 'robin.chalas@gomail.com', '', 'technique', NULL, NULL, NULL, '2014-10-30 19:01:51', '2014-10-30 18:01:51'),
(14, 'Robin', 'Mon message test', 'robin.chalas@gomail.com', '', 'technique', NULL, NULL, NULL, '2014-10-30 19:02:28', '2014-10-30 18:02:28'),
(15, 'Robin', 'MOn mail', 'robin.chalas@gmail.com', '', 'commercial', NULL, NULL, NULL, '2014-10-30 19:06:29', '2014-10-30 18:06:29'),
(16, 'yoyoy', 'Salouté', 'robin.chalas@gmail.com', '', 'commercial', NULL, NULL, NULL, '2014-10-30 19:09:59', '2014-10-30 18:09:59'),
(17, 'yoyoy', 'Salouté', 'robin.chalas@gmail.com', '', 'commercial', NULL, NULL, NULL, '2014-10-30 19:17:01', '2014-10-30 18:17:01'),
(18, 'robin', 'message', 'robin.chalas@epitech.eu', '', 'commercial', NULL, NULL, NULL, '2014-10-30 19:17:45', '2014-10-30 18:17:45'),
(19, 'robin', 'message', 'robin.chalas@epitech.eu', '', 'commercial', NULL, NULL, NULL, '2014-10-30 19:20:25', '2014-10-30 18:20:25'),
(20, 'robin', 'message', 'robin.chalas@epitech.eu', '', 'commercial', NULL, NULL, NULL, '2014-10-30 19:22:51', '2014-10-30 18:22:51'),
(21, 'robin', 'message', 'robin.chalas@epitech.eu', '', 'commercial', NULL, NULL, NULL, '2014-10-30 19:24:17', '2014-10-30 18:24:17'),
(22, 'Robin', 'salouté', 'robin.chalas@epitech.eu', '', 'technique', NULL, NULL, NULL, '2014-10-30 19:39:20', '2014-10-30 18:39:20'),
(23, 'Robin', 'salouté', 'robin.chalas@epitech.eu', '', 'technique', NULL, NULL, NULL, '2014-10-30 19:40:27', '2014-10-30 18:40:27'),
(24, 'Robinse', 'seeef<swdqs', 'robin.chalas@epitech.eu', '', 'technique', NULL, NULL, NULL, '2014-10-30 19:53:53', '2014-10-30 18:53:53'),
(25, 'Robin', 'opelow', 'mika@hotmail.fr', '', 'commercial', NULL, NULL, NULL, '2014-10-30 20:12:42', '2014-10-30 19:12:42'),
(26, 'Robin', 'opelow', 'mika@hotmail.fr', '', 'commercial', NULL, NULL, NULL, '2014-10-30 20:13:26', '2014-10-30 19:13:26'),
(27, 'Robin', 'opelow', 'mika@hotmail.fr', '', 'commercial', NULL, NULL, NULL, '2014-10-30 20:15:12', '2014-10-30 19:15:12'),
(28, 'Robin', 'opelow', 'mika@hotmail.fr', '', 'commercial', NULL, NULL, NULL, '2014-10-30 20:15:48', '2014-10-30 19:15:48'),
(29, 'TEST', 'Mon message de test !', 'test@test.fr', '', 'commercial', NULL, NULL, NULL, '2014-10-30 20:38:20', '2014-10-30 19:38:20'),
(30, 'Mike', 'connerie salut', 'mike1702@gmail.com', '', 'technique', NULL, NULL, NULL, '2014-11-01 11:36:38', '2014-11-01 10:36:38'),
(31, 'Robin', 'TEST', 'robin.chalas@epitech.eu', '', 'technique', NULL, NULL, NULL, '2014-11-01 18:51:50', '2014-11-01 17:51:50'),
(32, 'yo', '', 'yoyo-du-26@hotmail.fr', '', 'commercial', NULL, NULL, NULL, '2014-11-02 14:49:02', '2014-11-02 13:49:02'),
(33, 'Robin', 'Salouté', 'robin.chalas@epitech.eu', '', 'commercial', NULL, NULL, NULL, '2014-11-02 18:27:41', '2014-11-02 17:27:41'),
(34, 'Robin CHALAS', 'Salut c''est robi', 'robin.chalas@epitech.eu', '', 'commercial', NULL, NULL, NULL, '2014-11-06 10:38:10', '2014-11-06 09:38:10'),
(35, 'Robin CHALAS', 'Salut c''est robi', 'robin.chalas@epitech.eu', '', 'commercial', NULL, NULL, NULL, '2014-11-06 10:39:09', '2014-11-06 09:39:09'),
(36, 'Robin CHALAS', 'Salut c''est robi', 'robin.chalas@epitech.eu', '', 'commercial', NULL, NULL, NULL, '2014-11-06 10:39:13', '2014-11-06 09:39:13'),
(37, 'Robin CHALAS', 'Salut c''est robi', 'robin.chalas@epitech.eu', '', 'commercial', NULL, NULL, NULL, '2014-11-06 10:39:16', '2014-11-06 09:39:16'),
(38, 'Yo', 'Yo', 'yoyo-du-26@hotmail.fr', '', 'commercial', NULL, NULL, NULL, '2014-11-08 10:18:40', '2014-11-08 09:18:40'),
(39, 'FABIENNE CHALAS', 'Je suis pas contente', 'fabycha@gmail.com', '', 'commercial', NULL, NULL, NULL, '2014-11-09 13:55:24', '2014-11-09 12:55:24'),
(40, 'robin', 'salut', 'robin.chalas@epitech.eu', '', 'commercial', NULL, NULL, NULL, '2014-11-10 14:12:32', '2014-11-10 13:12:32'),
(41, 'Robin', 'Salut test O VH', 'robin.chalas@epitech.eu', '', 'commercial', NULL, NULL, NULL, '2014-11-10 14:25:59', '2014-11-10 13:25:59'),
(42, 'guillard', '', '', '', 'commercial', NULL, NULL, NULL, '2014-11-13 11:47:50', '2014-11-13 10:47:50'),
(43, 'HUB', 'yo', 'robin@hub.fr', '', 'commercial', NULL, NULL, NULL, '2014-11-13 19:52:36', '2014-11-13 18:52:36'),
(44, 'teSt', 'test iphone', 'robin@iphonr.eu', '', 'commercial', NULL, NULL, NULL, '2014-11-18 01:30:26', '2014-11-18 00:30:26'),
(45, 'teSt', 'test iphone', 'robin@iphonr.eu', '', 'commercial', NULL, NULL, NULL, '2014-11-18 01:30:28', '2014-11-18 00:30:28'),
(46, 'teSt', 'test iphone', 'robin@iphonr.eu', '', 'commercial', NULL, NULL, NULL, '2014-11-18 01:30:35', '2014-11-18 00:30:35'),
(47, 'Guillaume C', 'Bonjour, \r\nJ''ai récemment endommagé le clavier de mon macbook pro. Certaines touches ne fonctionnent plus. \r\n\r\nCombien facturez vous pour le remplacement d''un clavier ? \r\n\r\nMerci d''avance. \r\nCordialement. \r\nGuillaume.C', 'gllaume.cath@gmail.com', '', 'commercial', NULL, NULL, NULL, '2014-11-25 22:58:12', '2014-11-25 21:58:12');

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `category_id` int(11) NOT NULL,
  `prix` int(11) NOT NULL,
  `photo1` varchar(255) DEFAULT NULL,
  `photo2` varchar(255) DEFAULT NULL,
  `photo3` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Contenu de la table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `category_id`, `prix`, `photo1`, `photo2`, `photo3`, `created_at`, `updated_at`) VALUES
(20, 'iMac 21,5"- 860 €', '(Late 2011)\r\n//Intel Quad Core I5 / 2,5 GHz \r\n/ Ram 4 Go \r\n/ HD 500 Go \r\n// iLife, iWork 09, Pack Office 2011 \r\n// Garantie 6 mois', 1, 860, 'imac21-macmini-ipadmini.jpg', 'imac21-macmini-ipadmini.jpg', 'ipadmini-imac21-macmini.jpg', '2014-11-11 09:29:23', '2014-11-11 09:23:07'),
(24, 'Display Apple 27"', '(Late 2012) \r\n// Thunderbolt / USB /MagSafe \r\n//Haute Résolution /Stéréo Intégrée \r\n// Garantie 6 Mois', 1, 690, 'aimg_1614.jpg', 'img_1614 - copie1.jpg', 'img_1614 - copie2.jpg', '2014-11-16 16:48:17', '2014-11-16 15:48:17');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT '1',
  `level_id` int(11) NOT NULL,
  `confirmed` int(11) NOT NULL DEFAULT '0',
  `remember_token` int(11) NOT NULL,
  `confirmation_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_unique` (`username`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `role_id`, `level_id`, `confirmed`, `remember_token`, `confirmation_code`, `created_at`, `updated_at`) VALUES
(1, 'lateliermac', '$2y$10$NWbXJUfq1aF0PqfWXyqM3.BfpTei2MO/7kp5jpVrgrf9tQcYXBEVa', 'contact@lateliermac.com', 1, 0, 0, 2, NULL, '0000-00-00 00:00:00', '2014-11-12 09:53:26');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
