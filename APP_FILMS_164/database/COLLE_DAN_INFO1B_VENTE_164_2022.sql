-- --------------------------------------------------------
-- Hôte:                         127.0.0.1
-- Version du serveur:           5.7.11 - MySQL Community Server (GPL)
-- SE du serveur:                Win32
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Listage de la structure de la base pour colle_dan_info1b_vente_164_2022
DROP DATABASE IF EXISTS `colle_dan_info1b_vente_164_2022`;
CREATE DATABASE IF NOT EXISTS `colle_dan_info1b_vente_164_2022` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `colle_dan_info1b_vente_164_2022`;

-- Listage de la structure de la table colle_dan_info1b_vente_164_2022. t_clients
CREATE TABLE IF NOT EXISTS `t_clients` (
  `id_personne` int(11) NOT NULL AUTO_INCREMENT,
  `nom_personne` varchar(50) DEFAULT NULL,
  `prenom_personne` varchar(50) DEFAULT NULL,
  `adresse_personne` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_personne`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- Listage des données de la table colle_dan_info1b_vente_164_2022.t_clients : ~6 rows (environ)
/*!40000 ALTER TABLE `t_clients` DISABLE KEYS */;
INSERT INTO `t_clients` (`id_personne`, `nom_personne`, `prenom_personne`, `adresse_personne`) VALUES
	(1, 'Collé', 'Dan', 'Chemin de la chavanne 24, 1196 Gland'),
	(2, 'Khouitti', 'Ilian', 'Rue de la gare 9B, 1196 - Gland'),
	(6, 'Gross', 'Michael', 'Rue du village 4, 1260-Nyon'),
	(7, 'Leo', 'Arbert', 'Alée du communet 2'),
	(9, 'Lopez', 'Samuel', 'Grand Lancy 1421'),
	(11, 'Collé', 'Séverine', 'Allée Leotherius 2, 1196 - Gland');
/*!40000 ALTER TABLE `t_clients` ENABLE KEYS */;

-- Listage de la structure de la table colle_dan_info1b_vente_164_2022. t_clients_avoir_commande
CREATE TABLE IF NOT EXISTS `t_clients_avoir_commande` (
  `id_client_avoir_commande` int(11) NOT NULL AUTO_INCREMENT,
  `fk_client` int(11) NOT NULL,
  `fk_commande` int(11) NOT NULL,
  PRIMARY KEY (`id_client_avoir_commande`),
  KEY `t_clients_avoir_commande_id_client_fk_client` (`fk_client`),
  KEY `t_clients_avoir_commande_id_commande_fk_commande` (`fk_commande`),
  CONSTRAINT `t_clients_avoir_commande_id_client_fk_client` FOREIGN KEY (`fk_client`) REFERENCES `t_clients` (`id_personne`),
  CONSTRAINT `t_clients_avoir_commande_id_commande_fk_commande` FOREIGN KEY (`fk_commande`) REFERENCES `t_commandes` (`id_commande`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Listage des données de la table colle_dan_info1b_vente_164_2022.t_clients_avoir_commande : ~1 rows (environ)
/*!40000 ALTER TABLE `t_clients_avoir_commande` DISABLE KEYS */;
INSERT INTO `t_clients_avoir_commande` (`id_client_avoir_commande`, `fk_client`, `fk_commande`) VALUES
	(1, 1, 1);
/*!40000 ALTER TABLE `t_clients_avoir_commande` ENABLE KEYS */;

-- Listage de la structure de la table colle_dan_info1b_vente_164_2022. t_clients_avoir_mail
CREATE TABLE IF NOT EXISTS `t_clients_avoir_mail` (
  `id_client_avoir_mail` int(11) NOT NULL AUTO_INCREMENT,
  `fk_client` int(11) NOT NULL,
  `fk_mail` int(11) NOT NULL,
  PRIMARY KEY (`id_client_avoir_mail`),
  KEY `t_clients_avoir_mail_id_client_fk_client` (`fk_client`),
  KEY `t_clients_avoir_mail_id_mail_fk_mail` (`fk_mail`),
  CONSTRAINT `t_clients_avoir_mail_id_client_fk_client` FOREIGN KEY (`fk_client`) REFERENCES `t_clients` (`id_personne`),
  CONSTRAINT `t_clients_avoir_mail_id_mail_fk_mail` FOREIGN KEY (`fk_mail`) REFERENCES `t_mails` (`id_mail`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Listage des données de la table colle_dan_info1b_vente_164_2022.t_clients_avoir_mail : ~2 rows (environ)
/*!40000 ALTER TABLE `t_clients_avoir_mail` DISABLE KEYS */;
INSERT INTO `t_clients_avoir_mail` (`id_client_avoir_mail`, `fk_client`, `fk_mail`) VALUES
	(1, 1, 1),
	(2, 1, 2);
/*!40000 ALTER TABLE `t_clients_avoir_mail` ENABLE KEYS */;

-- Listage de la structure de la table colle_dan_info1b_vente_164_2022. t_commandes
CREATE TABLE IF NOT EXISTS `t_commandes` (
  `id_commande` int(11) NOT NULL AUTO_INCREMENT,
  `adresse_livraison` varchar(50) DEFAULT NULL,
  `date_commande` date DEFAULT NULL,
  `FK_personne` int(11) DEFAULT NULL,
  `FK_entite` int(11) DEFAULT NULL,
  `quantite_commande` int(11) NOT NULL,
  `FK_type_entite` int(11) NOT NULL,
  PRIMARY KEY (`id_commande`),
  KEY `FK_personne` (`FK_personne`),
  KEY `FK_entite` (`FK_entite`),
  CONSTRAINT `t_commandes_ibfk_1` FOREIGN KEY (`FK_personne`) REFERENCES `t_clients` (`id_personne`),
  CONSTRAINT `t_commandes_ibfk_2` FOREIGN KEY (`FK_entite`) REFERENCES `t_entites` (`id_entite`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Listage des données de la table colle_dan_info1b_vente_164_2022.t_commandes : ~1 rows (environ)
/*!40000 ALTER TABLE `t_commandes` DISABLE KEYS */;
INSERT INTO `t_commandes` (`id_commande`, `adresse_livraison`, `date_commande`, `FK_personne`, `FK_entite`, `quantite_commande`, `FK_type_entite`) VALUES
	(1, 'Chemin de la chavanne 24 - 1196 Gland', '2022-03-21', 1, 1, 3, 1),
  (2, 'Allée Leotheruis 2 - 1196 Gland', '2022-04-11', 11, 2, 1, 2);

/*!40000 ALTER TABLE `t_commandes` ENABLE KEYS */;

-- Listage de la structure de la table colle_dan_info1b_vente_164_2022. t_commande_avoir_entite
CREATE TABLE IF NOT EXISTS `t_commande_avoir_entite` (
  `id_commande_avoir_entite` int(11) NOT NULL AUTO_INCREMENT,
  `fk_commande` int(11) NOT NULL,
  `fk_entite` int(11) NOT NULL,
  PRIMARY KEY (`id_commande_avoir_entite`),
  KEY `t_commande_avoir_entite_id_commande_fk_commande` (`fk_commande`),
  KEY `t_commande_avoir_entite_id_entite_fk_entite` (`fk_entite`),
  CONSTRAINT `t_commande_avoir_entite_id_commande_fk_commande` FOREIGN KEY (`fk_commande`) REFERENCES `t_commandes` (`id_commande`),
  CONSTRAINT `t_commande_avoir_entite_id_entite_fk_entite` FOREIGN KEY (`fk_entite`) REFERENCES `t_entites` (`id_entite`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Listage des données de la table colle_dan_info1b_vente_164_2022.t_commande_avoir_entite : ~1 rows (environ)
/*!40000 ALTER TABLE `t_commande_avoir_entite` DISABLE KEYS */;
INSERT INTO `t_commande_avoir_entite` (`id_commande_avoir_entite`, `fk_commande`, `fk_entite`) VALUES
	(1, 1, 1);
/*!40000 ALTER TABLE `t_commande_avoir_entite` ENABLE KEYS */;

-- Listage de la structure de la table colle_dan_info1b_vente_164_2022. t_entites
CREATE TABLE IF NOT EXISTS `t_entites` (
  `id_entite` int(11) NOT NULL AUTO_INCREMENT,
  `nom_entite` varchar(50) DEFAULT NULL,
  `prix_entite` int(11) DEFAULT NULL,
  `description_entite` varchar(200) DEFAULT NULL,
  `quantite_entite` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_entite`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Listage des données de la table colle_dan_info1b_vente_164_2022.t_entites : ~2 rows (environ)
/*!40000 ALTER TABLE `t_entites` DISABLE KEYS */;
INSERT INTO `t_entites` (`id_entite`, `nom_entite`, `prix_entite`, `description_entite`, `quantite_entite`) VALUES
	(1, 'T-shirt violet', 200, 'T-shirt de couleur violet fabriqué par une marque connue', 10),
	(2, '10\'000$ sur notre serveur de jeu', 10, 'Somme d\'argent fictive pour notre serveur FiveM', 999999);
/*!40000 ALTER TABLE `t_entites` ENABLE KEYS */;

-- Listage de la structure de la table colle_dan_info1b_vente_164_2022. t_mails
CREATE TABLE IF NOT EXISTS `t_mails` (
  `id_mail` int(11) NOT NULL AUTO_INCREMENT,
  `mail_personne` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_mail`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- Listage des données de la table colle_dan_info1b_vente_164_2022.t_mails : ~12 rows (environ)
/*!40000 ALTER TABLE `t_mails` DISABLE KEYS */;
INSERT INTO `t_mails` (`id_mail`, `mail_personne`) VALUES
	(1, 'dan@demoniak.ch'),
	(2, 'demoniakserveur@gmail.com'),
	(3, 'raiko@dykiz.com'),
	(4, 'smokey@dykiz.com'),
	(5, 'mo2warck@dykiz.com'),
	(6, 'frederic.pamart@demoniak.ch'),
	(7, 'ilian.khouiti5@gmail.com'),
	(8, 'berryan43@gmail.com'),
	(9, 'andres.perezuribe@gmail.com'),
	(10, 'antomax33.jeux@gmail.com'),
	(11, 'thomidamian@gmail.com'),
	(12, 'lvt.brand@gmail.com');
/*!40000 ALTER TABLE `t_mails` ENABLE KEYS */;

-- Listage de la structure de la table colle_dan_info1b_vente_164_2022. t_types_entites
CREATE TABLE IF NOT EXISTS `t_types_entites` (
  `id_type` int(11) NOT NULL AUTO_INCREMENT,
  `nom_type` varchar(50) DEFAULT NULL,
  `type_description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id_type`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- Listage des données de la table colle_dan_info1b_vente_164_2022.t_types_entites : ~2 rows (environ)
/*!40000 ALTER TABLE `t_types_entites` DISABLE KEYS */;
INSERT INTO `t_types_entites` (`id_type`, `nom_type`, `type_description`) VALUES
	(1, 'Prêt à porter', 'Vêtements en tout genre'),
	(2, 'Element virtuel', 'Ensemble des microtransactions');
/*!40000 ALTER TABLE `t_types_entites` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
