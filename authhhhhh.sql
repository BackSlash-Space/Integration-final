-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 31 mars 2021 à 09:41
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `authhhhhh`
--

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `hotel_comments_id` int(11) NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_creation` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_5F9E962AA76ED395` (`user_id`),
  KEY `IDX_5F9E962ABDF9DFA9` (`hotel_comments_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `event`
--

DROP TABLE IF EXISTS `event`;
CREATE TABLE IF NOT EXISTS `event` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `dat_event` datetime NOT NULL,
  `cancel` tinyint(1) NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `event`
--

INSERT INTO `event` (`id`, `name`, `description`, `image`, `created_at`, `dat_event`, `cancel`, `address`, `phone`) VALUES
(1, 'haloween', '<div>c\'est pas grave&nbsp;</div>', '2020-04-06 at 11-32-14.png', '2021-03-30 18:34:21', '2021-03-19 19:33:00', 1, 'monastir', 73950384);

-- --------------------------------------------------------

--
-- Structure de la table `hotel`
--

DROP TABLE IF EXISTS `hotel`;
CREATE TABLE IF NOT EXISTS `hotel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stars_number` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `localisation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `adresse` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `available_rooms` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `hotel`
--

INSERT INTO `hotel` (`id`, `name`, `stars_number`, `description`, `localisation`, `image`, `updated_at`, `adresse`, `available_rooms`) VALUES
(1, 'Aziza Beach Golf & Spa', 4, 'L’hôtel Aziza Thalasso Golf est un hôtel 4 étoiles à Hammamet, il est l’un des meilleurs hôtels à Hammamet. Il se caractérise d’une architecture harmonieusement intégrée au site naturel, et offre tous le confort et le luxe correspondant aux attentes d’une clientèle exigeante.', 'Hammemet', 'aziza.jpg', '0000-00-00 00:00:00', 'Rue Assad Ibn Fourat BP 218, Hammamet 8050', 5),
(3, 'Marhaba Royal Salem', 4, 'Situation :\r\n \"La vraie paresse, c’est de se lever à 6 heures du matin pour avoir plus de temps à ne rien faire \", écrivait Tristan Bernard. Voilà le genre d’envies qui vous prennent à l’Hôtel Marhaba Royal Salem, véritable paradis blotti sur la côte de la ville de Sousse, au cœur d’un parc de 7 hectares, de sa palmeraie et sa forêt d eucalyptus.\r\nVotre refuge : une des chambres de style arabesque qui surplombent la mer.\r\nEntre piscine à débordement et plage de sable blanc, les baignades sont de purs moments de grâce\r\n \r\nHébergement et chambres :\r\nLe Royal Salem a conservé son caractère traditionnel, mais offre néanmoins à ses clients 316 chambres bien agencées et suites de luxe. Nos chambres disposent d\'une vue unique sur la mer et jardin extérieur.\r\n \r\nRestaurants & Bars :\r\n -Restaurant\r\n-Snack bar (restaurant à la carte)\r\n-Restaurant Tunisien\r\n-Barbecue au bord de la mer\r\n-Café maure\r\n-Snack bar (restaurant à la carte)\r\n-Buvette en bordure de piscine\r\n-Barbecue au bord de la mer\r\n-Café maure.\r\n \r\nServices :\r\n Une salle de conférences pour 200 personnes 3 salles de communications pour 30 personnes Équipement Internet et Multimédia : Services multimédia, matériel Audio\r\n-Visuel ultrasophistiqué.\r\n-1 Boutique -Salon de coiffure\r\n-2 piscines extérieures\r\n-Serviette plage gratuite\r\n-Piscine pour enfants\r\n-Piscine couverte chauffée\r\n-Mini Club Aire de jeux pour enfants1 salle de bridgeCourts de tennisPétanqueTir à l\'arcMini golfHand\r\n-ballBeach volleyBasket ballSport nautique.', 'Sousse', 'marhaba-Rsalem.jpg', '0000-00-00 00:00:00', ' Adresse :Boulevard 7 Novembre, Sousse 4039, TUNIS...', 4),
(4, 'Movenpick Du LAC TUNIS', 5, 'Passez un agréable séjour à Tunis en choisissant le Mövenpick Hotel du Lac Tunis, notre établissement 5 étoiles situé aux Berges du Lac, l\'élégant quartier diplomatique et des affaires de la capitale tunisienne. Grâce à sa situation idéale à seulement 15 minutes de l\'aéroport de Tunis-Carthage, du centre-ville de Tunis, de sa médina et des villes de La Marsa, Sidi Bou Saïd et Carthage, vous pourrez accéder très facilement à de nombreux commerces, parcours de golf et sites culturels. Détendez-vous avec un cocktail sans alcool ou du narguilé sur notre terrasse donnant sur le lac, servez-vous à nos copieux buffets et participez à un atelier de cuisine gastronomique authentique. Détendez-vous au spa S Per Aqua qui compte parmi ses magnifiques installations un bassin de relaxation, un sauna, des bassins d\'hydrothérapie et une salle de sport. L\'établissement compte six espaces pour l\'organisation de réunions, mariages et autres événements, parmi lesquels une somptueuse salle de bal d\'une capacité de 750 personnes.\r\n ', 'Berges du Lac', 'movenpick-lac-1.jpg', '0000-00-00 00:00:00', 'Rue du Lac Huron, Tunis 1053', 3),
(5, 'Movenpick Resort And Marine Spa Sousse', 4, 'A l’horizon de la ville la plus animée de Tunisie se trouve le Mövenpick Resort & Marine Spa Sousse. S’étendant sur un front de mer étincelant, ce superbe lieu d’escapade vous offre tout ce que vous attendez pour des vacances parfaites.Découvrez notre complexe touristique axé sur les familles et passez des vacances uniques. Nous avons associé avec succès des installations de conférences et de banquets modernes, ainsi qu’un vaste choix de restaurants. Nous nous efforcerons de rendre votre séjour à Sousse inoubliable.', 'Sousse', 'mevenpick_sousse.jpeg', '0000-00-00 00:00:00', 'Boulevard du 14 Janvier, Sousse 4039', 4);

-- --------------------------------------------------------

--
-- Structure de la table `offer`
--

DROP TABLE IF EXISTS `offer`;
CREATE TABLE IF NOT EXISTS `offer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `date_begin` datetime NOT NULL,
  `date_end` datetime NOT NULL,
  `cancel` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `offer`
--

INSERT INTO `offer` (`id`, `name`, `description`, `image`, `created_at`, `date_begin`, `date_end`, `cancel`) VALUES
(1, 'dfhh', '<div>j</div>', 'Capture.PNG', '2021-03-30 19:35:40', '2021-04-01 20:34:00', '2021-04-01 20:34:00', 0),
(2, 'pnl', '<div>akk</div>', 'diagramme totale.PNG', '2021-03-30 19:44:17', '2021-04-02 20:43:00', '2021-04-10 20:43:00', 0),
(3, 'gjhghjghj', '<div>bbhjhhjhhjhjjhhjhjjhhjhjhjbbbbbbbbhjbhjhj</div>', 'lina2.jpg', '2021-03-30 19:53:29', '2021-03-31 20:53:00', '2021-04-02 20:53:00', 0),
(4, 'fghfhgazaeaezwcxwcx', '<div>vnbnbnbvvvvvnbnbnvbvnnbnb</div>', 'lina.webp', '2021-03-30 19:54:31', '2021-03-31 20:53:00', '2021-04-02 20:54:00', 1);

-- --------------------------------------------------------

--
-- Structure de la table `reclamation`
--

DROP TABLE IF EXISTS `reclamation`;
CREATE TABLE IF NOT EXISTS `reclamation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `subject` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stars_number` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_CE606404A76ED395` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `reclamation`
--

INSERT INTO `reclamation` (`id`, `user_id`, `subject`, `message`, `stars_number`) VALUES
(1, 4, 'Restaurant', 'mauvais restaurant', 1);

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
CREATE TABLE IF NOT EXISTS `reservation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reservation` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `number_of_nights` int(11) NOT NULL,
  `number_ofrooms` int(11) NOT NULL,
  `number_of_adults` int(11) NOT NULL,
  `number_of_childs` int(11) NOT NULL,
  `room_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` double NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_42C8495542C84955` (`reservation`),
  KEY `IDX_42C84955A76ED395` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `temporal_user`
--

DROP TABLE IF EXISTS `temporal_user`;
CREATE TABLE IF NOT EXISTS `temporal_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code_generated` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_810D1488F85E0677` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `temporal_user`
--

INSERT INTO `temporal_user` (`id`, `username`, `email`, `code_generated`) VALUES
(1, 'ranime', 'ranime.benafia@esprit.tn', 'Sb31Ba'),
(2, 'shahir', 'CHAHIR.SGHAIER@ESPRIT.TN', 'vV1AwU'),
(4, 'meriem', 'meriem.miled@esprit.tn', 'pdduta'),
(5, 'oumaima', 'meriemmiled10@outlook.fr', 'opRcfx');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code_generated` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`),
  UNIQUE KEY `UNIQ_8D93D649F85E0677` (`username`),
  UNIQUE KEY `UNIQ_8D93D64968D05E93` (`code_generated`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `username`, `code_generated`, `roles`, `password`) VALUES
