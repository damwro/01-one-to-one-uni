DROP SCHEMA IF EXISTS `01-one-to-one-uni`;

CREATE SCHEMA `01-one-to-one-uni`;

use `01-one-to-one-uni`;

SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS `driver_detail`;

CREATE TABLE `driver_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transport_type` varchar(10) DEFAULT NULL,
  `phone_number` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `driver`;

CREATE TABLE `driver` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `driver_detail_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_DETAIL_idx` (`driver_detail_id`),
  CONSTRAINT `FK_DETAIL` FOREIGN KEY (`driver_detail_id`) REFERENCES `driver_detail` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

SET FOREIGN_KEY_CHECKS = 1;
