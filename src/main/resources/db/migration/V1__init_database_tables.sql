CREATE TABLE `user` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`full_name` VARCHAR(30) NOT NULL COLLATE 'utf8_general_ci',
	`username` VARCHAR(30) NOT NULL COLLATE 'utf8_general_ci',
	`email` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8_general_ci',
	`password` VARCHAR(60) NOT NULL COLLATE 'utf8_general_ci',
	`mobile_number` VARCHAR(10) NOT NULL COLLATE 'utf8_general_ci',
	`locked` BIT(1) NOT NULL DEFAULT b'1',
	`first_login` BIT(1) NULL DEFAULT b'1',
	`enabled` BIT(1) NOT NULL DEFAULT b'1',
	`expired` BIT(1) NOT NULL DEFAULT b'1',
	`registered_date` TIMESTAMP NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
	`ward_no` INT(11) NOT NULL DEFAULT '1',
	PRIMARY KEY (`id`) USING BTREE,
	UNIQUE INDEX `username` (`username`) USING BTREE,
	UNIQUE INDEX `mobile_number` (`mobile_number`) USING BTREE,
	UNIQUE INDEX `email` (`email`) USING BTREE
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
;

INSERT INTO `user` (`id`, `full_name`, `username`, `email`, `password`, `mobile_number`, `locked`, `first_login`, `enabled`, `expired`, `registered_date`, `ward_no`) VALUES
	(1, 'Super Admin', 'adminsuper', 'adminsuper@gmail.com', '$2a$11$H9wDLxAPTX5qp0doFKank.w6vgB7xPo1CJojH2AC0ovBY4Iu31oTS', '9849931288', b'0', b'0', b'1', b'0', '2022-07-19 03:12:01', 0),
	(2, 'Central Admin', 'admincentral', 'admincentral@gmail.com', '$2a$11$H9wDLxAPTX5qp0doFKank.w6vgB7xPo1CJojH2AC0ovBY4Iu31oTS', '9849399058', b'0', b'0', b'1', b'0', '2022-07-19 03:12:01', 0),
	(3, 'Ward Admin', 'adminward', 'adminward@admin.com', '$2a$11$H9wDLxAPTX5qp0doFKank.w6vgB7xPo1CJojH2AC0ovBY4Iu31oTS', '9841000000', b'0', b'0', b'1', b'0', '2022-07-19 03:12:01', 1),
	(4, 'Surveyor Demo', 'surveyourdemo', 'surveyordemo@admin.com', '$2a$11$H9wDLxAPTX5qp0doFKank.w6vgB7xPo1CJojH2AC0ovBY4Iu31oTS', '9841000001', b'0', b'0', b'1', b'0', '2022-07-19 03:12:01', 1),
	(5, 'Manoj', 'mrokka', 'mrokka@gmail.com', '$2a$11$yhWjGh1q36nIylkYWfBr4uH9i9if8JyORwfBRtgtaWdt0r0HkHk6.', '9841984307', b'0', b'0', b'1', b'0', '2022-07-22 15:25:06', 1),
	(6, 'Asmita', 'asmita', 'asmita@gmail.com', '$2a$11$dWpQ/IW71m9ynvpyxuEkf.jA7eJquvb4lelCmQ6wv5E5/NvoXRvRK', '9841984305', b'0', b'0', b'1', b'0', '2022-07-18 23:18:29', 1),
	(7, 'Sajan Nagarkoti', 'datacollector1', 'nagarkotisajan3@gmail.com', '$2a$11$074BFLVDZCbH3oDUqNxlPeTXtyi/9y.X6i021TIbnL4EUTi2c9fvS', '9849555895', b'0', b'0', b'1', b'0', '2022-07-24 23:26:08', 1),
	(8, 'Salon Khadka', 'datacollector2', 'saalonkhadka@gmail.com', '$2a$11$UJI5OEBMqDek1yeFQqjQWOfK7zvM2Acds7DGFLaMT0Rs97UdrRtOW', '9849963966', b'0', b'0', b'1', b'0', '2022-07-24 23:29:00', 1),
	(9, 'Anisha Dudraj', 'datacollector3', 'anishagataraj@gmail.com', '$2a$11$70BiyYOlr4WS...U/0x7V.W3qphsDAezzjpedtvVvuA1kgF8LYgFe', '9823765247', b'0', b'0', b'1', b'0', '2022-07-24 23:31:06', 1),
	(10, 'Pranish Thapa', 'datacollector4', 'pranisht702@gmail.com', '$2a$11$/T1GC8btw2Xf5IVdLJM9mOgjoqGrvyo5aoJU3aeLRbKOhZ64Z5wqW', '9808295190', b'0', b'0', b'1', b'0', '2022-07-24 23:34:38', 2),
	(11, 'Mandira Budathoki', 'datacollector5', 'kmandira2044@gmail.com', '$2a$11$uwmYwPecAGue7HeY3MCxIuq9Nt1rdcjesHEV5iHy/yhL6ohHpYDWq', '9841680060', b'0', b'0', b'1', b'0', '2022-07-24 23:37:03', 2),
	(12, 'Renu KC', 'datacollector6', 'renukc252@gmail.com', '$2a$11$PGbOzH26DSR5SbR0vmicm.XDyJtE/JiLE2GMnPTi3ISutSkEh0ab.', '9843084202', b'0', b'0', b'1', b'0', '2022-07-24 23:40:08', 3),
	(13, 'Bhawana Adhikari', 'datacollector7', 'bhawanaadhikari@gmail.com', '$2a$11$PIsswKxP8E18s992TIAAV.PQLlxsbhJNDz2FtJ2dBdlZNtMTWXGEG', '9803461065', b'0', b'0', b'1', b'0', '2022-07-24 23:42:31', 3),
	(14, 'Anish Tamang', 'datacollector8', 'anishtamang247@gmail.com', '$2a$11$ZF6tWxjRRultAyaIJ4XVJuJaE6FDKdQecZh6ILtd6VSZXUhv5YEIC', '9801014802', b'0', b'0', b'1', b'0', '2022-07-24 23:44:26', 4),
	(15, 'Mithun Tamang', 'datacollector9', 'lamasamir929@gmail.com', '$2a$11$j3v0pnWajmANy.ZPLJjoXehJeyyhKD/Xa9pI2Ha7qPJMWGBIhv7ma', '9869218408', b'0', b'0', b'1', b'0', '2022-07-24 23:47:57', 4),
	(16, 'Subakshya Bhujel', 'datacollector10', 'subekshyabhujel973@gmail.com', '$2a$11$kacU/A8CktzuOxZYkJFBv.OD.5lH3H9/QF3mQRV4SyeNl4yj92XRW', '9828025077', b'0', b'0', b'1', b'0', '2022-07-24 23:51:04', 5),
	(17, 'Shwokita Dudhraj', 'datacollector11', 'swastikadudraj2@gmail.com', '$2a$11$0hysd.dH5/Yz6.k94Zji5eUFabPtknHFlIZ62o3df24RQy/Da7yTy', '9818412796', b'0', b'0', b'1', b'0', '2022-07-25 22:15:38', 5),
	(18, 'Sowyamvu Raj Dangol', 'buddhird', 'info@nepalayaonline.com', '$2a$11$YfisfgYxY5YxqWEtSC9rdeyBLeSQX9wlFM2NvyJ250aE1QFEz3dJy', '9841209831', b'0', b'0', b'1', b'0', '2022-07-25 00:06:16', 9),
	(19, 'Raju Shrestha', 'datacollector13', 'sachi1989batas@gmail.com', '$2a$11$UxHqA5irUGuWqiNE4oyocuniXbkwmxynxERgd72FYQdp5GlXd.qnG', '9841186904', b'0', b'0', b'1', b'0', '2022-07-25 00:25:10', 6),
	(20, 'Salon Man Shrestha', 'datacollector14', 'shresthasaalon80@gmail.com', '$2a$11$UiY0FlBGs4fxEUIzCCN/BOunphw2XBZa4au6V6WALWqQB8eP5plJ6', '9803376809', b'0', b'0', b'1', b'0', '2022-07-25 00:28:38', 6),
	(21, 'Susan Balami', 'datacollector15', 'balamisusan111@gmail.com', '$2a$11$hJXnhwFuAFdl72Gk/ULch.WHnSIpYHKZz3MDBv8pthcDv.ysU.KJe', '9840058676', b'0', b'0', b'1', b'0', '2022-07-25 00:31:02', 6),
	(22, 'Sangita Bhattrai', 'datacollector16', 'aryalsangita@gmail.com', '$2a$11$WMrpyp8c6NO87gdL0slu0et8CV/Nc/udXSR4AX2SBmnwXa4Z3mu3m', '9866884824', b'0', b'0', b'1', b'0', '2022-07-25 00:33:34', 7),
	(23, 'Anjana Tamang', 'datacollector17', 'anjanatamang188@gmail.com', '$2a$11$yYMIOyBhAyX8yCibPn966eO62n6AYtmjLyogHuvv.mpF1gJxX.5Gy', '9813034815', b'0', b'0', b'1', b'0', '2022-07-25 00:36:05', 7),
	(24, 'Saraswoti Ghising', 'datacollector18', 'ghising.saraswoti49@gmail.com', '$2a$11$pkBuGXVq3IXltGm1kpUZSO.H/x4j7mcPfqF3CxbllmiU1/TARhc7.', '9862733092', b'0', b'0', b'1', b'0', '2022-07-25 00:38:10', 8),
	(25, 'Santi Ghising', 'datacollector19', 'shantigt912@gmail.com', '$2a$11$AiWK6l4UUPnMIAX.hccVne5JTXoQerusEFiHjl1CCBYPgcPiFKeHC', '9840097912', b'0', b'0', b'1', b'0', '2022-07-25 00:40:05', 8),
	(26, 'Prajwol Rai', 'datacollector20', 'raiprajwol123654@gmail.com', '$2a$11$TnuHRSFSMMJwA.ypiNKAZeDBVYyc7B2dSqt1qsHpJguZu3IuNYLGS', '9860301369', b'0', b'0', b'1', b'0', '2022-07-25 00:42:48', 8),
	(27, 'Sajan Pudasaini ', 'datacollector21', 'pusasainisajan86@gmail.com', '$2a$11$v4OnjL0DeY4Pd5d9FmSPX.UZt3k8g1xb4vMwIqv7R02Oe7FbMz4aa', '9860969566', b'0', b'0', b'1', b'0', '2022-07-25 00:46:47', 8),
	(28, 'Umesh Tamang', 'datacollector22', 'umeshtamangw98@gmail.com', '$2a$11$4ujT7l.Xu3BrYQ9C8Mi0t.AncG7ZO.J9DbaqimWGy3PBobDq6N64W', '9741429266', b'0', b'0', b'1', b'0', '2022-07-25 00:48:33', 9),
	(29, 'Usha Lama', 'datacollector23', 'uklaningtamang188@gmail.com', '$2a$11$ieasWgG7XLGvtX0g19ZjRuRIkMMn5UQxQQK9ojO2/1DKwEoCXe176', '9860140132', b'0', b'0', b'1', b'0', '2022-07-25 00:50:55', 9),
	(30, 'Bal Krishna Raila', 'datacollector24', 'railabal@gmail.com', '$2a$11$vfYYrOrZpYj6gsnVNNQcYOVaUdDMFEVg8mHajUPGSBrMcu4puDZN2', '9840449681', b'0', b'0', b'1', b'0', '2022-07-25 00:52:34', 9),
	(31, 'Bhawana Gurung', 'datacollector25', 'bhawanagrg87@gmail.com', '$2a$11$GH8F2ah76w5vhr1utVV.pecdHyCJnWRRoddVTSybN..DSK4JwpYYy', '9861344384', b'0', b'0', b'1', b'0', '2022-07-25 00:54:53', 9),
	(32, 'Ashmita Basnet', 'datacollector26', 'ashmita20056@gmail.com', '$2a$11$P7puTxKWK1I8HIwVaBWeh.lFxL4XaqLkCjO71c5nyCaf33najGsfy', '9840449602', b'0', b'0', b'1', b'0', '2022-07-25 00:58:26', 9),
	(33, 'Sajana Ghatani', 'datacollector12', 'ghtshanti1@gmail.com', '$2a$11$P7puTxKWK1I8HIwVaBWeh.lFxL4XaqLkCjO71c5nyCaf33najGsfy', '9818284372', b'0', b'0', b'1', b'0', '2022-07-25 22:15:59', 5);