(1, 'ranime.benafia@esprit.tn', 'ranime', 'iOMXVW', '[\"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$MjJtb2hyekdNY0dkanBCcw$TNQ3kDNIwUxyzXArOtHdUpArR0Y0+l+8ljmfUy8xj88'),
(2, 'CHAHIR.SGHAIER@ESPRIT.TN', 'shahir', 'vV1AwU', '[\"ROLE_INTERNAUTE\"]', '$argon2id$v=19$m=65536,t=4,p=1$UnZSeHE3R3lFWkY0TGU5UQ$/6zaAV99G0XXgezp1eexysdmR0e/HLkDkRftyD2s8x8'),
(4, 'meriem.miled@esprit.tn', 'meriem', 'pdduta', '[\"ROLE_INTERNAUTE\"]', '$argon2id$v=19$m=65536,t=4,p=1$V1hPUEVDT25QNks1b3Rwbg$HFeypmzStKAybM0FiXSAYvGvzYoi3Y9EA/t0zcPtS68'),
(5, 'meriemmiled10@outlook.fr', 'oumaima', 'opRcfx', '[\"ROLE_INTERNAUTE\"]', '$argon2id$v=19$m=65536,t=4,p=1$a24yNmNZa0xkdTN2ZWMuRg$u2rsK/rOPioocoMMUWQUURN/6NdcmD4YI7UlRmyso/E');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `FK_5F9E962AA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_5F9E962ABDF9DFA9` FOREIGN KEY (`hotel_comments_id`) REFERENCES `hotel` (`id`);

--
-- Contraintes pour la table `reclamation`
--
ALTER TABLE `reclamation`
  ADD CONSTRAINT `FK_CE606404A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `FK_42C8495542C84955` FOREIGN KEY (`reservation`) REFERENCES `hotel` (`id`),
  ADD CONSTRAINT `FK_42C84955A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
