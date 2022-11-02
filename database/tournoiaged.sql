-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 02 nov. 2022 à 09:52
-- Version du serveur : 5.7.36
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `tournoiaged`
--

-- --------------------------------------------------------

--
-- Structure de la table `acheteur`
--

DROP TABLE IF EXISTS `acheteur`;
CREATE TABLE IF NOT EXISTS `acheteur` (
  `NOMACHETEUR` varchar(100) DEFAULT NULL,
  `PRENOMACHETEUR` varchar(100) DEFAULT NULL,
  `IDACHETEUR` int(11) NOT NULL,
  `EMAILACHETEUR` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`IDACHETEUR`),
  KEY `ACHETEUR_PK` (`IDACHETEUR`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `acheteur`
--

INSERT INTO `acheteur` (`NOMACHETEUR`, `PRENOMACHETEUR`, `IDACHETEUR`, `EMAILACHETEUR`) VALUES
('Shannon', 'Gail', 1000, 'ipsum.leo@protonmail.couk'),
('Curtis', 'Christine', 1001, 'dui.lectus.rutrum@google.org'),
('Stark', 'Aline', 1002, 'vestibulum.ante.ipsum@outlook.org'),
('Stokes', 'Jeremy', 1003, 'lorem.ipsum@outlook.com'),
('Welch', 'Damon', 1004, 'nunc.lectus@protonmail.net'),
('Cervantes', 'Fitzgerald', 1005, 'libero@outlook.net'),
('Mann', 'Giacomo', 1006, 'nulla.aliquet.proin@google.net'),
('Holman', 'Howard', 1007, 'pellentesque.habitant@icloud.net'),
('Farley', 'Sawyer', 1008, 'nibh.phasellus@hotmail.couk'),
('Farley', 'Daryl', 1009, 'aliquam.gravida@aol.org'),
('Michael', 'Delilah', 1010, 'placerat@aol.net'),
('Leblanc', 'Hamish', 1011, 'elementum@aol.com'),
('Logan', 'Ferris', 1012, 'sapien.cursus@hotmail.net'),
('Chase', 'Rahim', 1013, 'non.bibendum@outlook.couk'),
('Hester', 'Theodore', 1014, 'ac@aol.ca'),
('Brown', 'Tyler', 1015, 'nam.ligula@yahoo.couk'),
('Solomon', 'Holmes', 1016, 'velit.eu@icloud.com'),
('Clements', 'Norman', 1017, 'ipsum@icloud.couk'),
('Maynard', 'Brendan', 1018, 'semper.dui@icloud.com'),
('Mendez', 'Nicholas', 1019, 'faucibus@icloud.edu'),
('Richard', 'Fleur', 1020, 'et@google.org'),
('Gill', 'Dai', 1021, 'amet.metus@hotmail.org'),
('Scott', 'Mollie', 1022, 'hendrerit@google.net'),
('Peters', 'Francis', 1023, 'tellus.non@protonmail.edu'),
('Heath', 'Orlando', 1024, 'pretium.aliquet.metus@outlook.edu'),
('Collier', 'Shaine', 1025, 'quisque.ac@aol.org'),
('Dalton', 'Alexandra', 1026, 'porttitor.tellus@hotmail.net'),
('Vaughn', 'Cooper', 1027, 'hendrerit.neque@icloud.couk'),
('Kennedy', 'Jerome', 1028, 'eu@yahoo.edu'),
('Harmon', 'Ivan', 1029, 'egestas.fusce@hotmail.couk'),
('Richmond', 'Yoko', 1030, 'luctus.lobortis@yahoo.org'),
('Hutchinson', 'Ivy', 1031, 'diam.proin@aol.edu'),
('Watkins', 'Martina', 1032, 'at.fringilla@protonmail.edu'),
('York', 'Shad', 1033, 'congue@hotmail.com'),
('Castro', 'Charlotte', 1034, 'elementum.sem.vitae@google.net'),
('Harris', 'Stone', 1035, 'pede@hotmail.com'),
('Callahan', 'Chandler', 1036, 'enim.mi@yahoo.ca'),
('Lara', 'Margaret', 1037, 'mus.aenean.eget@aol.ca'),
('Yates', 'Colton', 1038, 'tempor@hotmail.edu'),
('Reed', 'Addison', 1039, 'lobortis.nisi@hotmail.edu'),
('Park', 'Yoko', 1040, 'volutpat.nulla@protonmail.com'),
('Hansen', 'Tarik', 1041, 'risus@yahoo.com'),
('Dodson', 'Kitra', 1042, 'senectus.et@outlook.net'),
('Hampton', 'Raja', 1043, 'ultricies.ligula@aol.edu'),
('Jacobson', 'Teegan', 1044, 'quis.diam@protonmail.net'),
('Hopper', 'Rylee', 1045, 'consequat.nec@icloud.com'),
('Velazquez', 'Demetria', 1046, 'a.feugiat@hotmail.com'),
('Buchanan', 'Felix', 1047, 'nulla@hotmail.couk'),
('Peters', 'Ramona', 1048, 'ipsum@hotmail.edu'),
('Mathis', 'Dawn', 1049, 'nibh@protonmail.couk'),
('Ruiz', 'Maggie', 1050, 'aliquam.nec@outlook.ca'),
('Morse', 'Erich', 1051, 'porta@yahoo.net'),
('Blackburn', 'Emily', 1052, 'eu.turpis@yahoo.couk'),
('Kidd', 'Summer', 1053, 'mauris.sapien@protonmail.net'),
('Moody', 'Bell', 1054, 'interdum.nunc@icloud.ca'),
('Galloway', 'Allegra', 1055, 'non@hotmail.ca'),
('Sims', 'Thomas', 1056, 'malesuada.fames@google.com'),
('Powell', 'Devin', 1057, 'egestas.blandit.nam@google.couk'),
('Gray', 'Savannah', 1058, 'feugiat.nec@outlook.ca'),
('Jacobs', 'Serena', 1059, 'facilisis.vitae@aol.net'),
('Jensen', 'Shad', 1060, 'tempor.lorem@aol.ca'),
('Frazier', 'Tad', 1061, 'fusce.aliquet@hotmail.edu'),
('Carney', 'Alec', 1062, 'enim.gravida@protonmail.net'),
('Mccoy', 'Berk', 1063, 'in.scelerisque@aol.net'),
('Pugh', 'Kim', 1064, 'facilisis.vitae.orci@icloud.edu'),
('Sims', 'Francis', 1065, 'sed.pede@icloud.edu'),
('Crosby', 'Kieran', 1066, 'convallis.est.vitae@hotmail.couk'),
('Flowers', 'Quamar', 1067, 'porttitor@google.net'),
('Lowery', 'Donna', 1068, 'quisque.libero@icloud.net'),
('Morton', 'Clayton', 1069, 'quis.massa@google.ca'),
('Rosario', 'Ciara', 1070, 'dui@aol.com'),
('Cooley', 'Vladimir', 1071, 'ullamcorper@protonmail.couk'),
('Lindsay', 'Tasha', 1072, 'augue.porttitor@protonmail.edu'),
('Reilly', 'Maxwell', 1073, 'faucibus.leo@yahoo.com'),
('Vega', 'Faith', 1074, 'ante@hotmail.com'),
('Trevino', 'Zorita', 1075, 'nulla.semper.tellus@yahoo.ca'),
('Collins', 'Barrett', 1076, 'nibh.donec.est@protonmail.org'),
('Ramirez', 'Germaine', 1077, 'tellus.imperdiet@yahoo.ca'),
('Crane', 'Ian', 1078, 'non.dapibus@google.edu'),
('Stark', 'Jesse', 1079, 'convallis.erat.eget@outlook.couk'),
('Duffy', 'Hiram', 1080, 'etiam@hotmail.ca'),
('Tyler', 'Ferris', 1081, 'tempor.augue@yahoo.org'),
('Baldwin', 'Stacy', 1082, 'mauris@hotmail.org'),
('Beasley', 'Clare', 1083, 'feugiat@outlook.ca'),
('Barton', 'Jade', 1084, 'eget.varius.ultrices@icloud.net'),
('Chavez', 'Scott', 1085, 'parturient.montes.nascetur@hotmail.org'),
('Nelson', 'Theodore', 1086, 'morbi.accumsan.laoreet@aol.org'),
('Vaughn', 'Colby', 1087, 'dictum.placerat@hotmail.edu'),
('Weiss', 'Mona', 1088, 'sed.id@aol.net'),
('Gardner', 'Ahmed', 1089, 'risus.donec.egestas@icloud.org'),
('Ruiz', 'Minerva', 1090, 'lorem@google.org'),
('Owen', 'Berk', 1091, 'dapibus.rutrum.justo@aol.couk'),
('Joseph', 'Stewart', 1092, 'dapibus@yahoo.net'),
('Munoz', 'Sade', 1093, 'nisl.maecenas@icloud.couk'),
('White', 'Quyn', 1094, 'eu@aol.couk'),
('Roberts', 'Thor', 1095, 'suspendisse@protonmail.com'),
('Chase', 'Gray', 1096, 'ante@outlook.couk'),
('Meyers', 'Kevyn', 1097, 'leo.cras@google.edu'),
('Banks', 'Geraldine', 1098, 'praesent@outlook.org'),
('Mann', 'Reuben', 1099, 'aliquam.eros@outlook.org');

-- --------------------------------------------------------

--
-- Structure de la table `appartient`
--

DROP TABLE IF EXISTS `appartient`;
CREATE TABLE IF NOT EXISTS `appartient` (
  `CATIDBILLET` int(11) NOT NULL,
  `IDTOURNOI` int(11) NOT NULL,
  `POURCENTAGEREDUCTION` decimal(10,0) DEFAULT NULL,
  `NBBILLETSAFFECTES` int(11) DEFAULT NULL,
  PRIMARY KEY (`CATIDBILLET`,`IDTOURNOI`),
  KEY `APPARTIENT_PK` (`CATIDBILLET`,`IDTOURNOI`),
  KEY `APPARTIENT_FK` (`CATIDBILLET`),
  KEY `APPARTIENT2_FK` (`IDTOURNOI`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `arbitrer2`
--

DROP TABLE IF EXISTS `arbitrer2`;
CREATE TABLE IF NOT EXISTS `arbitrer2` (
  `ARBITREID` int(11) NOT NULL,
  `IDMATCH` int(11) NOT NULL,
  PRIMARY KEY (`ARBITREID`,`IDMATCH`),
  KEY `ARBITRER2_PK` (`ARBITREID`,`IDMATCH`),
  KEY `ARBITRER2_FK` (`ARBITREID`),
  KEY `ARBITRE_SECONDAIRE_FK` (`IDMATCH`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `arbitres`
--

DROP TABLE IF EXISTS `arbitres`;
CREATE TABLE IF NOT EXISTS `arbitres` (
  `ARBITREID` int(11) NOT NULL,
  `NOMARBITRE` varchar(100) DEFAULT NULL,
  `PRENOMARBITRE` varchar(100) DEFAULT NULL,
  `NATIONALITEARBITRE` int(11) DEFAULT NULL,
  PRIMARY KEY (`ARBITREID`),
  KEY `ARBITRES_PK` (`ARBITREID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `arbitres`
--

INSERT INTO `arbitres` (`ARBITREID`, `NOMARBITRE`, `PRENOMARBITRE`, `NATIONALITEARBITRE`) VALUES
(10000, 'Wilson', 'Gretchen', 1),
(10001, 'Perry', 'Brian', 3),
(10002, 'Dejesus', 'Jessica', 1),
(10003, 'Lindsay', 'Jeanette', 15),
(10004, 'Douglas', 'Yetta', 10),
(10005, 'Hooper', 'Charde', 9),
(10006, 'Martinez', 'Chandler', 2),
(10007, 'Prince', 'Connor', 4),
(10008, 'Yang', 'Zephania', 13),
(10009, 'Donovan', 'Odysseus', 3),
(10010, 'Caldwell', 'Tanisha', 12),
(10011, 'Spencer', 'Hammett', 6),
(10012, 'Cabrera', 'Jacob', 12),
(10013, 'Webster', 'Miranda', 3),
(10014, 'Reese', 'Nasim', 6),
(10015, 'Albert', 'Lacey', 14),
(10016, 'Huffman', 'Lester', 10),
(10017, 'Watkins', 'Justine', 3),
(10018, 'Williams', 'Tasha', 10),
(10019, 'Wheeler', 'Dahlia', 10),
(10020, 'Tate', 'Ariana', 16),
(10021, 'Dennis', 'Abdul', 11),
(10022, 'Peterson', 'Ferdinand', 7),
(10023, 'Weiss', 'Moana', 3),
(10024, 'Leon', 'Mollie', 10),
(10025, 'Durham', 'Nigel', 12),
(10026, 'Yang', 'Jennifer', 8),
(10027, 'Cleveland', 'Tanya', 14),
(10028, 'Crane', 'Galena', 14),
(10029, 'Moore', 'Amela', 3),
(10030, 'Rivas', 'Alan', 16),
(10031, 'Chaney', 'Emerson', 4),
(10032, 'Wiley', 'Wynne', 15),
(10033, 'Clemons', 'Anastasia', 12),
(10034, 'Conley', 'Myra', 15),
(10035, 'Decker', 'Clarke', 5),
(10036, 'Richmond', 'Neville', 3),
(10037, 'Brock', 'Brynn', 5),
(10038, 'Whitehead', 'Sawyer', 10),
(10039, 'Randall', 'Melanie', 13),
(10040, 'Cash', 'Chava', 9),
(10041, 'Ford', 'Shaine', 15),
(10042, 'Beard', 'Isadora', 1),
(10043, 'Stevenson', 'Zorita', 11),
(10044, 'Downs', 'Nina', 13),
(10045, 'Bass', 'Chaney', 8),
(10046, 'Ball', 'Olympia', 5),
(10047, 'Drake', 'Ivory', 10),
(10048, 'Craft', 'Keane', 3),
(10049, 'Steele', 'Dolan', 14),
(10050, 'Hale', 'Jerome', 15),
(10051, 'Wall', 'Tyler', 14),
(10052, 'Baird', 'Perry', 6),
(10053, 'Mckinney', 'Ali', 9),
(10054, 'Kelly', 'Margaret', 7),
(10055, 'Browning', 'Jonas', 6),
(10056, 'Simpson', 'Raymond', 13),
(10057, 'Armstrong', 'Colleen', 6),
(10058, 'Edwards', 'Jaime', 4),
(10059, 'Clayton', 'Ian', 13),
(10060, 'Johnson', 'Veronica', 15),
(10061, 'Cooke', 'Olga', 6),
(10062, 'Harrison', 'Maggy', 14),
(10063, 'Hicks', 'Hall', 10),
(10064, 'Glenn', 'Dale', 15),
(10065, 'Bishop', 'Graiden', 12),
(10066, 'Knox', 'Dane', 15),
(10067, 'Dunlap', 'Owen', 12),
(10068, 'Mendez', 'Ian', 9),
(10069, 'Salazar', 'Noble', 10),
(10070, 'Petersen', 'Sage', 7),
(10071, 'Britt', 'Holly', 16),
(10072, 'Gibson', 'Yasir', 12),
(10073, 'Fulton', 'Elvis', 14),
(10074, 'Potter', 'Brooke', 3),
(10075, 'Mccarty', 'Beck', 11),
(10076, 'Tucker', 'Melinda', 2),
(10077, 'Hodges', 'Harlan', 11),
(10078, 'Ward', 'Quentin', 15),
(10079, 'Bradshaw', 'Cruz', 10),
(10080, 'Sparks', 'Honorato', 2),
(10081, 'Hahn', 'Alfonso', 14),
(10082, 'Malone', 'Tatiana', 12),
(10083, 'Baldwin', 'Josephine', 4),
(10084, 'Walls', 'Jade', 4),
(10085, 'Flowers', 'Hop', 15),
(10086, 'Farmer', 'Indira', 1),
(10087, 'Doyle', 'Aline', 10),
(10088, 'Fleming', 'Oscar', 2),
(10089, 'Robles', 'Hadassah', 3),
(10090, 'Key', 'Rana', 10),
(10091, 'Fuller', 'Grady', 9),
(10092, 'Anderson', 'Paul', 11),
(10093, 'Chan', 'Lavinia', 7),
(10094, 'Pollard', 'Cole', 10),
(10095, 'Grant', 'Jena', 14),
(10096, 'Dillard', 'Clio', 2),
(10097, 'Kirkland', 'Irene', 10),
(10098, 'Mann', 'Mason', 7),
(10099, 'Sloan', 'Ira', 6),
(10100, 'Tucker', 'Irma', 12),
(10101, 'Rivera', 'Craig', 1),
(10102, 'Gilliam', 'Mari', 15),
(10103, 'Marshall', 'Christian', 2),
(10104, 'Trujillo', 'Cain', 7),
(10105, 'Thomas', 'Genevieve', 3),
(10106, 'Mcmillan', 'Uriel', 12),
(10107, 'Terry', 'Nerea', 6),
(10108, 'Gibson', 'Sacha', 2),
(10109, 'Martinez', 'Nyssa', 14),
(10110, 'Benjamin', 'Micah', 3),
(10111, 'Sampson', 'Grace', 5),
(10112, 'Roberson', 'Brennan', 2),
(10113, 'Keller', 'Madeson', 2),
(10114, 'Crawford', 'Ila', 11),
(10115, 'Brooks', 'Richard', 5),
(10116, 'Mueller', 'Kiara', 7),
(10117, 'Fields', 'Andrew', 7),
(10118, 'Cash', 'Cain', 4),
(10119, 'Arnold', 'Berk', 5),
(10120, 'Cox', 'Holly', 9),
(10121, 'Norton', 'Ariana', 9),
(10122, 'Stevenson', 'Wade', 7),
(10123, 'Salas', 'Xanthus', 9),
(10124, 'Cherry', 'Oren', 8);

-- --------------------------------------------------------

--
-- Structure de la table `association`
--

DROP TABLE IF EXISTS `association`;
CREATE TABLE IF NOT EXISTS `association` (
  `IDASSOCIATION` int(11) NOT NULL,
  `IDTOURNOI` int(11) NOT NULL,
  `NOMASSOCIATION` varchar(100) DEFAULT NULL,
  `MONTANTRECOLTE` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`IDASSOCIATION`),
  KEY `ASSOCIATION_PK` (`IDASSOCIATION`),
  KEY `ESTBENEFICIAIRE_FK` (`IDTOURNOI`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `billet`
--

DROP TABLE IF EXISTS `billet`;
CREATE TABLE IF NOT EXISTS `billet` (
  `DATEVENTE` date DEFAULT NULL,
  `REFERENCE` int(11) NOT NULL,
  `IDACHETEUR` int(11) NOT NULL,
  `CATEGORIEID` int(11) DEFAULT NULL,
  `ACHETEURID` int(11) DEFAULT NULL,
  `REFPLACE` int(11) DEFAULT NULL,
  PRIMARY KEY (`REFERENCE`),
  KEY `BILLET_PK` (`REFERENCE`),
  KEY `ACHETE_FK` (`IDACHETEUR`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `categoriebillet`
--

DROP TABLE IF EXISTS `categoriebillet`;
CREATE TABLE IF NOT EXISTS `categoriebillet` (
  `CATIDBILLET` int(11) NOT NULL,
  `NOMCATEGORIE` char(100) DEFAULT NULL,
  PRIMARY KEY (`CATIDBILLET`),
  KEY `CATEGORIEBILLET_PK` (`CATIDBILLET`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `composer`
--

DROP TABLE IF EXISTS `composer`;
CREATE TABLE IF NOT EXISTS `composer` (
  `IDJOUEUR` int(11) NOT NULL,
  `EQUIPEID` int(11) NOT NULL,
  PRIMARY KEY (`IDJOUEUR`,`EQUIPEID`),
  KEY `COMPOSER_PK` (`IDJOUEUR`,`EQUIPEID`),
  KEY `COMPOSER_FK` (`IDJOUEUR`),
  KEY `COMPOSER2_FK` (`EQUIPEID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `courts`
--

DROP TABLE IF EXISTS `courts`;
CREATE TABLE IF NOT EXISTS `courts` (
  `IDCOURT` int(11) NOT NULL,
  `CAPACITE` int(11) DEFAULT NULL,
  PRIMARY KEY (`IDCOURT`),
  KEY `COURTS_PK` (`IDCOURT`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `courts`
--

INSERT INTO `courts` (`IDCOURT`, `CAPACITE`) VALUES
(1, 10675),
(2, 23572),
(3, 12685),
(4, 24964),
(5, 12528),
(6, 15785),
(7, 22288),
(8, 12722),
(9, 20693),
(10, 19584),
(11, 16399),
(12, 18999),
(13, 17190),
(14, 23153),
(15, 19003),
(16, 11022),
(17, 12704),
(18, 19333),
(19, 21984),
(20, 18739),
(21, 19663),
(22, 10602),
(23, 20427),
(24, 18985),
(25, 13477);

-- --------------------------------------------------------

--
-- Structure de la table `emplacement`
--

DROP TABLE IF EXISTS `emplacement`;
CREATE TABLE IF NOT EXISTS `emplacement` (
  `IDEMPLACEMENT` int(11) NOT NULL,
  `NOMEMPLACEMENT` varchar(100) DEFAULT NULL,
  `CLASSEMENTIMPORTANCE` int(11) DEFAULT NULL,
  PRIMARY KEY (`IDEMPLACEMENT`),
  KEY `EMPLACEMENT_PK` (`IDEMPLACEMENT`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `emplacement`
--

INSERT INTO `emplacement` (`IDEMPLACEMENT`, `NOMEMPLACEMENT`, `CLASSEMENTIMPORTANCE`) VALUES
(1, 'Loge', 1),
(2, 'cat1', 2),
(3, 'cat2', 3);

-- --------------------------------------------------------

--
-- Structure de la table `estemploye`
--

DROP TABLE IF EXISTS `estemploye`;
CREATE TABLE IF NOT EXISTS `estemploye` (
  `IDTOURNOI` int(11) NOT NULL,
  `IDRAMASSEUR` int(11) NOT NULL,
  PRIMARY KEY (`IDTOURNOI`,`IDRAMASSEUR`),
  KEY `ESTEMPLOYE_PK` (`IDTOURNOI`,`IDRAMASSEUR`),
  KEY `ESTEMPLOYE_FK` (`IDTOURNOI`),
  KEY `ESTEMPLOYE2_FK` (`IDRAMASSEUR`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `estplace`
--

DROP TABLE IF EXISTS `estplace`;
CREATE TABLE IF NOT EXISTS `estplace` (
  `IDEMPLACEMENT` int(11) NOT NULL,
  `REFERENCE` int(11) NOT NULL,
  PRIMARY KEY (`IDEMPLACEMENT`,`REFERENCE`),
  KEY `ESTPLACE_PK` (`IDEMPLACEMENT`,`REFERENCE`),
  KEY `ESTPLACE_FK` (`IDEMPLACEMENT`),
  KEY `ESTPLACE2_FK` (`REFERENCE`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `estvendupour`
--

DROP TABLE IF EXISTS `estvendupour`;
CREATE TABLE IF NOT EXISTS `estvendupour` (
  `REFERENCE` int(11) NOT NULL,
  `IDMATCH` int(11) NOT NULL,
  PRIMARY KEY (`REFERENCE`,`IDMATCH`),
  KEY `ESTVENDUPOUR_PK` (`REFERENCE`,`IDMATCH`),
  KEY `ESTVENDUPOUR_FK` (`REFERENCE`),
  KEY `ESTVENDUPOUR2_FK` (`IDMATCH`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `joue`
--

DROP TABLE IF EXISTS `joue`;
CREATE TABLE IF NOT EXISTS `joue` (
  `IDJOUEUR` int(11) NOT NULL,
  `IDMATCH` int(11) NOT NULL,
  PRIMARY KEY (`IDJOUEUR`,`IDMATCH`),
  KEY `JOUE_PK` (`IDJOUEUR`,`IDMATCH`),
  KEY `JOUE_FK` (`IDJOUEUR`),
  KEY `JOUE2_FK` (`IDMATCH`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `jouerdouble`
--

DROP TABLE IF EXISTS `jouerdouble`;
CREATE TABLE IF NOT EXISTS `jouerdouble` (
  `EQUIPEID` int(11) NOT NULL,
  `IDMATCH` int(11) NOT NULL,
  PRIMARY KEY (`EQUIPEID`,`IDMATCH`),
  KEY `JOUERDOUBLE_PK` (`EQUIPEID`,`IDMATCH`),
  KEY `JOUERDOUBLE_FK` (`EQUIPEID`),
  KEY `JOUERDOUBLE2_FK` (`IDMATCH`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `joueurs`
--

DROP TABLE IF EXISTS `joueurs`;
CREATE TABLE IF NOT EXISTS `joueurs` (
  `NOMJOUEUR` varchar(100) DEFAULT NULL,
  `PRENOMJOUEUR` varchar(100) DEFAULT NULL,
  `NATIONALITEJOUEUR` int(11) DEFAULT NULL,
  `IDJOUEUR` int(11) NOT NULL,
  `ATP` int(11) DEFAULT NULL,
  PRIMARY KEY (`IDJOUEUR`),
  KEY `JOUEURS_PK` (`IDJOUEUR`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `joueurs`
--

INSERT INTO `joueurs` (`NOMJOUEUR`, `PRENOMJOUEUR`, `NATIONALITEJOUEUR`, `IDJOUEUR`, `ATP`) VALUES
('Mack', 'Acton', 5, 10000, 267),
('Higgins', 'Gemma', 11, 10001, 326),
('Talley', 'Hasad', 1, 10002, 349),
('Irwin', 'Stewart', 14, 10003, 318),
('Rodriguez', 'Mikayla', 13, 10004, 346),
('Ware', 'MacKenzie', 10, 10005, 286),
('Hoffman', 'Medge', 9, 10006, 370),
('Garcia', 'Murphy', 13, 10007, 385),
('Gregory', 'Herman', 2, 10008, 366),
('Wilkerson', 'Chava', 7, 10009, 375),
('Lamb', 'Zoe', 9, 10010, 390),
('Bird', 'Leroy', 3, 10011, 339),
('Rios', 'Neville', 12, 10012, 377),
('Franco', 'Guinevere', 8, 10013, 317),
('Ferguson', 'Lesley', 9, 10014, 304),
('Cervantes', 'Chaney', 6, 10015, 337),
('Foley', 'Rosalyn', 5, 10016, 282),
('Ingram', 'Nero', 11, 10017, 368),
('Moss', 'Dalton', 2, 10018, 363),
('Hendricks', 'Clark', 3, 10019, 303),
('Kerr', 'Joelle', 13, 10020, 386),
('Barnett', 'Gillian', 14, 10021, 370),
('Rasmussen', 'Libby', 3, 10022, 318),
('Oneil', 'Jamal', 12, 10023, 293),
('Doyle', 'Lucian', 7, 10024, 322),
('Beck', 'Eliana', 6, 10025, 284),
('Combs', 'Nevada', 1, 10026, 288),
('Burton', 'Justin', 11, 10027, 377),
('O\'donnell', 'Mallory', 13, 10028, 278),
('Barr', 'Maxine', 11, 10029, 364),
('Pearson', 'Prescott', 2, 10030, 255),
('Griffin', 'Zephania', 6, 10031, 264),
('Mcintosh', 'Gannon', 12, 10032, 309),
('Hardy', 'Cooper', 12, 10033, 263),
('Chapman', 'Bert', 13, 10034, 346),
('Mcfadden', 'Galvin', 6, 10035, 337),
('Ewing', 'Jena', 16, 10036, 385),
('Blankenship', 'Silas', 14, 10037, 355),
('Conley', 'Hashim', 13, 10038, 315),
('Macdonald', 'Beau', 10, 10039, 385),
('Bates', 'Mira', 12, 10040, 314),
('Huber', 'Nina', 8, 10041, 393),
('Huff', 'Preston', 9, 10042, 368),
('Lancaster', 'Winifred', 11, 10043, 297),
('Mays', 'Rigel', 9, 10044, 370),
('Klein', 'Tobias', 1, 10045, 308),
('Cabrera', 'Ebony', 9, 10046, 265),
('Griffith', 'Iola', 10, 10047, 363),
('Scott', 'Margaret', 14, 10048, 325),
('Salinas', 'Ali', 12, 10049, 277),
('Wall', 'Bo', 13, 10050, 265),
('Fleming', 'Felix', 14, 10051, 287),
('Dickson', 'Illiana', 15, 10052, 350),
('Armstrong', 'Jason', 3, 10053, 273),
('Mccormick', 'Evan', 2, 10054, 359),
('Salinas', 'Brynn', 5, 10055, 285),
('Harris', 'Molly', 9, 10056, 273),
('Hicks', 'Geoffrey', 5, 10057, 370),
('Golden', 'Dahlia', 10, 10058, 319),
('Robbins', 'Kay', 14, 10059, 292),
('Ward', 'Patience', 13, 10060, 265),
('Mccormick', 'Herrod', 11, 10061, 300),
('Wells', 'Illiana', 8, 10062, 265),
('Rowe', 'Hop', 10, 10063, 361),
('Guerra', 'Baker', 8, 10064, 385),
('Norman', 'Tarik', 13, 10065, 342),
('Moses', 'Adria', 15, 10066, 253),
('Harrell', 'Deacon', 11, 10067, 259),
('Wilder', 'Thane', 13, 10068, 255),
('Hutchinson', 'Hunter', 7, 10069, 274),
('Garcia', 'Raya', 9, 10070, 252),
('Olson', 'India', 5, 10071, 294),
('Acevedo', 'Otto', 5, 10072, 313),
('Good', 'Garrett', 11, 10073, 343),
('Diaz', 'May', 11, 10074, 323),
('Thomas', 'Lysandra', 10, 10075, 280),
('Morse', 'Linus', 6, 10076, 265),
('Good', 'Chloe', 6, 10077, 348),
('Osborn', 'Maxwell', 16, 10078, 288),
('Doyle', 'Gavin', 9, 10079, 320),
('Moody', 'Quinn', 13, 10080, 341),
('Barrett', 'Vance', 4, 10081, 278),
('Tanner', 'Omar', 12, 10082, 336),
('Romero', 'Carlos', 10, 10083, 282),
('Quinn', 'Xanthus', 5, 10084, 396),
('Hewitt', 'Regan', 4, 10085, 290),
('Ramirez', 'Cole', 15, 10086, 308),
('Blair', 'Claire', 8, 10087, 389),
('Weeks', 'Kaseem', 13, 10088, 334),
('Conley', 'Madison', 12, 10089, 311),
('Kirk', 'Zena', 2, 10090, 366),
('Pearson', 'Graham', 7, 10091, 321),
('Vega', 'Keiko', 4, 10092, 294),
('Robbins', 'Laura', 9, 10093, 319),
('Kaufman', 'Jeanette', 2, 10094, 283),
('May', 'Cole', 3, 10095, 392),
('Jennings', 'Tatyana', 11, 10096, 287),
('Lawrence', 'Evan', 1, 10097, 280),
('Flores', 'Imani', 9, 10098, 300),
('Moody', 'Robert', 2, 10099, 372),
('Bridges', 'Liberty', 3, 10100, 338),
('Bradford', 'Ferdinand', 10, 10101, 285),
('Padilla', 'Karleigh', 6, 10102, 282),
('Acevedo', 'Heather', 4, 10103, 329),
('Lara', 'Amanda', 11, 10104, 283),
('Ochoa', 'Darryl', 4, 10105, 329),
('Hale', 'Chloe', 13, 10106, 282),
('Pugh', 'Catherine', 2, 10107, 350),
('Gonzalez', 'Tanner', 3, 10108, 276),
('Dale', 'Willow', 10, 10109, 388),
('Leblanc', 'Silas', 7, 10110, 300),
('Cobb', 'Carson', 6, 10111, 397),
('Avila', 'Daquan', 10, 10112, 352),
('Weber', 'Allistair', 4, 10113, 398),
('Klein', 'Nissim', 11, 10114, 355),
('Rose', 'Kylan', 4, 10115, 363),
('Barnett', 'Boris', 11, 10116, 250),
('Hardy', 'Armand', 13, 10117, 310),
('Gentry', 'Holmes', 8, 10118, 252),
('Benson', 'Mason', 14, 10119, 275),
('Saunders', 'Sophia', 4, 10120, 355),
('Santos', 'Warren', 4, 10121, 380),
('Atkinson', 'Elmo', 13, 10122, 277),
('Holloway', 'Sasha', 4, 10123, 311),
('Vargas', 'Brady', 4, 10124, 368),
('Porter', 'Nita', 8, 10125, 379),
('Butler', 'Dean', 14, 10126, 257),
('Hopkins', 'Tanner', 9, 10127, 356),
('Clark', 'Alma', 6, 10128, 400),
('Kennedy', 'Bert', 12, 10129, 390),
('Cannon', 'Brittany', 11, 10130, 353),
('Rhodes', 'Virginia', 8, 10131, 350),
('Wolfe', 'Ivy', 3, 10132, 330),
('Jordan', 'Roth', 4, 10133, 263),
('Grimes', 'Rhea', 5, 10134, 344),
('Sheppard', 'Kelly', 10, 10135, 292),
('Berg', 'Lawrence', 14, 10136, 384),
('Dunn', 'Jeremy', 4, 10137, 368),
('Lucas', 'Cullen', 3, 10138, 400),
('Crosby', 'Whitney', 7, 10139, 374),
('Nelson', 'Brenda', 8, 10140, 375),
('Cooper', 'Gretchen', 15, 10141, 328),
('Clayton', 'Wyatt', 15, 10142, 367),
('Carver', 'Baker', 16, 10143, 293),
('Gentry', 'Raymond', 3, 10144, 284),
('Calderon', 'Orla', 1, 10145, 266),
('Jefferson', 'Jayme', 13, 10146, 261),
('Monroe', 'Laith', 8, 10147, 377),
('Velasquez', 'Stewart', 6, 10148, 383),
('Richards', 'Harper', 6, 10149, 304),
('Weber', 'Katelyn', 7, 10150, 324),
('Case', 'Tanek', 13, 10151, 378),
('Walter', 'Seth', 10, 10152, 310),
('Lott', 'Stephen', 10, 10153, 361),
('Rice', 'Salvador', 13, 10154, 351),
('Kline', 'Yeo', 12, 10155, 271),
('Stafford', 'Maxine', 6, 10156, 322),
('Bond', 'Hadassah', 7, 10157, 398),
('Ingram', 'Lawrence', 5, 10158, 320),
('Adkins', 'Drew', 11, 10159, 296),
('French', 'Alfreda', 2, 10160, 394),
('Pollard', 'Aaron', 10, 10161, 283),
('Perez', 'Ursa', 4, 10162, 316),
('Mullen', 'May', 5, 10163, 284),
('Soto', 'Vielka', 3, 10164, 338),
('Whitehead', 'Alea', 1, 10165, 360),
('Velasquez', 'Brenda', 4, 10166, 395),
('Lane', 'Chiquita', 8, 10167, 381),
('Rogers', 'Giselle', 2, 10168, 330),
('Moore', 'Octavius', 4, 10169, 282),
('Welch', 'Kylie', 10, 10170, 270),
('Rivas', 'Nadine', 7, 10171, 379),
('Butler', 'Dana', 7, 10172, 399),
('Quinn', 'Stephen', 7, 10173, 383),
('Hartman', 'Emi', 12, 10174, 313),
('Trujillo', 'Hedda', 2, 10175, 316),
('Wynn', 'Tanya', 8, 10176, 284),
('Bentley', 'Ciaran', 11, 10177, 393),
('Roberson', 'Ralph', 14, 10178, 387),
('O\'donnell', 'Calista', 13, 10179, 369),
('Hutchinson', 'Castor', 15, 10180, 353),
('Donovan', 'Chester', 3, 10181, 335),
('Humphrey', 'Hoyt', 7, 10182, 324),
('Goodwin', 'Maggie', 3, 10183, 295),
('Duke', 'Evan', 4, 10184, 360),
('Walker', 'Beau', 5, 10185, 388),
('Cardenas', 'Harper', 10, 10186, 351),
('Christian', 'Martena', 12, 10187, 395),
('Montoya', 'Christopher', 6, 10188, 287),
('Nguyen', 'Whoopi', 11, 10189, 336),
('Burch', 'Hiroko', 14, 10190, 267),
('Cole', 'Avye', 7, 10191, 265),
('Nelson', 'Montana', 5, 10192, 380),
('Boyer', 'Martena', 9, 10193, 331),
('Juarez', 'Zenia', 9, 10194, 387),
('Calhoun', 'Sacha', 5, 10195, 342),
('Gaines', 'Nicholas', 12, 10196, 306),
('Warren', 'Christian', 3, 10197, 365),
('Rhodes', 'Noel', 12, 10198, 254),
('Armstrong', 'Calvin', 12, 10199, 397),
('Sullivan', 'Emmanuel', 12, 10200, 385),
('Cote', 'Thomas', 13, 10201, 270),
('Noble', 'Neil', 11, 10202, 392),
('Michael', 'Sebastian', 16, 10203, 265),
('May', 'Charles', 5, 10204, 356),
('Patterson', 'Dawn', 3, 10205, 391),
('Maldonado', 'Halee', 1, 10206, 304),
('Combs', 'Zenaida', 6, 10207, 263),
('Espinoza', 'Rafael', 15, 10208, 345),
('Hull', 'Bryar', 14, 10209, 323),
('Hester', 'Jamal', 1, 10210, 346),
('Webb', 'Lacota', 11, 10211, 251),
('Sharp', 'Paki', 4, 10212, 351),
('Sellers', 'Pearl', 5, 10213, 390),
('Tucker', 'Alvin', 4, 10214, 376),
('Curtis', 'Phillip', 1, 10215, 390),
('Meyer', 'Clare', 8, 10216, 297),
('Aguirre', 'Jordan', 14, 10217, 327),
('Montoya', 'Mason', 11, 10218, 393),
('Tyler', 'Dahlia', 13, 10219, 356),
('Lyons', 'Felix', 6, 10220, 277),
('Callahan', 'Thomas', 4, 10221, 275),
('Talley', 'Amethyst', 15, 10222, 373),
('White', 'Amir', 1, 10223, 344),
('Powell', 'Yvonne', 7, 10224, 378),
('Calhoun', 'Raven', 2, 10225, 265),
('Pope', 'Rahim', 11, 10226, 311),
('Santiago', 'Sydney', 10, 10227, 360),
('Gray', 'Eric', 6, 10228, 388),
('Dunlap', 'Odessa', 7, 10229, 291),
('Washington', 'Caldwell', 13, 10230, 363),
('Garcia', 'Jackson', 2, 10231, 398),
('Buck', 'Leilani', 10, 10232, 392),
('Walters', 'Sharon', 1, 10233, 252),
('Wallace', 'Damon', 9, 10234, 398),
('Sosa', 'August', 5, 10235, 389),
('Wolf', 'Colt', 7, 10236, 388),
('Mcmillan', 'Lucas', 16, 10237, 315),
('Chandler', 'Ivor', 11, 10238, 352),
('Mcgee', 'Cade', 2, 10239, 262),
('Barton', 'Allegra', 6, 10240, 386),
('Fox', 'Barry', 16, 10241, 367),
('Anderson', 'Elmo', 8, 10242, 272),
('Beasley', 'Irene', 13, 10243, 340),
('Cox', 'Neil', 2, 10244, 378),
('Aguirre', 'Ayanna', 9, 10245, 264),
('Banks', 'Katelyn', 1, 10246, 358),
('Gonzalez', 'Luke', 15, 10247, 357),
('Norris', 'Nero', 15, 10248, 348),
('Macias', 'Alexander', 7, 10249, 311),
('Oneal', 'Sigourney', 2, 10250, 333),
('Scott', 'Sonia', 12, 10251, 332),
('Barnett', 'Kathleen', 3, 10252, 312),
('Yang', 'Althea', 2, 10253, 271),
('Dodson', 'Lenore', 1, 10254, 253),
('Mcdaniel', 'Sawyer', 6, 10255, 308),
('Carlson', 'Azalia', 5, 10256, 382),
('Ingram', 'Price', 14, 10257, 287),
('Wilkerson', 'Isadora', 10, 10258, 332),
('Bowers', 'Denise', 1, 10259, 254),
('Garner', 'Darius', 10, 10260, 289),
('Mejia', 'Emerson', 7, 10261, 251),
('Vincent', 'Garrett', 14, 10262, 388),
('Heath', 'Stephanie', 14, 10263, 334),
('Walter', 'Brandon', 2, 10264, 384),
('Jones', 'Dawn', 3, 10265, 336),
('Morse', 'Andrew', 5, 10266, 386),
('Mccormick', 'Otto', 6, 10267, 305),
('Santana', 'Eaton', 3, 10268, 285),
('Roberson', 'Mercedes', 14, 10269, 349),
('Valdez', 'Yetta', 6, 10270, 281),
('Mcleod', 'Leilani', 10, 10271, 368),
('Barrett', 'Stephen', 5, 10272, 324),
('George', 'Melvin', 15, 10273, 371),
('Kane', 'Harper', 9, 10274, 318),
('Battle', 'Nathan', 6, 10275, 302),
('Galloway', 'Daquan', 11, 10276, 320),
('Britt', 'Donovan', 3, 10277, 332),
('Mason', 'Armand', 7, 10278, 349),
('Merrill', 'Garrison', 12, 10279, 256),
('Manning', 'Shad', 9, 10280, 307),
('Sweeney', 'Savannah', 15, 10281, 254),
('Brady', 'Ivory', 8, 10282, 314),
('Welch', 'Robert', 12, 10283, 317),
('Chang', 'Jordan', 7, 10284, 318),
('Trujillo', 'Miriam', 11, 10285, 336),
('Bird', 'Katell', 14, 10286, 299),
('Johnston', 'Stone', 14, 10287, 319),
('Wilkerson', 'Upton', 3, 10288, 267),
('Kelley', 'Grant', 13, 10289, 253),
('Floyd', 'Gary', 10, 10290, 354),
('Melton', 'Harper', 14, 10291, 354),
('Moore', 'Xanthus', 2, 10292, 316),
('Guy', 'Francis', 10, 10293, 281),
('Frank', 'Cyrus', 6, 10294, 375),
('Moon', 'Amethyst', 14, 10295, 267),
('Arnold', 'Shelley', 5, 10296, 287),
('Maldonado', 'Stewart', 7, 10297, 301),
('Cohen', 'Walker', 9, 10298, 325),
('English', 'Courtney', 3, 10299, 362),
('Ford', 'Odysseus', 13, 10300, 301),
('Baird', 'Kane', 15, 10301, 349),
('Riddle', 'Jonah', 4, 10302, 263),
('Mckay', 'Theodore', 13, 10303, 381),
('Donaldson', 'Briar', 13, 10304, 338),
('Ortiz', 'Cheryl', 4, 10305, 331),
('Osborne', 'Dominic', 9, 10306, 338),
('Pearson', 'Gwendolyn', 15, 10307, 328),
('Aguilar', 'Yoshio', 8, 10308, 369),
('Todd', 'Rahim', 12, 10309, 287),
('Glenn', 'Elmo', 7, 10310, 278),
('Le', 'Gannon', 10, 10311, 297),
('Parsons', 'Sage', 9, 10312, 300),
('Rhodes', 'Robert', 2, 10313, 282),
('Riddle', 'Autumn', 8, 10314, 266),
('Benjamin', 'Chadwick', 8, 10315, 292),
('West', 'Diana', 15, 10316, 336),
('Owen', 'Axel', 2, 10317, 274),
('Parks', 'Lavinia', 6, 10318, 259),
('Pitts', 'Ariel', 2, 10319, 377),
('Horn', 'Castor', 1, 10320, 273),
('Benjamin', 'Kerry', 4, 10321, 264),
('Mendez', 'Zenaida', 15, 10322, 296),
('Newton', 'Adrian', 2, 10323, 370),
('Mcknight', 'Anthony', 10, 10324, 377),
('Callahan', 'Rachel', 11, 10325, 363),
('Riley', 'Chadwick', 7, 10326, 348),
('Morse', 'Ignacia', 12, 10327, 290),
('Swanson', 'Willow', 10, 10328, 304),
('Murray', 'Megan', 8, 10329, 351),
('Grimes', 'Micah', 8, 10330, 384),
('Harvey', 'Callum', 3, 10331, 252),
('French', 'Emi', 10, 10332, 275),
('Pennington', 'Elaine', 4, 10333, 348),
('Head', 'John', 2, 10334, 392),
('Elliott', 'Berk', 15, 10335, 346),
('Nielsen', 'Leslie', 15, 10336, 279),
('Frank', 'Silas', 12, 10337, 331),
('Barker', 'Peter', 9, 10338, 339),
('Vincent', 'Winifred', 12, 10339, 364),
('Terrell', 'Phillip', 5, 10340, 351),
('Butler', 'Anne', 9, 10341, 308),
('Hicks', 'Melvin', 12, 10342, 372),
('Pennington', 'Dahlia', 9, 10343, 310),
('Norton', 'Audrey', 14, 10344, 294),
('Wooten', 'Ivor', 7, 10345, 351),
('Powers', 'Eagan', 3, 10346, 291),
('Ward', 'Shannon', 7, 10347, 314),
('Barron', 'Upton', 6, 10348, 254),
('Patton', 'Harriet', 15, 10349, 311),
('Contreras', 'Bert', 3, 10350, 373),
('Rojas', 'Giacomo', 3, 10351, 287),
('Paul', 'Ila', 13, 10352, 314),
('Hayes', 'Ezra', 9, 10353, 376),
('Curry', 'Tucker', 16, 10354, 380),
('Talley', 'Tanya', 13, 10355, 374),
('Roach', 'Macy', 3, 10356, 274),
('Best', 'Kieran', 9, 10357, 362),
('Buckner', 'Marah', 4, 10358, 342),
('Soto', 'Tallulah', 1, 10359, 348),
('Mullins', 'Rashad', 8, 10360, 397),
('Jordan', 'Burton', 7, 10361, 368),
('Chavez', 'Slade', 2, 10362, 339),
('Jacobs', 'Judah', 12, 10363, 277),
('Scott', 'Kiara', 13, 10364, 306),
('Rice', 'Maite', 2, 10365, 320),
('Dickerson', 'Jeanette', 15, 10366, 261),
('Jackson', 'Emily', 3, 10367, 371),
('Knight', 'Oleg', 4, 10368, 259),
('Ball', 'Kevyn', 9, 10369, 371),
('Ball', 'Justina', 11, 10370, 290),
('Hill', 'Nash', 11, 10371, 328),
('Fowler', 'Roary', 5, 10372, 357),
('Mcknight', 'Ethan', 2, 10373, 369),
('Delacruz', 'Wayne', 13, 10374, 288),
('Harris', 'Fuller', 5, 10375, 283),
('Ochoa', 'Ferris', 6, 10376, 327),
('Adams', 'Fulton', 3, 10377, 326),
('Olson', 'Cherokee', 3, 10378, 382),
('Neal', 'Honorato', 1, 10379, 324),
('Parsons', 'Summer', 12, 10380, 333),
('Allen', 'Patience', 15, 10381, 342),
('Parsons', 'Zorita', 6, 10382, 382),
('Battle', 'Faith', 4, 10383, 273),
('Weeks', 'Rogan', 1, 10384, 259),
('Sharpe', 'Raymond', 5, 10385, 371),
('Fleming', 'Meghan', 5, 10386, 252),
('Christian', 'Dean', 8, 10387, 255),
('Fisher', 'Pearl', 12, 10388, 331),
('Dominguez', 'Joy', 4, 10389, 314),
('Morse', 'Hakeem', 5, 10390, 398),
('Meyers', 'Macaulay', 8, 10391, 399),
('Bernard', 'Cleo', 10, 10392, 291),
('England', 'Raya', 9, 10393, 288),
('Taylor', 'Joy', 7, 10394, 381),
('Hansen', 'Ishmael', 7, 10395, 266),
('Fuentes', 'Sawyer', 13, 10396, 279),
('Peterson', 'Kathleen', 10, 10397, 349),
('Melendez', 'Channing', 11, 10398, 381),
('Thomas', 'Pandora', 3, 10399, 282),
('Curtis', 'Herman', 8, 10400, 345),
('Ortiz', 'Demetria', 11, 10401, 263),
('Trevino', 'Blossom', 16, 10402, 331),
('Caldwell', 'Lance', 10, 10403, 334),
('Vazquez', 'Phelan', 9, 10404, 356),
('Shepard', 'Fatima', 2, 10405, 363),
('Cochran', 'Tiger', 1, 10406, 348),
('Barnett', 'John', 9, 10407, 325),
('Allen', 'Nevada', 5, 10408, 265),
('Maynard', 'Theodore', 10, 10409, 361),
('Galloway', 'Rahim', 11, 10410, 258),
('Sargent', 'Alisa', 16, 10411, 355),
('Hicks', 'Garrison', 9, 10412, 303),
('Lynch', 'Montana', 16, 10413, 311),
('Haney', 'Sebastian', 9, 10414, 298),
('Baxter', 'Geoffrey', 4, 10415, 335),
('Morton', 'Yetta', 8, 10416, 312),
('Ford', 'Lillian', 9, 10417, 269),
('Miller', 'Veda', 3, 10418, 377),
('Parrish', 'Preston', 2, 10419, 385),
('Mcintosh', 'Teegan', 10, 10420, 325),
('Herrera', 'Xander', 2, 10421, 269),
('Graves', 'Lyle', 14, 10422, 327),
('Blevins', 'Ivy', 10, 10423, 343),
('Gregory', 'Zephania', 1, 10424, 276),
('Matthews', 'Odette', 5, 10425, 333),
('Horn', 'Jacob', 12, 10426, 255),
('Long', 'Leilani', 2, 10427, 355),
('Molina', 'Maxwell', 15, 10428, 371),
('Wagner', 'Amir', 5, 10429, 292),
('Martin', 'Riley', 11, 10430, 389),
('Kim', 'Leo', 10, 10431, 285),
('Finley', 'Kimberley', 11, 10432, 399),
('Travis', 'Zoe', 6, 10433, 349),
('Dudley', 'Kathleen', 4, 10434, 255),
('Fox', 'Declan', 5, 10435, 378),
('Holland', 'Macy', 13, 10436, 284),
('Meyers', 'Libby', 3, 10437, 310),
('Wood', 'Deanna', 6, 10438, 293),
('Neal', 'Heather', 2, 10439, 300),
('Hogan', 'Keaton', 1, 10440, 362),
('Terrell', 'Sydney', 13, 10441, 329),
('Durham', 'Kyla', 1, 10442, 314),
('Knox', 'Justine', 14, 10443, 295),
('Kinney', 'Oscar', 7, 10444, 280),
('Guthrie', 'Talon', 4, 10445, 388),
('Horn', 'Serena', 7, 10446, 395),
('Nash', 'Julian', 1, 10447, 284),
('Banks', 'Fletcher', 4, 10448, 360),
('Cox', 'Mikayla', 6, 10449, 278),
('Dunn', 'Ebony', 13, 10450, 275),
('Barker', 'Wade', 2, 10451, 358),
('Gillespie', 'Hadassah', 3, 10452, 252),
('Knox', 'Autumn', 15, 10453, 255),
('Burns', 'Theodore', 8, 10454, 394),
('Graves', 'Branden', 5, 10455, 316),
('Russell', 'Clarke', 9, 10456, 341),
('Reid', 'Malachi', 15, 10457, 363),
('Sampson', 'Imogene', 4, 10458, 283),
('Huff', 'Alyssa', 15, 10459, 252),
('Juarez', 'Adria', 15, 10460, 324),
('Booth', 'Penelope', 12, 10461, 254),
('Clay', 'Aidan', 7, 10462, 310),
('Adams', 'Kasper', 13, 10463, 276),
('Sharp', 'Margaret', 6, 10464, 259),
('Middleton', 'Abra', 16, 10465, 268),
('Tate', 'Sage', 10, 10466, 275),
('Wilkerson', 'Joel', 15, 10467, 284),
('Ratliff', 'Harrison', 3, 10468, 355),
('Tyler', 'Stewart', 14, 10469, 318),
('Curtis', 'Jonas', 9, 10470, 291),
('Conley', 'Vivien', 12, 10471, 262),
('Boyer', 'Harrison', 15, 10472, 287),
('Burns', 'Dillon', 7, 10473, 256),
('Owen', 'Dale', 15, 10474, 297),
('Vega', 'Imelda', 9, 10475, 321),
('Diaz', 'Mason', 4, 10476, 326),
('Hernandez', 'Raven', 14, 10477, 252),
('Levine', 'Xenos', 7, 10478, 394),
('Allen', 'Lunea', 11, 10479, 283),
('Goff', 'Clementine', 1, 10480, 258),
('Lynn', 'Farrah', 10, 10481, 399),
('William', 'Dorian', 10, 10482, 283),
('Vaughan', 'Ivan', 3, 10483, 354),
('Little', 'Keane', 15, 10484, 374),
('Little', 'Megan', 10, 10485, 257),
('Macias', 'Rogan', 3, 10486, 344),
('Mcdaniel', 'Aurelia', 3, 10487, 392),
('Owen', 'Jane', 3, 10488, 281),
('Cameron', 'Demetrius', 10, 10489, 341),
('Hooper', 'Nathan', 4, 10490, 334),
('Fox', 'Indigo', 7, 10491, 349),
('Weaver', 'Melvin', 13, 10492, 324),
('Hebert', 'Keaton', 13, 10493, 399),
('Donovan', 'Robin', 6, 10494, 339),
('Beck', 'Kato', 1, 10495, 340),
('Collins', 'Kirsten', 10, 10496, 371),
('Blevins', 'Ainsley', 9, 10497, 272),
('Rollins', 'Reagan', 14, 10498, 369),
('Ford', 'Arthur', 14, 10499, 317);

-- --------------------------------------------------------

--
-- Structure de la table `licencie`
--

DROP TABLE IF EXISTS `licencie`;
CREATE TABLE IF NOT EXISTS `licencie` (
  `NOMLICENCIE` varchar(100) DEFAULT NULL,
  `IDLICENCIE` int(11) NOT NULL,
  `NATIONALITELICENCIE` int(11) DEFAULT NULL,
  `PRENOMLICENCIE` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`IDLICENCIE`),
  KEY `LICENCIE_PK` (`IDLICENCIE`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `licencie`
--

INSERT INTO `licencie` (`NOMLICENCIE`, `IDLICENCIE`, `NATIONALITELICENCIE`, `PRENOMLICENCIE`) VALUES
('Burke', 10000, 6, 'Patience'),
('Gentry', 10001, 14, 'Quintessa'),
('Chan', 10002, 13, 'Evan'),
('Sherman', 10003, 12, 'Dorothy'),
('Lloyd', 10004, 3, 'Emi'),
('Ratliff', 10005, 15, 'Harding'),
('Pearson', 10006, 7, 'Malachi'),
('Beach', 10007, 15, 'Denton'),
('Payne', 10008, 12, 'Wyoming'),
('Walls', 10009, 5, 'Maxwell'),
('Jacobson', 10010, 12, 'Naomi'),
('Estes', 10011, 3, 'Joy'),
('Finch', 10012, 5, 'Donna'),
('Carter', 10013, 9, 'Jameson'),
('Rosales', 10014, 10, 'Brody'),
('Kerr', 10015, 15, 'Haviva'),
('Good', 10016, 11, 'Hannah'),
('Mcmillan', 10017, 4, 'Kellie'),
('Ford', 10018, 12, 'Yen'),
('Fernandez', 10019, 4, 'Dominic'),
('Leach', 10020, 14, 'Nola'),
('Goff', 10021, 5, 'Hall'),
('Snow', 10022, 6, 'Britanni'),
('Lester', 10023, 13, 'Olivia'),
('Hartman', 10024, 11, 'Moana'),
('Ashley', 10025, 16, 'Stuart'),
('Rivers', 10026, 7, 'Olga'),
('Barton', 10027, 5, 'Gillian'),
('Velazquez', 10028, 4, 'Raya'),
('Woods', 10029, 1, 'Brynn'),
('Cannon', 10030, 16, 'Noble'),
('Zimmerman', 10031, 13, 'Maile'),
('Silva', 10032, 11, 'Amanda'),
('Shelton', 10033, 2, 'Nasim'),
('James', 10034, 14, 'Indigo'),
('Warren', 10035, 4, 'Faith'),
('Mcdaniel', 10036, 6, 'Aaron'),
('Dudley', 10037, 10, 'Uma'),
('Hunt', 10038, 12, 'Aristotle'),
('Floyd', 10039, 13, 'Allegra'),
('Bender', 10040, 5, 'Nathan'),
('Frederick', 10041, 13, 'Ila'),
('Powell', 10042, 5, 'Dexter'),
('Collins', 10043, 1, 'Yoshio'),
('Hays', 10044, 3, 'Graiden'),
('Galloway', 10045, 6, 'Mufutau'),
('Vang', 10046, 14, 'Arsenio'),
('Carson', 10047, 13, 'Nero'),
('Dunlap', 10048, 13, 'Maxwell'),
('Cherry', 10049, 14, 'McKenzie'),
('Gill', 10050, 9, 'Zenaida'),
('Kramer', 10051, 15, 'Maya'),
('Meyer', 10052, 8, 'Althea'),
('Cobb', 10053, 4, 'Sarah'),
('Sexton', 10054, 5, 'Richard'),
('Martin', 10055, 11, 'Calvin'),
('Lott', 10056, 4, 'Hedy'),
('Sutton', 10057, 15, 'Iliana'),
('Orr', 10058, 13, 'Reese'),
('Rollins', 10059, 14, 'Lucius'),
('Robbins', 10060, 11, 'Venus'),
('Marshall', 10061, 3, 'Amelia'),
('Buckley', 10062, 4, 'Vivian'),
('Terrell', 10063, 12, 'Raphael'),
('Kemp', 10064, 15, 'Malachi'),
('Summers', 10065, 2, 'Ruth'),
('Lowery', 10066, 3, 'Jakeem'),
('Hickman', 10067, 14, 'Zephania'),
('Lewis', 10068, 6, 'Hoyt'),
('Best', 10069, 10, 'Hedwig'),
('Fields', 10070, 4, 'Eric'),
('Graves', 10071, 5, 'Connor'),
('Rose', 10072, 1, 'Lani'),
('Guerrero', 10073, 13, 'Knox'),
('Dunlap', 10074, 6, 'Warren'),
('Martinez', 10075, 13, 'Jada'),
('Stark', 10076, 14, 'Amelia'),
('Austin', 10077, 5, 'Sybill'),
('Vang', 10078, 15, 'Raya'),
('Collier', 10079, 13, 'Mohammad'),
('Fitzgerald', 10080, 2, 'Leroy'),
('Richards', 10081, 13, 'Martha'),
('Hopper', 10082, 12, 'Liberty'),
('Sampson', 10083, 1, 'Quinn'),
('Sharp', 10084, 16, 'Armando'),
('Shaw', 10085, 14, 'Lionel'),
('Benton', 10086, 11, 'Caldwell'),
('Velez', 10087, 2, 'Britanney'),
('Evans', 10088, 3, 'Rebecca'),
('Lynch', 10089, 13, 'Vaughan'),
('Atkinson', 10090, 7, 'Anne'),
('Bray', 10091, 9, 'Mara'),
('Campos', 10092, 3, 'Hamish'),
('Castillo', 10093, 7, 'Macon'),
('Trevino', 10094, 15, 'Vladimir'),
('Moran', 10095, 11, 'Ruby'),
('Key', 10096, 3, 'Lacy'),
('Dalton', 10097, 6, 'Wylie'),
('Petersen', 10098, 14, 'Fatima'),
('Barlow', 10099, 9, 'Jordan');

-- --------------------------------------------------------

--
-- Structure de la table `matchh`
--

DROP TABLE IF EXISTS `matchh`;
CREATE TABLE IF NOT EXISTS `matchh` (
  `IDMATCH` int(11) NOT NULL,
  `IDCOURT` int(11) NOT NULL,
  `IDTOURNOI` int(11) NOT NULL,
  `ARBITREID` int(11) NOT NULL,
  `TOURNOIID` int(11) DEFAULT NULL,
  `IDGAGNANT` int(11) DEFAULT NULL,
  `HORAIRES` timestamp NULL DEFAULT NULL,
  `TARIFBASE` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`IDMATCH`),
  KEY `MATCH_PK` (`IDMATCH`),
  KEY `ARBITREPRINCIPAL_FK` (`ARBITREID`),
  KEY `SEDEROULEDANS_FK` (`IDCOURT`),
  KEY `ESTCOMPOSEDE_FK` (`IDTOURNOI`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `matchsuivant`
--

DROP TABLE IF EXISTS `matchsuivant`;
CREATE TABLE IF NOT EXISTS `matchsuivant` (
  `MAT_IDMATCH` int(11) NOT NULL,
  `IDMATCH` int(11) NOT NULL,
  PRIMARY KEY (`MAT_IDMATCH`,`IDMATCH`),
  KEY `MATCHSUIVANT_PK` (`MAT_IDMATCH`,`IDMATCH`),
  KEY `MATCHSUIVANT_FK` (`MAT_IDMATCH`),
  KEY `MATCHSUIVANT2_FK` (`IDMATCH`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `nationalite`
--

DROP TABLE IF EXISTS `nationalite`;
CREATE TABLE IF NOT EXISTS `nationalite` (
  `IDNATIONALITE` int(11) NOT NULL,
  `NOMPAYS` char(30) DEFAULT NULL,
  PRIMARY KEY (`IDNATIONALITE`),
  KEY `NATIONALITE_PK` (`IDNATIONALITE`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `nationalite`
--

INSERT INTO `nationalite` (`IDNATIONALITE`, `NOMPAYS`) VALUES
(1, 'Belgium'),
(2, 'France'),
(3, 'Germany'),
(4, 'United States'),
(5, 'Spain'),
(6, 'Brazil'),
(7, 'Italy'),
(8, 'Canada'),
(9, 'Australia'),
(10, 'Austria'),
(11, 'Indonesia'),
(12, 'Colombia'),
(13, 'Turkey'),
(14, 'China'),
(15, 'Nigeria'),
(16, 'United Kingdom');

-- --------------------------------------------------------

--
-- Structure de la table `participe`
--

DROP TABLE IF EXISTS `participe`;
CREATE TABLE IF NOT EXISTS `participe` (
  `IDTOURNOI` int(11) NOT NULL,
  `IDJOUEUR` int(11) NOT NULL,
  PRIMARY KEY (`IDTOURNOI`,`IDJOUEUR`),
  KEY `PARTICIPE_PK` (`IDTOURNOI`,`IDJOUEUR`),
  KEY `PARTICIPE_FK` (`IDTOURNOI`),
  KEY `PARTICIPE2_FK` (`IDJOUEUR`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `participer`
--

DROP TABLE IF EXISTS `participer`;
CREATE TABLE IF NOT EXISTS `participer` (
  `EQUIPEID` int(11) NOT NULL,
  `IDTOURNOI` int(11) NOT NULL,
  PRIMARY KEY (`EQUIPEID`,`IDTOURNOI`),
  KEY `PARTICIPER_PK` (`EQUIPEID`,`IDTOURNOI`),
  KEY `PARTICIPER_FK` (`EQUIPEID`),
  KEY `PARTICIPER2_FK` (`IDTOURNOI`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `possede`
--

DROP TABLE IF EXISTS `possede`;
CREATE TABLE IF NOT EXISTS `possede` (
  `IDCOURT` int(11) NOT NULL,
  `IDEMPLACEMENT` int(11) NOT NULL,
  PRIMARY KEY (`IDCOURT`,`IDEMPLACEMENT`),
  KEY `POSSEDE_PK` (`IDCOURT`,`IDEMPLACEMENT`),
  KEY `POSSEDE_FK` (`IDCOURT`),
  KEY `POSSEDE2_FK` (`IDEMPLACEMENT`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ramassepour`
--

DROP TABLE IF EXISTS `ramassepour`;
CREATE TABLE IF NOT EXISTS `ramassepour` (
  `IDMATCH` int(11) NOT NULL,
  `IDRAMASSEUR` int(11) NOT NULL,
  `NUMEROEQUIPE` int(11) DEFAULT NULL,
  PRIMARY KEY (`IDMATCH`,`IDRAMASSEUR`),
  KEY `RAMASSEPOUR_PK` (`IDMATCH`,`IDRAMASSEUR`),
  KEY `RAMASSEPOUR_FK` (`IDMATCH`),
  KEY `RAMASSEPOUR2_FK` (`IDRAMASSEUR`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ramasseurs`
--

DROP TABLE IF EXISTS `ramasseurs`;
CREATE TABLE IF NOT EXISTS `ramasseurs` (
  `IDRAMASSEUR` int(11) NOT NULL,
  `NOMRAMASSEUR` varchar(100) DEFAULT NULL,
  `PRENOMRAMASSEUR` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`IDRAMASSEUR`),
  KEY `RAMASSEURS_PK` (`IDRAMASSEUR`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `ramasseurs`
--

INSERT INTO `ramasseurs` (`IDRAMASSEUR`, `NOMRAMASSEUR`, `PRENOMRAMASSEUR`) VALUES
(10000, 'Stevenson', 'Quinlan'),
(10001, 'Santos', 'Yoshi'),
(10002, 'Wilkins', 'Tad'),
(10003, 'Peck', 'Jana'),
(10004, 'Hartman', 'Gil'),
(10005, 'Durham', 'Lacey'),
(10006, 'Donaldson', 'Shelby'),
(10007, 'Patrick', 'Hammett'),
(10008, 'Knapp', 'William'),
(10009, 'Schultz', 'Jescie'),
(10010, 'Miles', 'Brynne'),
(10011, 'Holcomb', 'Carolyn'),
(10012, 'Weaver', 'Evelyn'),
(10013, 'Cooke', 'Austin'),
(10014, 'Garner', 'Avram'),
(10015, 'Ingram', 'Keely'),
(10016, 'Odom', 'Abbot'),
(10017, 'Lott', 'Ginger'),
(10018, 'Diaz', 'Julian'),
(10019, 'Casey', 'Coby'),
(10020, 'Estes', 'Axel'),
(10021, 'Cannon', 'Nyssa'),
(10022, 'Vaughan', 'Drake'),
(10023, 'Spears', 'Alfreda'),
(10024, 'Hensley', 'Quynn'),
(10025, 'Williams', 'Gemma'),
(10026, 'Taylor', 'Maggie'),
(10027, 'Austin', 'Harper'),
(10028, 'Jimenez', 'Phillip'),
(10029, 'Sparks', 'Raven'),
(10030, 'Rush', 'Ria'),
(10031, 'Clemons', 'Ivory'),
(10032, 'Ware', 'Kiara'),
(10033, 'Walters', 'Carolyn'),
(10034, 'Rasmussen', 'Aladdin'),
(10035, 'Guy', 'Helen'),
(10036, 'Clayton', 'Athena'),
(10037, 'Noble', 'Miranda'),
(10038, 'Buckley', 'Kamal'),
(10039, 'Preston', 'Cally'),
(10040, 'Brown', 'Holly'),
(10041, 'Gillespie', 'Warren'),
(10042, 'Hernandez', 'Amaya'),
(10043, 'Johns', 'Lacy'),
(10044, 'Gardner', 'Lynn'),
(10045, 'Marquez', 'Jerry'),
(10046, 'Davenport', 'Malcolm'),
(10047, 'Small', 'Denise'),
(10048, 'Norman', 'Keane'),
(10049, 'Holmes', 'Eaton'),
(10050, 'Herman', 'Evelyn'),
(10051, 'Mcclure', 'Alisa'),
(10052, 'Dawson', 'Zorita'),
(10053, 'Middleton', 'Tara'),
(10054, 'Weiss', 'Quinn'),
(10055, 'Benjamin', 'Ginger'),
(10056, 'Velasquez', 'Dorothy'),
(10057, 'Lawrence', 'Ursula'),
(10058, 'Hyde', 'Benedict'),
(10059, 'Neal', 'Robert'),
(10060, 'Alford', 'Megan'),
(10061, 'Gray', 'Gregory'),
(10062, 'Freeman', 'Stella'),
(10063, 'Harrison', 'Damian'),
(10064, 'Barton', 'Aidan'),
(10065, 'Spencer', 'Uriel'),
(10066, 'Mckinney', 'Ebony'),
(10067, 'Frank', 'Kuame'),
(10068, 'Walton', 'Wynne'),
(10069, 'Decker', 'Hedley'),
(10070, 'Warren', 'Glenna'),
(10071, 'Christensen', 'Wang'),
(10072, 'Spears', 'Riley'),
(10073, 'Bauer', 'Shelly'),
(10074, 'Savage', 'Sawyer'),
(10075, 'Knapp', 'Zachery'),
(10076, 'Hill', 'Lois'),
(10077, 'Cain', 'Orlando'),
(10078, 'Huber', 'Rinah'),
(10079, 'Crawford', 'Martina'),
(10080, 'Beach', 'Kennedy'),
(10081, 'Larsen', 'Isadora'),
(10082, 'Grant', 'Cameran'),
(10083, 'Ryan', 'Timon'),
(10084, 'Cummings', 'Flynn'),
(10085, 'David', 'Uriah'),
(10086, 'Wood', 'Hayes'),
(10087, 'Burke', 'Ezra'),
(10088, 'Kennedy', 'Liberty'),
(10089, 'Doyle', 'Phoebe'),
(10090, 'Woods', 'Ray'),
(10091, 'Morales', 'Shannon'),
(10092, 'Morse', 'Alan'),
(10093, 'Fuller', 'Elvis'),
(10094, 'Baxter', 'Cailin'),
(10095, 'Lara', 'Peter'),
(10096, 'Welch', 'Alexis'),
(10097, 'Puckett', 'Kasimir'),
(10098, 'Payne', 'Lucas'),
(10099, 'Sharpe', 'Cameron');

-- --------------------------------------------------------

--
-- Structure de la table `tournoi`
--

DROP TABLE IF EXISTS `tournoi`;
CREATE TABLE IF NOT EXISTS `tournoi` (
  `DATEDEBUTTOURNOI` date DEFAULT NULL,
  `DATEFINTOURNOI` date DEFAULT NULL,
  `IDTOURNOI` int(11) NOT NULL,
  `TYPETOURNOI` varchar(100) DEFAULT NULL,
  `NOMBRETOURS` int(11) DEFAULT NULL,
  `ISVALIDATED` smallint(6) DEFAULT NULL,
  `NOMTOURNOI` varchar(100) DEFAULT NULL,
  `DATEOUVERTUREBILLETTERIE` date DEFAULT NULL,
  PRIMARY KEY (`IDTOURNOI`),
  KEY `TOURNOI_PK` (`IDTOURNOI`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
