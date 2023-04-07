-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Jeu 17 Novembre 2022 à 16:57
-- Version du serveur :  5.7.11
-- Version de PHP :  7.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `cominfeve`
--

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `codeCategorie` varchar(3) NOT NULL,
  `nomCategorie` varchar(20) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `categorie`
--

INSERT INTO `categorie` (`codeCategorie`, `nomCategorie`, `description`) VALUES
('ACC', 'Accessoires', 'Cartes graphiques, micro-processeurs, barettes mémoire...'),
('DIS', 'Disquette', 'Disquettes 3 pce et 5 pce'),
('ECR', 'Ecran', 'Ecrans pour micro-ordinateurs PC et Mac'),
('IMP', 'Imprimante', 'Imprimantes pour micro-ordinateurs PC et Mac'),
('MIC', 'Micro', 'Micro-ordinateurs PC et Mac'),
('USB', 'Clé USB', 'Mémoire de stockage sur port USB');

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `codeClient` varchar(5) NOT NULL,
  `titre` varchar(4) NOT NULL,
  `nomClient` varchar(40) NOT NULL,
  `adresse` text NOT NULL,
  `codePostal` varchar(5) NOT NULL,
  `ville` varchar(30) NOT NULL,
  `departement` varchar(30) NOT NULL,
  `dateDeContact` date NOT NULL,
  `observations` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `client`
--