CREATE TABLE IF NOT EXISTS `role` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`role` VARCHAR(15) NOT NULL,
	`role_nepali` VARCHAR(15) NOT NULL,
	PRIMARY KEY (`id`)
);

INSERT INTO `role` (`id`, `role`, `role_nepali`) VALUES
    (1, 'SUPER_ADMIN','सुपर एडमिन' ),
    (2, 'CENTRAL_ADMIN', 'केन्द्रिय एडमिन'),
	(3, 'WARD_ADMIN', 'वडा एडमिन'),
	(4, 'SURVEYOR', 'तथ्यांक संकलक');

CREATE TABLE IF NOT EXISTS `user_role` (
	`user_id` INT(11) NOT NULL,
	`role_id` INT(11) NOT NULL,
	PRIMARY KEY (`user_id`, `role_id`)
);

INSERT INTO `user_role` (`user_id`, `role_id`) VALUES
	(1, 1),
	(2, 2),
	(3, 3),
	(4, 4),
	(5, 4),
	(6, 4),
	(7, 4),
	(8, 4),
	(9, 4),
	(10, 4),
	(11, 4),
	(12, 4),
	(13, 4),
	(14, 4),
	(15, 4),
	(16, 4),
	(17, 4),
	(18, 4),
	(19, 4),
	(20, 4),
	(21, 4),
	(22, 4),
	(23, 4),
	(24, 4),
	(25, 4),
	(26, 4),
	(27, 4),
	(28, 4),
	(29, 4),
	(30, 4),
	(31, 4),
	(32, 4),
	(33, 4);


