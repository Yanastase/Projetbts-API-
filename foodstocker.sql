-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 16 avr. 2024 à 11:02
-- Version du serveur : 8.2.0
-- Version de PHP : 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `foodstocker`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prix` decimal(5,2) NOT NULL,
  `date_peremp` datetime NOT NULL,
  `id_categorie` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id`, `nom`, `description`, `images`, `prix`, `date_peremp`, `id_categorie`, `stock`) VALUES
(1, 'Boeuf Bourguignon', 'Un plat classique français, mijoté lentement avec du boeuf, du vin rouge, des légumes et des herbes.', 'boeuf_bourguignon', 15.00, '2024-04-16 00:00:00', '1', 10),
(2, 'Poulet rôti', 'Poulet entier rôti au four, assaisonné d\'herbes fraîches et accompagné de pommes de terre rôties.', 'poulet_roti', 12.00, '2024-06-02 00:00:00', '1', 2),
(3, 'Lasagnes', 'Couches de pâtes, de sauce tomate, de viande hachée et de fromage fondu, gratinées au four.', 'lasagnes', 14.00, '2024-05-20 00:00:00', '1', 15),
(4, 'Paella', 'Un plat espagnol savoureux à base de riz, de fruits de mer, de poulet et d\'épices.', 'paella', 18.00, '2024-07-31 00:00:00', '1', 14),
(5, 'Pot-au-feu', 'Un plat français réconfortant avec des morceaux de viande cuits lentement, accompagnés de légumes.', 'pot-au-feu', 16.00, '2024-07-05 00:00:00', '1', 54),
(6, 'Ratatouille', 'Un plat végétarien provençal composé de légumes méditerranéens mijotés dans une sauce tomate.', 'ratatouille', 13.00, '2024-04-25 00:00:00', '1', 61),
(7, 'Quiche Lorraine', 'Une tarte salée avec une garniture à base de lardons, de crème et d\'oeufs.', 'quiche_lorraine', 10.00, '2024-10-18 00:00:00', '1', 74),
(8, 'Bœuf Stroganoff', 'Morceaux de bœuf tendres dans une sauce à la crème, aux champignons et aux oignons.', 'boeuf_stroganoff', 17.00, '2024-05-08 00:00:00', '1', 45),
(9, 'Choucroute garnie', 'Plat alsacien avec du chou fermenté, des saucisses, du lard et des pommes de terre.', 'choucroute_garnie', 14.00, '2024-06-23 00:00:00', '1', 32),
(10, 'Bouillabaisse', 'Une soupe de poisson provençale avec une variété de poissons, de fruits de mer et d\'aromates.', 'bouillabaisse', 20.00, '2024-07-13 00:00:00', '1', 21),
(11, 'Fajitas au poulet', 'Morceaux de poulet grillés servis avec des poivrons, des oignons et des tortillas.', 'fajitas_au_poulet', 14.00, '2024-09-29 00:00:00', '2', 98),
(12, 'Quesadillas aux crevettes', 'Tortillas garnies de crevettes, de fromage fondu et d\'une variété d\'épices.', 'quesadillas_aux_crevettes', 16.00, '2024-11-14 00:00:00', '2', 74),
(13, 'Chili con carne', 'Mélange épicé de viande hachée, de haricots, de tomates et d\'épices.', 'chili_con_carne', 12.00, '2024-07-23 00:00:00', '2', 54),
(14, 'Enchiladas au bœuf', 'Rouleaux de tortillas farcis de bœuf, de fromage et de sauce enchilada.', 'enchiladas_au_boeuf', 15.00, '2024-12-26 00:00:00', '2', 89),
(15, 'Nachos suprêmes', 'Nachos garnis de viande, de fromage fondu, de guacamole, de salsa et de crème aigre.', 'nachos_supremes', 10.00, '2024-09-07 00:00:00', '2', 10),
(16, 'Tacos au poisson', 'Tacos remplis de filets de poisson grillés, de salade et de sauce crémeuse.', 'tacos_au_poisson', 18.00, '2024-07-30 00:00:00', '2', 2),
(17, 'Burritos aux haricots noirs', 'Burritos végétariens avec des haricots noirs, du riz, de la salade et de la salsa.', 'burritos_aux_haricots_noirs', 13.00, '2024-05-30 00:00:00', '2', 47),
(18, 'Guacamole et chips', 'Avocats écrasés mélangés à des tomates, des oignons et des épices, servi avec des chips.', 'guacamole_et_chips', 8.00, '2024-06-10 00:00:00', '2', 65),
(19, 'Tamales au porc', 'Tamales de maïs farcis de viande de porc, cuits à la vapeur dans des feuilles de maïs.', 'tamales_au_porc', 17.00, '2024-06-27 00:00:00', '2', 31),
(20, 'Margarita aux fruits', 'Boisson rafraîchissante à base de tequila, de jus de citron vert et de fruits.', 'margarita_aux_fruits', 7.00, '2024-07-08 00:00:00', '2', 84),
(21, 'Poulet au curry', 'Morceaux de poulet tendres dans une sauce au curry aromatique, servi avec du riz.', 'poulet_au_curry', 16.00, '2024-08-20 00:00:00', '3', 98),
(22, 'Sushi assortis', 'Variété de sushis comprenant des makis, des sashimis et des nigiris.', 'sushi_assortis', 18.00, '2024-08-06 00:00:00', '3', 60),
(23, 'Nasi Goreng', 'Riz sauté indonésien avec des légumes, du poulet, des crevettes et des épices.', 'nasi_Goreng', 14.00, '2024-07-19 00:00:00', '3', 12),
(24, 'Kebab à l\'agneau', 'Viande d\'agneau grillée, servie dans un pain pita avec des légumes et une sauce à l\'ail.', 'kebab_agneau', 15.00, '2024-06-18 00:00:00', '3', 20),
(25, 'Ramens au porc', 'Nouilles japonaises dans un bouillon de porc, garnies de tranches de porc, d\'œufs et de légumes.', 'Ramens_au_porc', 13.00, '2024-09-22 00:00:00', '3', 25),
(26, 'Plateau mezzé libanais', 'Assortiment de plats libanais, y compris des falafels, du houmous et des feuilles de vigne farcies.', 'plateau_mezze_libanais', 20.00, '2024-10-06 00:00:00', '3', 26),
(27, 'Cheeseburger classique', 'Burger avec un steak de bœuf, du fromage, de la laitue, des tomates et des oignons.', 'cheeseburger_classique', 11.00, '2024-05-11 00:00:00', '4', 14),
(28, 'Ailes de poulet Buffalo', 'Ailes de poulet épicées, servies avec une sauce Buffalo et une trempette au fromage bleu.', 'ailes_de_poulet_Buffalo', 13.00, '2024-08-12 00:00:00', '4', 18),
(29, 'Chili Dog', 'Pain à hot-dog garni de saucisse, de chili, de fromage et d\'oignons.', 'chili_Dog', 8.00, '2024-05-02 00:00:00', '4', 49),
(30, 'Macaroni and Cheese', 'Pâtes macaroni mélangées à une sauce au fromage crémeuse.', 'macaroni_and_Cheese', 10.00, '2024-09-14 00:00:00', '4', 46),
(31, 'Barbecue Ribs', 'Côtes de porc grillées, nappées de sauce barbecue, accompagnées de frites.', 'barbecue_Ribs', 18.00, '2024-06-06 00:00:00', '4', 84);

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

