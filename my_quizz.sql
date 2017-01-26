-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Dim 04 Décembre 2016 à 22:35
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `my_quizz`
--

-- --------------------------------------------------------

--
-- Structure de la table `answers`
--

CREATE TABLE `answers` (
  `id` int(11) NOT NULL,
  `answer` longtext COLLATE utf8_unicode_ci NOT NULL,
  `validated` tinyint(1) NOT NULL,
  `question_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `answers`
--

INSERT INTO `answers` (`id`, `answer`, `validated`, `question_id`) VALUES
(115, 'q0r0', 1, 68),
(116, 'q0r0', 0, 68),
(117, 'q0r0', 0, 68),
(118, 'q1r1', 0, 69),
(119, 'q1r1', 0, 69),
(120, 'q1r1', 1, 69),
(121, 'q2r2', 1, 70),
(122, 'q2r2', 0, 70),
(123, 'q2r2', 0, 70),
(124, 'q0r0', 1, 81),
(125, 'q0r0', 0, 81),
(126, 'q0r0', 0, 81),
(127, 'q1r1', 1, 82),
(128, 'q1r1', 0, 82),
(129, 'q1r1', 0, 82),
(130, 'q2r2', 1, 83),
(131, 'q2r2', 0, 83),
(132, 'q2r2', 0, 83),
(133, 'q3r3', 1, 84),
(134, 'q3r3', 0, 84),
(135, 'q3r3', 0, 84),
(136, 'q4r4', 1, 85),
(137, 'q4r4', 0, 85),
(138, 'q4r4', 0, 85),
(139, 'q5r5', 0, 86),
(140, 'q5r5', 1, 86),
(141, 'q5r5', 0, 86),
(142, 'q6r6', 0, 87),
(143, 'q6r6', 1, 87),
(144, 'q6r6', 0, 87),
(145, 'q7r7', 0, 88),
(146, 'q7r7', 1, 88),
(147, 'q7r7', 0, 88),
(148, 'q8r8', 0, 89),
(149, 'q8r8', 0, 89),
(150, 'q8r8', 1, 89),
(151, 'q9r9', 0, 90),
(152, 'q9r9', 0, 90),
(153, 'q9r9', 1, 90),
(154, 'q0r0', 1, 91),
(155, 'q0r0', 0, 91),
(156, 'q0r0', 0, 91),
(157, 'q1r1', 0, 92),
(158, 'q1r1', 1, 92),
(159, 'q1r1', 0, 92),
(160, 'q2r2', 0, 93),
(161, 'q2r2', 0, 93),
(162, 'q2r2', 1, 93),
(163, 'q3r3', 0, 94),
(164, 'q3r3', 1, 94),
(165, 'q3r3', 0, 94),
(166, 'q4r4', 1, 95),
(167, 'q4r4', 0, 95),
(168, 'q4r4', 0, 95),
(169, 'q5r5', 1, 96),
(170, 'q5r5', 0, 96),
(171, 'q5r5', 0, 96),
(172, 'q6r6', 0, 97),
(173, 'q6r6', 1, 97),
(174, 'q6r6', 0, 97),
(175, 'q7r7', 1, 98),
(176, 'q7r7', 0, 98),
(177, 'q7r7', 0, 98),
(178, 'q8r8', 0, 99),
(179, 'q8r8', 0, 99),
(180, 'q8r8', 1, 99),
(181, 'q9r9', 0, 100),
(182, 'q9r9', 0, 100),
(183, 'q9r9', 1, 100);

-- --------------------------------------------------------

--
-- Structure de la table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `question` longtext COLLATE utf8_unicode_ci NOT NULL,
  `quizz_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `questions`
--

INSERT INTO `questions` (`id`, `question`, `quizz_id`) VALUES
(1, 'Lequel de ces langages ne peut pas être exécuté côté serveur ?', NULL),
(68, 'd', 11),
(69, 'd', 11),
(70, 'u', 11),
(71, 'lala ? ', 12),
(72, 'lolo ? ', 12),
(73, 'lili ? ', 12),
(74, 'lele ? ', 12),
(75, 'lulu ? ', 12),
(76, 'kdskjd?', 12),
(77, 'a ', 12),
(78, 'b', 12),
(79, 'qsdkklqsdjklqsdjkl', 12),
(80, 'blabla', 12),
(81, 'p', 13),
(82, 'p', 13),
(83, 'p', 13),
(84, 'p', 13),
(85, 'p', 13),
(86, 'p', 13),
(87, 'p', 13),
(88, 'p', 13),
(89, 'p', 13),
(90, 'p\r\n', 13),
(91, 'Quelle est la différence entre le napel et le tuloupe ?', 14),
(92, 'Quelle est la différence entre le napel et le tuloupe ?', 14),
(93, 'Quelle est la différence entre le napel et le tuloupe ?', 14),
(94, 'Quelle est la différence entre le napel et le tuloupe ?', 14),
(95, 'Quelle est la différence entre le napel et le tuloupe ?', 14),
(96, 'Quelle est la différence entre le napel et le tuloupe ?', 14),
(97, 'Quelle est la différence entre le napel et le tuloupe ?', 14),
(98, 'Quelle est la différence entre le napel et le tuloupe ?', 14),
(99, 'Quelle est la différence entre le napel et le tuloupe ?', 14),
(100, 'Quelle est la différence entre le napel et le tuloupe ?', 14);

-- --------------------------------------------------------

--
-- Structure de la table `quizz`
--

CREATE TABLE `quizz` (
  `id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `quizz`
--

INSERT INTO `quizz` (`id`, `name`, `user_id`) VALUES
(5, 'toto', 12),
(6, ';;;,;,', NULL),
(7, 'yoyo', 12),
(8, 'yoyo', 12),
(9, 'le quizz', 12),
(10, 'haha', 12),
(11, 'foobar', 12),
(12, 'ihuhou', 12),
(13, 'balabala', 12),
(14, 'le quizz supreme', 12);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `confirmation_token` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `confirmation_token`, `password_requested_at`, `roles`) VALUES
(12, 'pi', 'pi', 'myriam.pillot@hotmail.fr', 'myriam.pillot@hotmail.fr', 1, NULL, '$2y$13$h78NE1HqHKPcba2XiB4IguEfXqbsOL7kdcaiEDqWyEOqV3eCJJnxe', '2016-12-04 13:17:57', NULL, NULL, 'a:0:{}');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_50D0C6061E27F6BF` (`question_id`);

--
-- Index pour la table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_8ADC54D5BA934BCD` (`quizz_id`);

--
-- Index pour la table `quizz`
--
ALTER TABLE `quizz`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_7C77973DA76ED395` (`user_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D64992FC23A8` (`username_canonical`),
  ADD UNIQUE KEY `UNIQ_8D93D649A0D96FBF` (`email_canonical`),
  ADD UNIQUE KEY `UNIQ_8D93D649C05FB297` (`confirmation_token`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;
--
-- AUTO_INCREMENT pour la table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT pour la table `quizz`
--
ALTER TABLE `quizz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `FK_50D0C6061E27F6BF` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`);

--
-- Contraintes pour la table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `FK_8ADC54D5BA934BCD` FOREIGN KEY (`quizz_id`) REFERENCES `quizz` (`id`);

--
-- Contraintes pour la table `quizz`
--
ALTER TABLE `quizz`
  ADD CONSTRAINT `FK_7C77973DA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