CREATE TABLE IF NOT EXISTS `form` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`form_id` VARCHAR(50) NOT NULL DEFAULT '0',
	`form_name` VARCHAR(50) NOT NULL,
	PRIMARY KEY (`id`),
	UNIQUE INDEX `form_id` (`form_id`)
);


CREATE TABLE IF NOT EXISTS `question` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`indx` INT(11) NOT NULL,
	`question_id` VARCHAR(50) NOT NULL,
	`description` TEXT NOT NULL,
	`group` VARCHAR(50) NOT NULL,
	`required` INT(11) NOT NULL DEFAULT 0,
	`type_id` INT(11) NOT NULL DEFAULT 1,
	`form_id` INT(11) NOT NULL,
	`reportable` BIT(1) NOT NULL DEFAULT b'0',
	PRIMARY KEY (`id`),
	UNIQUE INDEX `question_id` (`question_id`),
	UNIQUE INDEX `indx` (`indx`)
);


CREATE TABLE IF NOT EXISTS `question_type` (
	`type_id` INT(11) NOT NULL AUTO_INCREMENT,
	`type_name` VARCHAR(20) NOT NULL DEFAULT '0',
	PRIMARY KEY (`type_id`)
);

INSERT INTO `ipalika_dakshinkali`.`question_type` (`type_id`, `type_name`) VALUES ('1', 'CHECKBOX');
INSERT INTO `ipalika_dakshinkali`.`question_type` (`type_id`, `type_name`) VALUES ('2', 'RADIO');
INSERT INTO `ipalika_dakshinkali`.`question_type` (`type_id`, `type_name`) VALUES ('3', 'TEXT');
INSERT INTO `ipalika_dakshinkali`.`question_type` (`type_id`, `type_name`) VALUES ('4', 'NUMBER');
INSERT INTO `ipalika_dakshinkali`.`question_type` (`type_id`, `type_name`) VALUES ('5', 'DATE');
INSERT INTO `ipalika_dakshinkali`.`question_type` (`type_id`, `type_name`) VALUES ('6', 'GPS');
INSERT INTO `ipalika_dakshinkali`.`question_type` (`type_id`, `type_name`) VALUES ('7', 'IMAGE');
INSERT INTO `ipalika_dakshinkali`.`question_type` (`type_id`, `type_name`) VALUES ('8', 'MULTI_TEXT');
INSERT INTO `ipalika_dakshinkali`.`question_type` (`type_id`, `type_name`) VALUES ('9', 'RADIO_D');
INSERT INTO `ipalika_dakshinkali`.`question_type` (`type_id`, `type_name`) VALUES ('10', 'RATING_M');
INSERT INTO `ipalika_dakshinkali`.`question_type` (`type_id`, `type_name`) VALUES ('11', 'RATING');
INSERT INTO `ipalika_dakshinkali`.`question_type` (`type_id`, `type_name`) VALUES ('12', 'CHECKBOX_N');
INSERT INTO `ipalika_dakshinkali`.`question_type` (`type_id`, `type_name`) VALUES ('13', 'DROPDOWN');
INSERT INTO `ipalika_dakshinkali`.`question_type` (`type_id`, `type_name`) VALUES ('14', 'DISTRICT');
INSERT INTO `ipalika_dakshinkali`.`question_type` (`type_id`, `type_name`) VALUES ('15', 'WARD');
INSERT INTO `ipalika_dakshinkali`.`question_type` (`type_id`, `type_name`) VALUES ('16', 'RADIO_M');