DROP TABLE IF EXISTS `categorie`;
CREATE TABLE IF NOT EXISTS `categorie` (
  `id` int NOT NULL,
  `nom_categorie` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`id`, `nom_categorie`) VALUES
(1, ''),
(2, ''),
(1, 'Traditionel'),
(2, 'Tex-Mex'),
(3, 'oriental'),
(4, 'Americain');

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

DROP TABLE IF EXISTS `commande`;
CREATE TABLE IF NOT EXISTS `commande` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_commande` int NOT NULL,
  `date_commande` datetime NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `fournisseur`
--

DROP TABLE IF EXISTS `fournisseur`;
CREATE TABLE IF NOT EXISTS `fournisseur` (
  `id` int NOT NULL AUTO_INCREMENT,
  `numero_telephone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nom_fournisseur` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `fournisseur`
--

INSERT INTO `fournisseur` (`id`, `numero_telephone`, `nom_fournisseur`, `adresse`) VALUES
(1, '', 'FraisDélice', ''),
(2, '', 'TerreGourmande', ''),
(3, '', 'MerSaveurs', ''),
(4, '', 'ÉpicesPremium', ''),
(5, '', 'PastaPalais', ''),
(6, '', 'FromageFusion', ''),
(7, '', 'LaitDoré', ''),
(8, '', 'FourÀPain', ''),
(9, '', 'GlaçonsExquis', ''),
(10, '', 'SaveursEmballées', '');

-- --------------------------------------------------------

--
-- Structure de la table `panier`
--

DROP TABLE IF EXISTS `panier`;
CREATE TABLE IF NOT EXISTS `panier` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_panier` int NOT NULL,
  `nom` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prix` int NOT NULL,
  `quantite` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `role`
--

DROP TABLE IF EXISTS `role`;
CREATE TABLE IF NOT EXISTS `role` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_role` int NOT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_utilisateur` int NOT NULL,
  `nom` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse_mail` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mot_de_passe` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse_postale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numero_de_telephone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
