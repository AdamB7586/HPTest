CREATE TABLE IF NOT EXISTS `config` (
  `setting` varchar(100) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`setting`),
  UNIQUE KEY `setting` (`setting`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `config` (`setting`, `value`) VALUES
('table_hazard_progress', 'users_hazard_progress'),
('table_hazard_videos', 'hazard_clips');

--
-- Table structure for table `hazard_clips`
--

CREATE TABLE IF NOT EXISTS `hazard_clips` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reference` varchar(30) DEFAULT NULL,
  `type_code` tinyint(3) DEFAULT NULL,
  `type1` smallint(6) DEFAULT NULL,
  `type2` smallint(6) DEFAULT NULL,
  `owner` varchar(20) DEFAULT NULL,
  `hptestno` smallint(6) DEFAULT NULL,
  `hptestposition` smallint(6) DEFAULT NULL,
  `title` varchar(80) DEFAULT NULL,
  `description` text,
  `nohazards` smallint(6) DEFAULT NULL,
  `prehazard` decimal(6,3) DEFAULT NULL,
  `five` decimal(6,3) DEFAULT NULL,
  `four` decimal(6,3) DEFAULT NULL,
  `three` decimal(6,3) DEFAULT NULL,
  `two` decimal(6,3) DEFAULT NULL,
  `one` decimal(6,3) DEFAULT NULL,
  `endseq` decimal(6,3) DEFAULT NULL,
  `title2` varchar(80) DEFAULT NULL,
  `description2` text,
  `prehazard2` decimal(6,3) DEFAULT NULL,
  `ten` decimal(6,3) DEFAULT NULL,
  `nine` decimal(6,3) DEFAULT NULL,
  `eight` decimal(6,3) DEFAULT NULL,
  `seven` decimal(6,3) DEFAULT NULL,
  `six` decimal(6,3) DEFAULT NULL,
  `endseq2` decimal(6,3) DEFAULT NULL,
  `endClip` decimal(6,3) DEFAULT NULL,
  `ratio` enum('16by9','4by3') NOT NULL DEFAULT '16by9',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Table structure for table `users_hazard_progress`
--

CREATE TABLE IF NOT EXISTS `users_hazard_progress` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) UNSIGNED NOT NULL,
  `test_id` int(11) NOT NULL,
  `current_test` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `progress` text,
  `test_type` varchar(6) NOT NULL DEFAULT 'CAR',
  `status` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `test_id` (`test_id`),
  KEY `test_type` (`test_type`),
  KEY `current` (`current_test`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