CREATE TABLE IF NOT EXISTS `options` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`option_id` INT NOT NULL,
	`option_text` VARCHAR(200) NOT NULL,
	`question_id` INT(11) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `answer` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`form_id` INT(11) NOT NULL DEFAULT 0,
	`entry_date` DATETIME NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
	`duration` VARCHAR(50) NOT NULL DEFAULT '0',
	`filled_id` VARCHAR(50) NOT NULL DEFAULT '0',
	`added_by` INT(11) NOT NULL DEFAULT 0,
	`verified_by` INT(11) NOT NULL DEFAULT 0,
	`modified_by` INT(11) NOT NULL DEFAULT 0,
	`answer_1` TEXT NULL,
	`answer_2` TEXT NULL,
	`answer_3` TEXT NULL,
	`answer_4` TEXT NULL,
	`answer_5` TEXT NULL,
	`answer_6` TEXT NULL,
	`answer_7` TEXT NULL,
	`answer_8` TEXT NULL,
	`answer_9` TEXT NULL,
	`answer_10` TEXT NULL,
	`answer_11` TEXT NULL,
	`answer_12` TEXT NULL,
	`answer_13` TEXT NULL,
	`answer_14` TEXT NULL,
	`answer_15` TEXT NULL,
	`answer_16` TEXT NULL,
	`answer_17` TEXT NULL,
	`answer_18` TEXT NULL,
	`answer_19` TEXT NULL,
	`answer_20` TEXT NULL,
	`answer_21` TEXT NULL,
	`answer_22` TEXT NULL,
	`answer_23` TEXT NULL,
	`answer_24` TEXT NULL,
	`answer_25` TEXT NULL,
	`answer_26` TEXT NULL,
	`answer_27` TEXT NULL,
	`answer_28` TEXT NULL,
	`answer_29` TEXT NULL,
	`answer_30` TEXT NULL,
	`answer_31` TEXT NULL,
	`answer_32` TEXT NULL,
	`answer_33` TEXT NULL,
	`answer_34` TEXT NULL,
	`answer_35` TEXT NULL,
	`answer_36` TEXT NULL,
	`answer_37` TEXT NULL,
	`answer_38` TEXT NULL,
	`answer_39` TEXT NULL,
	`answer_40` TEXT NULL,
	`answer_41` TEXT NULL,
	`answer_42` TEXT NULL,
	`answer_43` TEXT NULL,
	`answer_44` TEXT NULL,
	`answer_45` TEXT NULL,
	`answer_46` TEXT NULL,
	`answer_47` TEXT NULL,
	`answer_48` TEXT NULL,
	`answer_49` TEXT NULL,
	`answer_50` TEXT NULL,
	`answer_51` TEXT NULL,
	`answer_52` TEXT NULL,
	`answer_53` TEXT NULL,
	`answer_54` TEXT NULL,
	`answer_55` TEXT NULL,
	`answer_56` TEXT NULL,
	`answer_57` TEXT NULL,
	`answer_58` TEXT NULL,
	`answer_59` TEXT NULL,
	`answer_60` TEXT NULL,
	`answer_61` TEXT NULL,
	`answer_62` TEXT NULL,
	`answer_63` TEXT NULL,
	`answer_64` TEXT NULL,
	`answer_65` TEXT NULL,
	`answer_66` TEXT NULL,
	`answer_67` TEXT NULL,
	`answer_68` TEXT NULL,
	`answer_69` TEXT NULL,
	`answer_70` TEXT NULL,
	`answer_71` TEXT NULL,
	`answer_72` TEXT NULL,
	`answer_73` TEXT NULL,
	`answer_74` TEXT NULL,
	`answer_75` TEXT NULL,
	`answer_76` TEXT NULL,
	`answer_77` TEXT NULL,
	`answer_78` TEXT NULL,
	`answer_79` TEXT NULL,
	`answer_80` TEXT NULL,
	`answer_81` TEXT NULL,
	`answer_82` TEXT NULL,
	`answer_83` TEXT NULL,
	`answer_84` TEXT NULL,
	`answer_85` TEXT NULL,
	`answer_86` TEXT NULL,
	`answer_87` TEXT NULL,
	`answer_88` TEXT NULL,
	`answer_89` TEXT NULL,
	`answer_90` TEXT NULL,
	`answer_91` TEXT NULL,
	`answer_92` TEXT NULL,
	`answer_93` TEXT NULL,
	`answer_94` TEXT NULL,
	`answer_95` TEXT NULL,
	`answer_96` TEXT NULL,
	`answer_97` TEXT NULL,
	`answer_98` TEXT NULL,
	`answer_99` TEXT NULL,
	`answer_100` TEXT NULL,
	`deleted` bit(1) NOT NULL DEFAULT b'0',
	PRIMARY KEY (`id`),
	UNIQUE INDEX `filled_id` (`filled_id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `favourite_place` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`fav_place_id` VARCHAR(100) NOT NULL,
	`fav_place_name` TEXT,
	`fav_place_type` TEXT,
	`fav_place_desc` TEXT,
	`fav_place_photo` TEXT,
	`fav_place_location` TEXT,
	`fav_place_ward` TEXT,
	`added_by` INT(11) NULL DEFAULT 0,
	`deleted` bit(1) NOT NULL DEFAULT b'0',
	PRIMARY KEY (`id`),
	UNIQUE KEY `fav_place_id_UNIQUE` (`fav_place_id`)
);


CREATE TABLE IF NOT EXISTS `family_member` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`family_id` varchar(50) NOT NULL,
	`full_name` varchar(50) NOT NULL,
	`relation_id` int(11) NOT NULL,
	`age` int(11) NOT NULL,
	`gender_id` int(11) NOT NULL,
	`marital_status` int(11) NOT NULL,
	`qualification_id` int(11) NOT NULL,
	`occupation` int(11) NOT NULL DEFAULT 0,
	`has_voter_id` bit(1) NOT NULL DEFAULT b'0',
	`health_status` int(11) NOT NULL DEFAULT 0,
	`educational_institute` int(11) DEFAULT NULL,
	`disability` int(11) NOT NULL DEFAULT 0,
	`member_id` varchar(50) NOT NULL DEFAULT '0',
	`is_dead` bit(1) NOT NULL DEFAULT b'0',
	`dob_ad` varchar(45) NOT NULL,
	`dob_bs` varchar(45) NOT NULL,
	`deleted` bit(1) NOT NULL DEFAULT b'0',
	PRIMARY KEY (`id`),
	UNIQUE KEY `member_id_UNIQUE` (`member_id`)
);


CREATE TABLE IF NOT EXISTS `family_relation` (
	`relation_id` INT(11) NOT NULL AUTO_INCREMENT,
	`relation_nepali` VARCHAR(50) NOT NULL DEFAULT '0',
	`relation_english` VARCHAR(50) NOT NULL DEFAULT '0',
	PRIMARY KEY (`relation_id`)
);

CREATE TABLE IF NOT EXISTS `gender` (
	`gender_id` INT(11) NOT NULL AUTO_INCREMENT,
	`gender_nepali` VARCHAR(45) DEFAULT NULL,
	`gender_english` VARCHAR(45) DEFAULT NULL,
	PRIMARY KEY (`gender_id`)
);

CREATE TABLE IF NOT EXISTS `academic_qualification` (
  `qualification_id` INT(11) NOT NULL AUTO_INCREMENT,
  `qualification_nep` VARCHAR(50) DEFAULT NULL,
  `qualification_eng` VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY (`qualification_id`)
);

CREATE TABLE `population_report` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`based_on` VARCHAR(50) NOT NULL DEFAULT '0',
	`option_1` DOUBLE NOT NULL DEFAULT 0,
	`option_2` DOUBLE NOT NULL DEFAULT 0,
	`option_3` DOUBLE NOT NULL DEFAULT 0,
	`option_4` DOUBLE NOT NULL DEFAULT 0,
	`option_5` DOUBLE NOT NULL DEFAULT 0,
	`option_6` DOUBLE NOT NULL DEFAULT 0,
	`option_7` DOUBLE NOT NULL DEFAULT 0,
	`option_8` DOUBLE NOT NULL DEFAULT 0,
	`option_9` DOUBLE NOT NULL DEFAULT 0,
	`option_10` DOUBLE NOT NULL DEFAULT 0,
	`option_11` DOUBLE NOT NULL DEFAULT 0,
	`option_12` DOUBLE NOT NULL DEFAULT 0,
	`option_13` DOUBLE NOT NULL DEFAULT 0,
	`option_14` DOUBLE NOT NULL DEFAULT 0,
	`option_15` DOUBLE NOT NULL DEFAULT 0,
	`total` DOUBLE NOT NULL DEFAULT 0,
	`ward` INT(11) NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`),
	UNIQUE INDEX `based_on` (`based_on`)
);