INSERT INTO `client` (`codeClient`, `titre`, `nomClient`, `adresse`, `codePostal`, `ville`, `departement`, `dateDeContact`, `observations`) VALUES
('ALB01', 'Mme', 'ALBAN', '8 rue des Vignes', '66700', 'ARGELES SUR MER', 'PYRENEES-ORIENTALES', '2004-11-06', 'Cliente contactée grâce à M. Richard de Nantes.'),
('BAT01', 'Mme', 'BATY', '42 rue de la Découverte', '35100', 'RENNES', 'ILLE-ET-VILAINE', '2003-12-22', ''),
('BOU01', 'M.', 'BOURDON', '51 Bd. des Enfants Polonais', '44000', 'NANTES', 'LOIRE-ATLANTIQUE', '2003-12-22', 'Frère de M. Bourdon à Brest'),
('BOU02', 'M.', 'BOURDON', '125 rue de la Gare', '29200', 'BREST', 'FINISTERE', '2003-10-13', ''),
('CHA01', 'Mme', 'CHAUVIN', '7 rue du Moulin à vent', '66000', 'PERPIGNAN', 'PYRENEES-ORIENTALES', '2003-10-15', ''),
('CHA02', 'M.', 'CHAMBRIET', '8 rue da la Sauleraie', '72000', 'LE MANS', 'SARTHE', '2003-11-06', ''),
('CHA03', 'Mlle', 'CHARRIER', '2 av de la Liberté', '17300', 'ROCHEFORT', 'CHARENTE', '2003-11-10', ''),
('DAB01', 'Mme', 'DABIN', '45 av des Lilas', '44390', 'NORT-SUR-ERDRE', 'LOIRE-ATLANTIQUE', '2003-10-29', ''),
('DRO01', 'M.', 'DROUAULT', '9 rue du Cerf-volant', '44000', 'NANTES', 'LOIRE-ATLANTIQUE', '2003-12-29', ''),
('DUM01', 'M.', 'DUMAINE', '152 Bd de l\'Espérance', '33120', 'ARCACHON', 'GIRONDE', '2003-12-12', 'Réduction de 10% sur la dernière commande (retard)'),
('DUT01', 'M.', 'DUTERTRE', '16 place Baudelaire', '66700', 'ARGELES SUR MER', 'PYRENEES-ORIENTALES', '2003-12-26', ''),
('FON01', 'M.', 'FONTAINE', '55 Bd. Victor Hugo', '75016', 'PARIS', 'PARIS 16ème', '2003-10-11', ''),
('GUE01', 'Mlle', 'GUENEC', '67 av du Fossé Blanc', '69003', 'LYON', 'RHONE', '2003-10-20', ''),
('GUI01', 'M.', 'GUILLOTEAU', '7 rue du Dr Rappin', '17000', 'LA ROCHELLE', 'CHARENTE-MARITIME', '2003-12-26', ''),
('HUG01', 'Mlle', 'HUGUET', '14 rue du Bon Pasteur', '44000', 'NANTES', 'LOIRE-ATLANTIQUE', '2003-12-01', ''),
('JAM01', 'M.', 'JAMES', '16 Bd. des Anglais', '17000', 'LA ROCHELLE', 'CHARENTE-MARITIME', '2003-12-28', ''),
('LAF01', 'M.', 'LAFFINEUR', '78 rue léon Blum', '17000', 'LA ROCHELLE', 'CHARENTE-MARITIME', '2003-11-25', ''),
('LAG01', 'Mme', 'LAGORGE', '3 rue du Soleil Levant', '49000', 'ANGERS', 'MAINE-ET-LOIRE', '2003-12-16', ''),
('LAM01', 'Mlle', 'LAMBERT', '8 Place Anatole France', '75016', 'PARIS', 'PARIS 16ème', '2003-12-13', ''),
('LEC01', 'Mme', 'LECLANCHE', 'Place Louis Leduc', '66700', 'ARGELES SUR MER', 'PYRENEES-ORIENTALES', '2003-11-11', ''),
('LEM01', 'M.', 'LEMARIE', '6 av Paul Grimion', '72000', 'LE MANS', 'SARTHE', '2003-12-23', 'Contact obtenu par M. Richard de Nantes'),
('LEN01', 'M.', 'LENOIR', '11 rue de la Fraternité', '34100', 'MONTPELLIER', 'HERAULT', '2003-11-23', ''),
('LER01', 'M.', 'LEROUX', '47 route Magny ', '79000', 'NIORT', 'DEUX-SEVRES', '2004-10-01', 'Client fidèle qui passe des commandes régulièrement (environ une par mois)'),
('MAR01', 'Mme', 'MARTIN', '6 rue du Bois Doré ', '72000', 'LE MANS', 'SARTHE', '2004-10-01', 'Remise de 10%  sur la dernière commande suite à un retard d’envoi'),
('MAR02', 'Mme', 'MARTINOU', '8 rue des Apôtres', '79000', 'NIORT', 'DEUX-SEVRES', '2004-01-26', ''),
('MAZ01', 'M.', 'MAZE', '12 Place St-Pierre', '85480', 'FOUGERE', 'VENDEE', '2003-11-01', ''),
('MEN01', 'M.', 'MENARD', '4 rue de Fontenaibleau', '40000', 'MONTMARSAN', 'LANDES', '2003-10-21', ''),
('MEU01', 'Mme', 'MEUNIER', '8 rue Duguay Trouin', '35100', 'RENNES', 'ILLE-ET-VILAINE', '2003-12-05', ''),
('MEU02', 'M.', 'MEURICE', '45 rue des Etoiles', '64100', 'BAYONNE', 'PYRENEES-ATLANTIQUES', '2003-12-13', 'Commande deux fois par an'),
('MIL01', 'M.', 'MILLAU', '78 rue de Contrescarpe', '34100', 'MONTPELLIER', 'HERAULT', '2003-12-30', ''),
('NIC01', 'M.', 'NICOLEAU', '89 rue des Trois Poupées', '72000', 'LE MANS', 'SARTHE', '2003-12-12', ''),
('NOR01', 'M.', 'NORMAND', '1 Bd. Ernest Renan', '17000', 'LA ROCHELLE', 'CHARENTE-MARITIME', '2003-11-03', ''),
('PAL01', 'Mlle', 'PALLUSSON', '163 route de Biarritz', '64100', 'BAYONNE', 'PYRENEES-ATLANTIQUES', '2003-11-12', ''),
('PER01', 'Mme', 'PERROUX', '85 Bd. Schumann', '34190', 'GANGES', 'HERAULT', '2003-11-16', 'Une commande le 16/11 puis plus rien'),
('PER02', 'M.', 'PERRODEAU', '3 Allée des Acacias', '35100', 'RENNES', 'ILLE-ET-VILAINE', '2003-11-19', ''),
('PEZ01', 'Mme', 'PEZET', '56 rue du Père Noël', '34190', 'GANGES', 'HERAULT', '2003-12-05', ''),
('REN01', 'Mme', 'RENARD', '45 rue du Château-Fort', '44000', 'NANTES', 'LOIRE-ATLANTIQUE', '2003-12-05', ''),
('REN02', 'M.', 'RENARD', '12 rue des Mimosas', '66000', 'PERPIGNAN', 'PYRENEES-ORIENTALES', '2003-10-10', ''),
('RIC01', 'M.', 'RICHARD', '18 rue de l’Hôtel de Ville', '44000', 'NANTES', 'LOIRE-ATLANTIQUE', '2004-12-01', 'A passé une grosse commande en janvier 2005 '),
('RIP01', 'Mlle', 'RIPOCHE', 'Les Herbiers', '34190', 'GANGES', 'HERAULT', '2003-12-15', ''),
('ROB01', 'Mlle', 'ROBIN', '21 rue de l\'Inconnu', '17100', 'ROCHEFORT', 'CHARENTE', '2003-12-27', ''),
('TAN01', 'M.', 'TANGUY', '22 Place des Lamantins', '53000', 'LAVAL', 'MAYENNE', '2003-11-16', 'Client très exigeant'),
('TEX01', 'M.', 'TEXIER', '1 av des Marguerites', '44000', 'NANTES', 'LOIRE-ATLANTIQUE', '2003-12-12', ''),
('THU01', 'Mme', 'THUAL', '16 rue la Santé', '33120', 'ARCACHON', 'GIRONDE', '2003-10-25', '');

-- --------------------------------------------------------

--
-- Structure de la table `commande_client`
--

CREATE TABLE `commande_client` (
  `numCommandeCliant` int(11) NOT NULL,
  `dateCommandeClient` date NOT NULL,
  `dateRetrait` date NOT NULL,
  `datePaiement` date NOT NULL,
  `modeDePaiement` text NOT NULL,
  `codeClient` varchar(5) NOT NULL,
  `matriculeEmploye` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `commande_client`
--

INSERT INTO `commande_client` (`numCommandeCliant`, `dateCommandeClient`, `dateRetrait`, `datePaiement`, `modeDePaiement`, `codeClient`, `matriculeEmploye`) VALUES
(1, '2003-12-12', '2003-12-12', '2003-12-12', 'Chèque 1234 Crédit Agricole', 'DUM01', 2),
(2, '2004-01-10', '2004-01-10', '2004-01-10', 'Chèque 4587 CIC', 'NIC01', 1),
(3, '2003-12-12', '2003-12-12', '2003-12-12', 'Espèces', 'NIC01', 1),
(4, '2003-12-22', '2001-12-28', '2003-12-28', 'Chèque 9875 BNP', 'BOU01', 2),
(5, '2003-12-08', '2003-12-08', '2003-12-08', 'Chèque 1235 Crédit Agricole', 'DUM01', 2),
(6, '2003-12-05', '2003-12-05', '2003-12-05', 'CB', 'REN01', 1),
(7, '2004-10-01', '2004-10-15', '2004-10-07', 'CB', 'LER01', 1),
(8, '2003-10-10', '2003-10-10', '2003-10-10', 'Espèces', 'REN02', 1);

-- --------------------------------------------------------

--
-- Structure de la table `commande_fournisseur`
--

CREATE TABLE `commande_fournisseur` (
  `numCommandeFournisseur` int(11) NOT NULL,
  `dateCommandeFournisseur` date NOT NULL,
  `dateLivraison` date NOT NULL,
  `datePaiement` date NOT NULL,
  `codeFournisseur` int(11) NOT NULL,
  `matriculeEmploye` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `commande_fournisseur`
--

INSERT INTO `commande_fournisseur` (`numCommandeFournisseur`, `dateCommandeFournisseur`, `dateLivraison`, `datePaiement`, `codeFournisseur`, `matriculeEmploye`) VALUES
(1, '2003-09-01', '2003-09-06', '2003-09-10', 1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `detailler_commande_client`
--

CREATE TABLE `detailler_commande_client` (
  `numCommandeClient` int(11) NOT NULL,
  `refProduit` varchar(4) NOT NULL,
  `quantite` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `detailler_commande_client`
--

INSERT INTO `detailler_commande_client` (`numCommandeClient`, `refProduit`, `quantite`) VALUES
(1, 'A101', 2),
(1, 'D101', 10),
(1, 'E101', 1),
(1, 'I101', 1),
(1, 'M201', 1),
(1, 'U201', 1),
(2, 'E202', 1),
(2, 'I105', 1),
(2, 'M302', 1),
(3, 'D101', 10),
(4, 'D201', 50),
(4, 'D202', 50),
(4, 'D203', 50),
(5, 'A101', 10),
(5, 'D201', 100),
(5, 'E102', 2),
(5, 'I101', 2),
(6, 'D104', 3),
(6, 'E201', 1),
(6, 'I303', 1),
(6, 'M102', 1),
(7, 'D101', 5),
(7, 'D102', 5),
(7, 'D103', 5),
(7, 'D104', 5),
(7, 'U201', 3),
(8, 'A201', 1),
(8, 'D101', 2),
(8, 'U101', 1);

-- --------------------------------------------------------

--
-- Structure de la table `detailler_commande_fournisseur`
--

CREATE TABLE `detailler_commande_fournisseur` (
  `numCommandeFournisseur` int(11) NOT NULL,
  `refProduit` varchar(4) NOT NULL,
  `quantite` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `detailler_commande_fournisseur`
--

INSERT INTO `detailler_commande_fournisseur` (`numCommandeFournisseur`, `refProduit`, `quantite`) VALUES
(1, 'A101', 10),
(1, 'A201', 10),
(1, 'A202', 10),
(1, 'A203', 10),
(1, 'A204', 10),
(1, 'D101', 1000),
(1, 'D102', 1000),
(1, 'D103', 1000),
(1, 'D104', 1000),
(1, 'D201', 500),
(1, 'D202', 500),
(1, 'D203', 500),
(1, 'E101', 10),
(1, 'E102', 10),
(1, 'E201', 10),
(1, 'E202', 10),
(1, 'I101', 10),
(1, 'I102', 10),
(1, 'I103', 10),
(1, 'I104', 10),
(1, 'I105', 10),
(1, 'I201', 10),
(1, 'I202', 10),
(1, 'I301', 10),
(1, 'I302', 10),
(1, 'I303', 10),
(1, 'I304', 10),
(1, 'M101', 10),
(1, 'M102', 10),
(1, 'M201', 10),
(1, 'M301', 10),
(1, 'M302', 10),
(1, 'U101', 500),
(1, 'U102', 500),
(1, 'U201', 500);

-- --------------------------------------------------------

--
-- Structure de la table `employe`
--

CREATE TABLE `employe` (
  `matricule` int(11) NOT NULL,
  `nomEmploye` varchar(20) NOT NULL,
  `prenomEmploye` varchar(20) NOT NULL,
  `dateDeRecrutement` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `employe`
--

INSERT INTO `employe` (`matricule`, `nomEmploye`, `prenomEmploye`, `dateDeRecrutement`) VALUES
(1, 'Lavoisier', 'Robert', '2001-01-15'),
(2, 'Bassetti', 'Alain', '2001-01-23'),
(3, 'Fortun', 'Anne', '2001-01-30');

-- --------------------------------------------------------

--
-- Structure de la table `fournir`
--

CREATE TABLE `fournir` (
  `codeFournisseur` int(11) NOT NULL,
  `refProduit` varchar(4) NOT NULL,
  `delaiLivraison` int(11) NOT NULL,
  `prixUnitaire` float NOT NULL,
  `refFournisseur` text NOT NULL,
  `quantiteMin` int(11) NOT NULL,
  `tailleLot` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `fournir`
--

INSERT INTO `fournir` (`codeFournisseur`, `refProduit`, `delaiLivraison`, `prixUnitaire`, `refFournisseur`, `quantiteMin`, `tailleLot`) VALUES
(1, 'A101', 2, 76.5, 'INF001', 1, 1),
(1, 'A201', 2, 126, 'INF002', 1, 1),
(1, 'A202', 2, 171, 'INF003', 1, 1),
(1, 'A203', 2, 184.5, 'INF004', 1, 1),
(1, 'A204', 2, 216, 'INF005', 1, 1),
(1, 'D101', 2, 4.5, 'INF006', 1, 1),
(1, 'D102', 2, 4.5, 'INF007', 1, 1),
(1, 'D103', 2, 9, 'INF008', 1, 1),
(1, 'D104', 2, 9, 'INF009', 1, 1),
(1, 'D201', 2, 2.7, 'INF010', 1, 1),
(1, 'D202', 2, 3.6, 'INF011', 1, 1),
(1, 'D203', 2, 8.1, 'INF012', 1, 1),
(1, 'E101', 3, 342, 'INF013', 1, 1),
(1, 'E102', 3, 414, 'INF014', 1, 1),
(1, 'E201', 3, 594, 'INF015', 1, 1),
(1, 'E202', 3, 666, 'INF016', 1, 1),
(1, 'I101', 3, 796.5, 'INF017', 1, 1),
(1, 'I102', 3, 706.5, 'INF018', 1, 1),
(1, 'I103', 3, 1476, 'INF019', 1, 1),
(1, 'I104', 3, 1584, 'INF020', 1, 1),
(1, 'I105', 3, 2250, 'INF021', 1, 1),
(1, 'I201', 3, 576, 'INF022', 1, 1),
(1, 'I202', 3, 414, 'INF023', 1, 1),
(1, 'I301', 3, 576, 'INF024', 1, 1),
(1, 'I302', 3, 657, 'INF025', 1, 1),
(1, 'I303', 3, 1098, 'INF026', 1, 1),
(1, 'I304', 3, 2124, 'INF027', 1, 1),
(1, 'M101', 3, 562.5, 'INF028', 1, 1),
(1, 'M102', 3, 832.5, 'INF029', 1, 1),
(1, 'M201', 3, 1224, 'INF030', 1, 1),
(1, 'M301', 3, 2376, 'INF031', 1, 1),
(1, 'M302', 3, 2745, 'INF032', 1, 1),
(1, 'U101', 2, 71.1, 'INF033', 1, 1),
(1, 'U102', 2, 85.5, 'INF034', 1, 1),
(1, 'U201', 2, 103.5, 'INF035', 1, 1),
(2, 'A101', 3, 63.75, 'a123a456', 1, 1),
(2, 'A202', 3, 142.5, 'b234b567', 1, 1),
(2, 'A204', 3, 180, 'c345c678', 1, 1),
(2, 'D101', 3, 3.75, 'd456d789', 10, 10),
(2, 'D103', 3, 7.5, 'e567e890', 10, 10),
(2, 'D201', 3, 2.25, 'f678f901', 10, 10),
(2, 'D203', 3, 6.75, 'g789g012', 10, 10),
(2, 'E101', 3, 285, 'h890h123', 1, 1),
(2, 'E201', 3, 495, 'i901i234', 1, 1),
(2, 'I101', 3, 663.75, 'j012j345', 1, 1),
(2, 'I103', 3, 1230, 'k123k456', 1, 1),
(2, 'I105', 3, 1875, 'l234l567', 1, 1),
(2, 'I201', 3, 480, 'm345m678', 1, 1),
(2, 'I301', 3, 480, 'n456n789', 1, 1),
(2, 'I303', 3, 915, 'o567o890', 1, 1),
(2, 'M101', 5, 468.75, 'p678p901', 1, 1),
(2, 'M201', 5, 1020, 'q789q012', 1, 1),
(2, 'M301', 5, 1980, 'r890r123', 1, 1),
(2, 'U101', 3, 59.25, 's901s234', 1, 1),
(2, 'U201', 3, 86.25, 't012t345', 1, 1),
(3, 'A202', 6, 140.6, '1', 1, 3),
(3, 'A203', 6, 151.7, '2', 1, 3),
(3, 'A204', 6, 177.6, '3', 1, 3),
(3, 'E201', 6, 488.4, '4', 1, 1),
(3, 'E202', 6, 547.6, '5', 1, 1),
(3, 'I103', 6, 1213.6, '6', 1, 1),
(3, 'I104', 6, 1302.4, '7', 1, 1),
(3, 'I105', 6, 1850, '8', 1, 1),
(3, 'I303', 6, 902.8, '9', 1, 1),
(3, 'I304', 6, 1746.4, '10', 1, 1),
(3, 'M301', 6, 1953.6, '11', 1, 1),
(3, 'M302', 6, 2257, '12', 1, 1),
(4, 'E101', 6, 281.2, '1', 1, 1),
(4, 'E102', 6, 340.4, '2', 1, 1),
(4, 'E201', 6, 488.4, '3', 1, 1),
(4, 'E202', 6, 547.6, '4', 1, 1),
(4, 'I101', 6, 654.9, '5', 1, 1),
(4, 'I102', 6, 580.9, '6', 1, 1),
(4, 'I103', 6, 1213.6, '7', 1, 1),
(4, 'I104', 6, 1302.4, '8', 1, 1),
(4, 'I105', 6, 1850, '9', 1, 1),
(4, 'I201', 6, 473.6, '10', 1, 1),
(4, 'I202', 6, 340.4, '11', 1, 1),
(4, 'I301', 6, 473.6, '12', 1, 1),
(4, 'I302', 6, 540.2, '13', 1, 1),
(4, 'I303', 6, 902.8, '14', 1, 1),
(4, 'I304', 6, 1746.4, '15', 1, 1),
(4, 'M101', 6, 462.5, '16', 1, 1),
(4, 'M102', 6, 684.5, '17', 1, 1),
(4, 'M201', 6, 1006.4, '18', 1, 1),
(4, 'M301', 6, 1953.6, '19', 1, 1),
(4, 'M302', 6, 2257, '20', 1, 1),
(5, 'D101', 2, 2.25, 'aa', 10, 100),
(5, 'D102', 2, 2.25, 'ab', 10, 100),
(5, 'D103', 2, 4.5, 'ac', 10, 100),
(5, 'D104', 2, 4.5, 'ad', 10, 100),
(5, 'D201', 2, 1.35, 'ae', 10, 50),
(5, 'D202', 2, 1.8, 'af', 10, 50),
(5, 'D203', 2, 4.05, 'ag', 10, 50),
(5, 'U101', 2, 35.55, 'ba', 10, 15),
(5, 'U102', 2, 42.75, 'bb', 10, 15),
(5, 'U201', 2, 51.75, 'bc', 10, 15),
(6, 'E101', 1, 304, 'E001', 1, 1),
(6, 'E102', 1, 368, 'E002', 1, 1),
(6, 'E201', 1, 528, 'E003', 1, 1),
(6, 'E202', 1, 592, 'E004', 1, 1),
(7, 'M101', 4, 468.75, '26', 1, 1),
(7, 'M102', 4, 693.75, '25', 1, 1),
(7, 'M201', 4, 1020, '24', 1, 1),
(7, 'M301', 4, 1980, '23', 1, 1),
(7, 'M302', 4, 2287.5, '22', 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `fournisseur`
--

CREATE TABLE `fournisseur` (
  `codeFournisseur` int(11) NOT NULL,
  `nomFournisseur` varchar(40) NOT NULL,
  `adresse` text NOT NULL,
  `codePostal` varchar(5) NOT NULL,
  `ville` varchar(30) NOT NULL,
  `departement` varchar(30) NOT NULL,
  `coordonneesBancaires` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `fournisseur`
--

INSERT INTO `fournisseur` (`codeFournisseur`, `nomFournisseur`, `adresse`, `codePostal`, `ville`, `departement`, `coordonneesBancaires`) VALUES
(1, 'INFOCHOSE', '40 rue de Melun', '77000', 'MELUN', 'SEINE-ET-MARNE', 'IBAN FR14 5001 1234 6512 45A7 4521983'),
(2, 'DISTRIMAX', '10 rue de Paris', '75000', 'PARIS', 'PARIS', 'IBAN FR07 6500 7451 1234 78R8 4512369'),
(3, 'INFOX', '45 allée des lilias', '58210', 'URBI', 'NIEVRE', 'IBAN FR45 4870 9865 4571 78K2 1230563'),
(4, 'LES ORDI FRANCS', '45 rue du plombier', '45123', 'ORLEANS', 'LOIRET', 'IBAN FR00 7845 1298 1324 65D4 7485910'),
(5, 'MHR', '30 rue du capitaine', '77310', 'PRINGY', 'SEINE-ET-MARNE', 'IBAN FR87 1200 6542 1345 48J4 1234568'),
(6, 'PLASMAX', '95 rue de la cerise', '69123', 'LYON', 'RHONE', 'IBAN FR77 4523 1256 8751 12F4 1236985'),
(7, 'IF NUMERIC', '50 rue du capitaine', '76120', 'DELL', 'SEINE-MARITIME', 'IBAN FR66 4523 1268 5496 12T2 1233000');

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `refProduit` varchar(4) NOT NULL,
  `categorie` varchar(3) NOT NULL,
  `famille` varchar(30) NOT NULL,
  `designation` text NOT NULL,
  `export` tinyint(1) NOT NULL,
  `prixUnitaire` float NOT NULL,
  `TVA` float NOT NULL,
  `stockAlerte` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `produit`
--

INSERT INTO `produit` (`refProduit`, `categorie`, `famille`, `designation`, `export`, `prixUnitaire`, `TVA`, `stockAlerte`) VALUES
('A101', 'ACC', 'Mémoire', 'Barettes Mémoire 2 Méga', 1, 85, 0.3333, 20),
('A201', 'ACC', 'Cartes', 'Cartes graphiques VGA', 0, 140, 0.3333, 3),
('A202', 'ACC', 'Cartes', 'Cartes graphiques SVGA 800x600 pts', 0, 190, 0.3333, 3),
('A203', 'ACC', 'Cartes', 'Cartes SVGA 1024x768pts, non entrelacé', 0, 205, 0.3333, 3),
('A204', 'ACC', 'Cartes', 'Cartes SVGA 1024x768 pts, entrelacé', 0, 240, 0.3333, 3),
('D101', 'DIS', '3 pces 1/2', 'Disquettes basse densité - bleu (x10)', 1, 5, 0.196, 100),
('D102', 'DIS', '3 pces 1/2', 'Disquettes basse densité - noire (x10)', 1, 5, 0.196, 100),
('D103', 'DIS', '3 pces 1/2', 'Disquettes haute densité - bleu (x10)', 1, 10, 0.196, 100),
('D104', 'DIS', '3 pces 1/2', 'Disquettes haute densité - noire (x10)', 1, 10, 0.196, 100),
('D201', 'DIS', '5 pces 1/4', 'Disquettes BD, simple face (x10)', 1, 3, 0.196, 50),
('D202', 'DIS', '5 pces 1/4', 'Disquettes BD, double face (x10)', 1, 4, 0.196, 50),
('D203', 'DIS', '5 pces 1/4', 'Disquettes Haute Densité', 1, 9, 0.196, 50),
('E101', 'ECR', 'Monochrome', 'Ecran 14 pouces, 1024x768 pts', 0, 380, 0.196, 2),
('E102', 'ECR', 'Monochrome', 'Ecran 16 pouces, 1024x768 pts', 0, 460, 0.196, 2),
('E201', 'ECR', 'Couleur', 'Ecran 14 pouces, 1280x1024 pts', 1, 660, 0.196, 5),
('E202', 'ECR', 'Couleur', 'Ecran 16 pouces, 1280x1024 pts', 1, 740, 0.196, 5),
('I101', 'IMP', 'Laser', 'Imprimante Laser 4ppm, 1Mo, 300pts/pce', 0, 885, 0.3333, 5),
('I102', 'IMP', 'Laser', 'Imprimante Laser, 4 ppm, 512Ko, 300pts', 0, 785, 0.3333, 5),
('I103', 'IMP', 'Laser', 'Imprimante PS, 8 ppm, 4Mo, 300 pts/pce', 0, 1640, 0.3333, 5),
('I104', 'IMP', 'Laser', 'Imprimante PS, 10 ppm, 4Mo, 300pts/pce', 0, 1760, 0.3333, 5),
('I105', 'IMP', 'Laser', 'Imprimante PS, 16 ppm, 4Mo, 300pts/pce', 0, 2500, 0.3333, 5),
('I201', 'IMP', 'Aiguilles', 'Imprimante 24 aiguilles, 53 cps', 0, 640, 0.196, 2),
('I202', 'IMP', 'Aiguilles', 'Imprimantes 9 aiguilles, 60 cps', 0, 460, 0.196, 2),
('I301', 'IMP', 'Encre', 'Imprimante jet d\'encre 80 col, 150 cps', 0, 640, 0.196, 4),
('I302', 'IMP', 'Encre', 'Imprimante jet d\'encre 80 col, 360 cps', 0, 730, 0.196, 4),
('I303', 'IMP', 'Encre', 'Imprimante jet d\'encre A2, 150 cps', 0, 1220, 0.196, 4),
('I304', 'IMP', 'Encre', 'Imprimante jet d\'encre couleur', 0, 2360, 0.196, 4),
('M101', 'MIC', 'PC 386', 'Micro, 2 Mo, disque 40 Mo, lect 3pc1/2', 0, 625, 0.3333, 5),
('M102', 'MIC', 'PC 386', 'Micro, 4 Mo, disque 80 Mo, lect 3pc1/2', 0, 925, 0.3333, 5),
('M201', 'MIC', 'PC 486', 'Micro, 4 Mo, disque 80 Mo, dble lect', 0, 1360, 0.3333, 5),
('M301', 'MIC', 'MAC', 'Micro 68030 25Mhz, 4 Mo, disque 200 Mo', 0, 2640, 0.3333, 6),
('M302', 'MIC', 'MAC', 'Micro 68040 33Mhz, 8 Mo, disque 200 Mo', 0, 3050, 0.3333, 6),
('U101', 'USB', 'USB', 'Clé 128Mo', 0, 79, 0.196, 30),
('U102', 'USB', 'USB', 'Clé 128Mo', 0, 95, 0.196, 30),
('U201', 'USB', 'USB', 'Clé 256Mo Sony', 1, 115, 0.3333, 30);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`codeCategorie`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`codeClient`);

--
-- Index pour la table `commande_client`
--
ALTER TABLE `commande_client`
  ADD PRIMARY KEY (`numCommandeCliant`),
  ADD KEY `codeClient` (`codeClient`),
  ADD KEY `matriculeEmploye` (`matriculeEmploye`);

--
-- Index pour la table `commande_fournisseur`
--
ALTER TABLE `commande_fournisseur`
  ADD PRIMARY KEY (`numCommandeFournisseur`),
  ADD KEY `codeFournisseur` (`codeFournisseur`),
  ADD KEY `matriculeEmploye` (`matriculeEmploye`);

--
-- Index pour la table `detailler_commande_client`
--
ALTER TABLE `detailler_commande_client`
  ADD PRIMARY KEY (`numCommandeClient`,`refProduit`),
  ADD KEY `refProduit` (`refProduit`);

--
-- Index pour la table `detailler_commande_fournisseur`
--
ALTER TABLE `detailler_commande_fournisseur`
  ADD PRIMARY KEY (`numCommandeFournisseur`,`refProduit`),
  ADD KEY `refProduit` (`refProduit`);

--
-- Index pour la table `employe`
--
ALTER TABLE `employe`
  ADD PRIMARY KEY (`matricule`);

--
-- Index pour la table `fournir`
--
ALTER TABLE `fournir`
  ADD PRIMARY KEY (`codeFournisseur`,`refProduit`),
  ADD KEY `refProduit` (`refProduit`);

--
-- Index pour la table `fournisseur`
--
ALTER TABLE `fournisseur`
  ADD PRIMARY KEY (`codeFournisseur`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`refProduit`),
  ADD KEY `categorie` (`categorie`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `commande_client`
--
ALTER TABLE `commande_client`
  MODIFY `numCommandeCliant` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `commande_fournisseur`
--
ALTER TABLE `commande_fournisseur`
  MODIFY `numCommandeFournisseur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `employe`
--
ALTER TABLE `employe`
  MODIFY `matricule` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `fournisseur`
--
ALTER TABLE `fournisseur`
  MODIFY `codeFournisseur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `commande_client`
--
ALTER TABLE `commande_client`
  ADD CONSTRAINT `commande_client_ibfk_1` FOREIGN KEY (`codeClient`) REFERENCES `client` (`codeClient`),
  ADD CONSTRAINT `commande_client_ibfk_2` FOREIGN KEY (`matriculeEmploye`) REFERENCES `employe` (`matricule`);

--
-- Contraintes pour la table `commande_fournisseur`
--
ALTER TABLE `commande_fournisseur`
  ADD CONSTRAINT `commande_fournisseur_ibfk_1` FOREIGN KEY (`codeFournisseur`) REFERENCES `fournisseur` (`codeFournisseur`),
  ADD CONSTRAINT `commande_fournisseur_ibfk_2` FOREIGN KEY (`matriculeEmploye`) REFERENCES `employe` (`matricule`);

--
-- Contraintes pour la table `detailler_commande_client`
--
ALTER TABLE `detailler_commande_client`
  ADD CONSTRAINT `detailler_commande_client_ibfk_1` FOREIGN KEY (`numCommandeClient`) REFERENCES `commande_client` (`numCommandeCliant`),
  ADD CONSTRAINT `detailler_commande_client_ibfk_2` FOREIGN KEY (`refProduit`) REFERENCES `produit` (`refProduit`);

--
-- Contraintes pour la table `detailler_commande_fournisseur`
--
ALTER TABLE `detailler_commande_fournisseur`
  ADD CONSTRAINT `detailler_commande_fournisseur_ibfk_1` FOREIGN KEY (`numCommandeFournisseur`) REFERENCES `commande_fournisseur` (`numCommandeFournisseur`),
  ADD CONSTRAINT `detailler_commande_fournisseur_ibfk_2` FOREIGN KEY (`refProduit`) REFERENCES `produit` (`refProduit`);

--
-- Contraintes pour la table `fournir`
--
ALTER TABLE `fournir`
  ADD CONSTRAINT `fournir_ibfk_1` FOREIGN KEY (`codeFournisseur`) REFERENCES `fournisseur` (`codeFournisseur`),
  ADD CONSTRAINT `fournir_ibfk_2` FOREIGN KEY (`refProduit`) REFERENCES `produit` (`refProduit`);

--
-- Contraintes pour la table `produit`
--
ALTER TABLE `produit`
  ADD CONSTRAINT `produit_ibfk_1` FOREIGN KEY (`categorie`) REFERENCES `categorie` (`codeCategorie`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