CREATE TABLE `question_report` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`question_id` INT(11) NOT NULL DEFAULT 0,
	`option_1` DOUBLE NOT NULL DEFAULT 0,
	`option_2` DOUBLE NOT NULL DEFAULT 0,
	`option_3` DOUBLE NOT NULL DEFAULT 0,
	`option_4` DOUBLE NOT NULL DEFAULT 0,
	`option_5` DOUBLE NOT NULL DEFAULT 0,
	`option_6` DOUBLE NOT NULL DEFAULT 0,
	`option_7` DOUBLE NOT NULL DEFAULT 0,
	`option_8` DOUBLE NOT NULL DEFAULT 0,
	`option_9` DOUBLE NOT NULL DEFAULT 0,
	`option_10` DOUBLE NOT NULL DEFAULT 0,
	`option_11` DOUBLE NOT NULL DEFAULT 0,
	`option_12` DOUBLE NOT NULL DEFAULT 0,
	`option_13` DOUBLE NOT NULL DEFAULT 0,
	`option_14` DOUBLE NOT NULL DEFAULT 0,
	`option_15` DOUBLE NOT NULL DEFAULT 0,
	`total` DOUBLE NOT NULL DEFAULT 0,
	`ward` INT(11) NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`),
	UNIQUE INDEX `question_id` (`question_id`)
);

CREATE TABLE IF NOT EXISTS `districts` (
  `district_id` INT(11) NOT NULL AUTO_INCREMENT,
  `district_name_nep` VARCHAR(50) NOT NULL,
  `district_name_eng` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`district_id`)
);

CREATE TABLE IF NOT EXISTS `favourite_place_type` (
  `type_id` INT(11) NOT NULL AUTO_INCREMENT,
  `place_type_nep` VARCHAR(50) NOT NULL,
  `place_type_eng` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`type_id`)
);

CREATE TABLE IF NOT EXISTS `marital_status` (
  `marital_status_id` INT(11) NOT NULL AUTO_INCREMENT,
  `marital_status_nep` VARCHAR(50) NOT NULL,
  `marital_status_eng` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`marital_status_id`)
);

CREATE TABLE IF NOT EXISTS `ward` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`ward_number` INT(11) NOT NULL,
	`location` VARCHAR(100) NOT NULL DEFAULT '0',
	`name` VARCHAR(100) NOT NULL DEFAULT '0',
	`ward_description` TEXT,
	`main_person` VARCHAR(5000) NOT NULL DEFAULT '0',
	`contact_no` VARCHAR(50) NOT NULL DEFAULT '0',
	`building_image` VARCHAR(300) DEFAULT '0',
	PRIMARY KEY (`id`),
	UNIQUE KEY `ward_number_UNIQUE` (`ward_number`)
);


CREATE TABLE `death_record` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`registration_number` VARCHAR(150) NOT NULL COLLATE 'utf8_general_ci',
	`member_id` VARCHAR(15) NOT NULL COLLATE 'utf8_general_ci',
	`death_cause` VARCHAR(150) NOT NULL COLLATE 'utf8_general_ci',
	`demise_date` DATETIME NOT NULL,
	`place` VARCHAR(150) NOT NULL COLLATE 'utf8_general_ci',
	PRIMARY KEY (`id`) USING BTREE,
	UNIQUE INDEX `registration_number` (`registration_number`) USING BTREE,
	UNIQUE INDEX `member_id` (`member_id`) USING BTREE
);


CREATE TABLE `extra_report` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`report_name` VARCHAR(100) NULL DEFAULT NULL COLLATE 'utf8_general_ci',
	`data` INT(11) NOT NULL DEFAULT '0',
	`ward` INT(11) NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`) USING BTREE,
	UNIQUE INDEX `report_name` (`report_name`) USING BTREE
);

CREATE TABLE `favourite_place_report` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`place_type` VARCHAR(100) NULL DEFAULT NULL COLLATE 'utf8_general_ci',
	`data` INT(11) NOT NULL DEFAULT '0',
	`ward` INT(11) NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`) USING BTREE,
	UNIQUE INDEX `place_type` (`place_type`) USING BTREE
);

CREATE TABLE IF NOT EXISTS `differently_abled` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `differently_abled_nep` varchar(200) DEFAULT NULL,
  `differently_abled_eng` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;

CREATE TABLE IF NOT EXISTS `educational_institute` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `educational_institute_nep` varchar(200) DEFAULT NULL,
  `educational_institute_eng` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;

CREATE TABLE IF NOT EXISTS `health_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `health_status_nep` varchar(200) NOT NULL,
  `health_status_eng` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;

CREATE TABLE IF NOT EXISTS `occupation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `occupation_nep` varchar(200) DEFAULT NULL,
  `occupation_eng` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;