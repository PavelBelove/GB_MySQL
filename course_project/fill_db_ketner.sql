############################################
-- Рандомизацией данных не занимался, как и приведением тех же цен к нормальному виду,
-- Так как база в итоге будет заполняться корректными данными, скорее всего уже после сдачи проекта,
-- часть таблиц проще заполнить вручную, для другой - буду писать парсеры, но это по ходу создания приложения. 
############################################


USE ketner;
#
# TABLE STRUCTURE FOR: bone
#

DROP TABLE IF EXISTS `bone`;

CREATE TABLE `bone` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cost` int(10) unsigned DEFAULT NULL,
  `material_id` int(10) unsigned NOT NULL,
  `is_marriage` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `bone` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (101, 'dolores', 66786862, 101, 1);
INSERT INTO `bone` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (102, 'dicta', 0, 102, 1);
INSERT INTO `bone` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (103, 'eaque', 52444, 103, 1);
INSERT INTO `bone` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (104, 'provident', 4, 104, 1);
INSERT INTO `bone` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (105, 'voluptas', 23427, 105, 0);
INSERT INTO `bone` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (106, 'magni', 573, 106, 1);
INSERT INTO `bone` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (107, 'laudantium', 481, 107, 1);
INSERT INTO `bone` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (108, 'dolor', 84483, 108, 0);
INSERT INTO `bone` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (109, 'tempora', 2081, 109, 0);
INSERT INTO `bone` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (110, 'quaerat', 4190277, 110, 1);


#
# TABLE STRUCTURE FOR: bone_operation
#

DROP TABLE IF EXISTS `bone_operation`;

CREATE TABLE `bone_operation` (
  `bone_id` int(10) unsigned NOT NULL,
  `operation_id` int(10) unsigned NOT NULL,
  `tool_id` int(10) unsigned DEFAULT NULL,
  `is_complited` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`bone_id`,`operation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (101, 101, 101, 1);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (101, 111, 111, 0);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (101, 121, 101, 0);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (101, 131, 111, 0);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (101, 141, 101, 1);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (101, 151, 111, 1);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (101, 161, 101, 1);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (101, 171, 111, 1);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (101, 181, 101, 0);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (101, 191, 111, 1);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (102, 102, 102, 0);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (102, 112, 112, 1);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (102, 122, 102, 0);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (102, 132, 112, 1);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (102, 142, 102, 1);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (102, 152, 112, 1);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (102, 162, 102, 1);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (102, 172, 112, 1);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (102, 182, 102, 0);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (102, 192, 112, 0);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (103, 103, 103, 0);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (103, 113, 113, 0);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (103, 123, 103, 0);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (103, 133, 113, 1);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (103, 143, 103, 0);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (103, 153, 113, 1);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (103, 163, 103, 0);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (103, 173, 113, 0);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (103, 183, 103, 0);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (103, 193, 113, 1);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (104, 104, 104, 0);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (104, 114, 114, 1);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (104, 124, 104, 0);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (104, 134, 114, 0);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (104, 144, 104, 0);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (104, 154, 114, 0);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (104, 164, 104, 0);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (104, 174, 114, 0);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (104, 184, 104, 1);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (104, 194, 114, 1);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (105, 105, 105, 0);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (105, 115, 115, 0);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (105, 125, 105, 0);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (105, 135, 115, 0);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (105, 145, 105, 0);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (105, 155, 115, 1);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (105, 165, 105, 0);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (105, 175, 115, 0);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (105, 185, 105, 1);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (105, 195, 115, 0);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (106, 106, 106, 1);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (106, 116, 116, 0);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (106, 126, 106, 0);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (106, 136, 116, 1);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (106, 146, 106, 1);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (106, 156, 116, 0);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (106, 166, 106, 1);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (106, 176, 116, 1);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (106, 186, 106, 1);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (106, 196, 116, 1);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (107, 107, 107, 1);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (107, 117, 117, 1);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (107, 127, 107, 1);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (107, 137, 117, 1);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (107, 147, 107, 0);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (107, 157, 117, 1);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (107, 167, 107, 1);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (107, 177, 117, 1);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (107, 187, 107, 1);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (107, 197, 117, 1);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (108, 108, 108, 1);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (108, 118, 118, 1);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (108, 128, 108, 1);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (108, 138, 118, 1);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (108, 148, 108, 1);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (108, 158, 118, 1);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (108, 168, 108, 1);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (108, 178, 118, 1);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (108, 188, 108, 0);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (108, 198, 118, 0);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (109, 109, 109, 0);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (109, 119, 119, 0);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (109, 129, 109, 0);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (109, 139, 119, 0);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (109, 149, 109, 0);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (109, 159, 119, 1);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (109, 169, 109, 1);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (109, 179, 119, 1);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (109, 189, 109, 0);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (109, 199, 119, 1);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (110, 110, 110, 1);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (110, 120, 120, 0);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (110, 130, 110, 0);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (110, 140, 120, 0);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (110, 150, 110, 1);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (110, 160, 120, 0);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (110, 170, 110, 0);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (110, 180, 120, 0);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (110, 190, 110, 0);
INSERT INTO `bone_operation` (`bone_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (110, 200, 120, 1);


#
# TABLE STRUCTURE FOR: bung
#

DROP TABLE IF EXISTS `bung`;

CREATE TABLE `bung` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cost` int(10) unsigned DEFAULT NULL,
  `material_id` int(10) unsigned NOT NULL,
  `is_marriage` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `bung` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (101, 'culpa', 5247, 101, 1);
INSERT INTO `bung` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (102, 'ratione', 493, 102, 1);
INSERT INTO `bung` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (103, 'occaecati', 120, 103, 0);
INSERT INTO `bung` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (104, 'delectus', 261640, 104, 1);
INSERT INTO `bung` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (105, 'ullam', 12116, 105, 1);
INSERT INTO `bung` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (106, 'aut', 6, 106, 0);
INSERT INTO `bung` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (107, 'et', 1, 107, 0);
INSERT INTO `bung` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (108, 'quas', 19347465, 108, 1);
INSERT INTO `bung` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (109, 'est', 14584367, 109, 0);
INSERT INTO `bung` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (110, 'dolor', 6671, 110, 1);


#
# TABLE STRUCTURE FOR: bung_operation
#

DROP TABLE IF EXISTS `bung_operation`;

CREATE TABLE `bung_operation` (
  `bung_id` int(10) unsigned NOT NULL,
  `operation_id` int(10) unsigned NOT NULL,
  `tool_id` int(10) unsigned DEFAULT NULL,
  `is_complited` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`bung_id`,`operation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (101, 101, 101, 1);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (101, 111, 111, 0);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (101, 121, 101, 0);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (101, 131, 111, 0);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (101, 141, 101, 0);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (101, 151, 111, 0);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (101, 161, 101, 0);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (101, 171, 111, 0);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (101, 181, 101, 0);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (101, 191, 111, 1);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (102, 102, 102, 1);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (102, 112, 112, 0);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (102, 122, 102, 0);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (102, 132, 112, 0);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (102, 142, 102, 0);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (102, 152, 112, 0);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (102, 162, 102, 0);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (102, 172, 112, 0);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (102, 182, 102, 1);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (102, 192, 112, 1);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (103, 103, 103, 1);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (103, 113, 113, 1);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (103, 123, 103, 1);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (103, 133, 113, 1);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (103, 143, 103, 1);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (103, 153, 113, 0);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (103, 163, 103, 0);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (103, 173, 113, 1);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (103, 183, 103, 0);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (103, 193, 113, 1);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (104, 104, 104, 1);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (104, 114, 114, 1);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (104, 124, 104, 0);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (104, 134, 114, 0);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (104, 144, 104, 0);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (104, 154, 114, 1);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (104, 164, 104, 0);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (104, 174, 114, 1);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (104, 184, 104, 1);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (104, 194, 114, 0);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (105, 105, 105, 0);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (105, 115, 115, 0);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (105, 125, 105, 0);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (105, 135, 115, 1);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (105, 145, 105, 0);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (105, 155, 115, 0);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (105, 165, 105, 1);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (105, 175, 115, 0);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (105, 185, 105, 1);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (105, 195, 115, 0);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (106, 106, 106, 0);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (106, 116, 116, 0);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (106, 126, 106, 1);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (106, 136, 116, 0);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (106, 146, 106, 1);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (106, 156, 116, 0);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (106, 166, 106, 0);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (106, 176, 116, 0);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (106, 186, 106, 1);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (106, 196, 116, 1);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (107, 107, 107, 1);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (107, 117, 117, 0);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (107, 127, 107, 1);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (107, 137, 117, 1);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (107, 147, 107, 1);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (107, 157, 117, 1);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (107, 167, 107, 0);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (107, 177, 117, 0);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (107, 187, 107, 0);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (107, 197, 117, 0);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (108, 108, 108, 1);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (108, 118, 118, 1);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (108, 128, 108, 1);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (108, 138, 118, 0);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (108, 148, 108, 0);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (108, 158, 118, 1);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (108, 168, 108, 1);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (108, 178, 118, 1);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (108, 188, 108, 0);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (108, 198, 118, 0);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (109, 109, 109, 0);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (109, 119, 119, 0);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (109, 129, 109, 0);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (109, 139, 119, 0);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (109, 149, 109, 1);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (109, 159, 119, 0);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (109, 169, 109, 1);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (109, 179, 119, 1);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (109, 189, 109, 1);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (109, 199, 119, 0);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (110, 110, 110, 1);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (110, 120, 120, 0);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (110, 130, 110, 0);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (110, 140, 120, 0);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (110, 150, 110, 1);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (110, 160, 120, 0);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (110, 170, 110, 1);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (110, 180, 120, 1);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (110, 190, 110, 1);
INSERT INTO `bung_operation` (`bung_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (110, 200, 120, 0);


#
# TABLE STRUCTURE FOR: call_order
#

DROP TABLE IF EXISTS `call_order`;

CREATE TABLE `call_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `model_id` int(10) unsigned NOT NULL,
  `order_id` int(10) unsigned NOT NULL,
  `item_status_id` int(10) unsigned NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=301 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (101, 101, 151, 101, '1981-06-24 04:24:26', '1986-03-31 18:54:14');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (102, 102, 152, 102, '2017-12-13 10:42:55', '2014-02-09 17:01:16');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (103, 103, 153, 103, '2014-02-25 04:27:11', '1988-01-14 11:42:19');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (104, 104, 154, 101, '1988-08-08 02:21:31', '1974-06-16 00:46:26');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (105, 105, 155, 102, '2013-05-27 11:11:59', '2008-06-28 14:17:16');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (106, 106, 157, 103, '2004-06-05 07:29:50', '1991-01-14 09:25:44');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (107, 107, 158, 101, '1988-08-18 02:20:42', '1985-09-09 05:52:26');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (108, 108, 160, 102, '2002-01-06 08:58:28', '1996-02-12 20:08:55');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (109, 109, 161, 103, '2016-01-04 17:30:46', '1996-05-12 22:40:15');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (110, 110, 162, 101, '2006-04-03 13:46:33', '1973-03-28 03:25:41');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (111, 111, 163, 102, '1977-12-02 07:15:50', '1983-04-10 22:20:03');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (112, 112, 165, 103, '2015-07-01 23:11:43', '1979-02-22 11:35:59');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (113, 113, 166, 101, '2009-12-07 23:22:26', '1999-06-07 18:19:05');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (114, 114, 167, 102, '1970-04-27 11:20:49', '1980-06-20 15:25:49');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (115, 115, 168, 103, '1996-06-11 21:14:42', '1983-01-05 06:51:55');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (116, 116, 169, 101, '2005-07-20 15:53:54', '2001-12-29 18:50:41');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (117, 117, 170, 102, '1993-02-18 04:34:07', '1985-10-17 21:27:52');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (118, 118, 171, 103, '1988-11-24 21:07:50', '1974-11-13 19:13:26');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (119, 119, 172, 101, '2005-08-04 08:36:39', '2019-05-19 11:00:34');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (120, 120, 173, 102, '1985-07-10 09:19:07', '1986-05-10 05:01:45');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (121, 121, 174, 103, '2004-11-02 13:43:38', '1970-06-30 16:33:57');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (122, 122, 175, 101, '1992-02-20 08:59:00', '2016-10-21 22:46:29');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (123, 123, 177, 102, '2009-04-09 21:38:00', '1981-02-10 20:35:34');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (124, 124, 178, 103, '2010-11-11 18:56:51', '1986-01-31 18:24:56');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (125, 125, 180, 101, '1991-06-24 07:13:10', '1970-12-03 06:31:03');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (126, 126, 181, 102, '2009-05-29 05:27:52', '1976-01-22 17:48:22');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (127, 127, 183, 103, '1975-04-21 01:55:06', '2017-06-20 14:37:10');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (128, 128, 184, 101, '1993-02-27 06:45:32', '1974-01-14 18:56:29');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (129, 129, 186, 102, '1999-06-04 03:34:18', '1981-02-09 18:16:08');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (130, 130, 187, 103, '2009-05-06 06:31:14', '2003-12-07 03:46:39');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (131, 131, 188, 101, '1998-10-29 00:36:29', '1972-09-29 19:32:10');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (132, 132, 189, 102, '1983-07-30 02:57:20', '1999-10-12 18:28:28');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (133, 133, 190, 103, '2013-06-26 00:27:50', '2007-10-01 03:54:27');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (134, 134, 191, 101, '1980-08-17 19:35:30', '1976-10-06 11:35:16');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (135, 135, 192, 102, '1973-11-08 00:36:56', '1994-01-20 20:16:08');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (136, 136, 193, 103, '2004-10-12 12:51:33', '1975-05-28 08:27:00');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (137, 137, 195, 101, '1995-06-29 01:28:48', '2016-12-07 21:28:38');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (138, 138, 196, 102, '1997-05-13 01:09:50', '1979-02-07 00:13:40');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (139, 139, 197, 103, '1978-10-12 05:55:57', '2009-07-28 04:56:00');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (140, 140, 198, 101, '1981-02-13 18:29:28', '2014-05-29 13:57:51');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (141, 141, 201, 102, '1974-03-21 00:01:10', '2014-10-23 00:33:54');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (142, 142, 202, 103, '2015-12-02 22:45:34', '1979-06-10 17:41:19');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (143, 143, 203, 101, '1995-12-21 21:15:48', '1981-02-18 12:03:58');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (144, 144, 204, 102, '2008-02-24 06:56:35', '2013-12-27 20:51:21');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (145, 145, 205, 103, '1999-01-03 00:46:55', '1976-04-29 22:52:00');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (146, 146, 206, 101, '1997-10-14 11:48:30', '2002-07-17 12:21:55');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (147, 147, 208, 102, '1971-03-29 11:09:16', '1988-11-24 00:03:51');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (148, 148, 209, 103, '1973-12-02 06:42:50', '2019-03-09 05:24:11');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (149, 149, 210, 101, '2000-08-03 18:10:29', '2016-07-23 11:46:56');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (150, 150, 211, 102, '1981-09-23 06:04:41', '2013-04-18 01:02:58');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (151, 151, 212, 103, '1997-03-25 20:48:03', '2003-12-07 01:14:02');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (152, 152, 213, 101, '1988-07-19 20:51:24', '2015-09-23 09:53:23');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (153, 153, 214, 102, '2006-04-11 14:33:50', '1983-04-14 16:20:53');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (154, 154, 215, 103, '1981-12-07 19:15:42', '2000-03-26 20:05:00');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (155, 155, 216, 101, '1991-04-21 07:32:15', '1972-08-13 05:53:59');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (156, 156, 217, 102, '1987-09-27 10:46:51', '2007-02-16 22:28:59');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (157, 157, 218, 103, '2016-03-24 21:21:49', '1989-04-18 22:01:56');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (158, 158, 219, 101, '1973-05-09 23:29:51', '2018-08-18 19:25:04');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (159, 159, 220, 102, '1974-08-06 15:49:39', '1993-09-06 20:38:52');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (160, 160, 221, 103, '1997-12-09 23:58:34', '2019-08-18 03:30:30');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (161, 161, 222, 101, '1989-06-23 01:37:15', '2019-06-19 22:17:48');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (162, 162, 223, 102, '1992-06-26 06:50:20', '2011-07-13 02:03:51');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (163, 163, 224, 103, '1981-03-01 17:00:52', '1979-09-16 02:13:33');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (164, 164, 225, 101, '2019-07-13 02:42:17', '2005-10-05 16:24:52');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (165, 165, 227, 102, '1984-08-11 04:37:19', '1989-12-13 12:13:28');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (166, 166, 228, 103, '1998-12-20 13:35:43', '1976-01-28 21:05:31');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (167, 167, 229, 101, '1980-12-24 11:37:45', '1993-08-12 13:34:05');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (168, 168, 230, 102, '1971-07-03 16:51:23', '1992-02-15 17:35:42');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (169, 169, 231, 103, '1990-08-17 03:51:05', '1986-09-22 03:23:38');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (170, 170, 232, 101, '2017-04-26 00:15:44', '2001-04-21 11:58:52');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (171, 171, 233, 102, '1974-05-12 15:38:15', '2007-12-19 16:17:22');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (172, 172, 235, 103, '2010-01-01 01:28:41', '1978-03-20 05:55:08');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (173, 173, 237, 101, '1984-03-24 08:21:31', '1987-12-10 00:54:12');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (174, 174, 238, 102, '1997-11-08 01:32:11', '1979-05-17 20:37:44');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (175, 175, 239, 103, '2002-05-06 13:13:11', '1973-08-21 03:38:54');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (176, 176, 240, 101, '1973-04-10 07:17:50', '2017-02-13 06:56:32');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (177, 177, 241, 102, '2003-03-22 08:46:33', '2006-04-20 08:07:23');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (178, 178, 242, 103, '1995-06-16 21:50:54', '2014-06-28 19:45:10');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (179, 179, 243, 101, '1987-02-23 13:31:13', '2005-01-05 14:15:56');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (180, 180, 244, 102, '1985-11-22 01:20:14', '1984-03-04 02:40:20');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (181, 181, 245, 103, '1986-06-03 22:01:28', '1992-07-13 10:17:06');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (182, 182, 247, 101, '1996-12-18 21:53:54', '2018-04-12 07:25:42');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (183, 183, 249, 102, '2005-10-30 05:16:15', '2011-05-13 16:01:07');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (184, 184, 251, 103, '2012-07-01 13:43:41', '1999-09-08 11:30:49');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (185, 185, 252, 101, '1987-05-19 07:23:14', '1985-06-29 03:04:53');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (186, 186, 253, 102, '2012-03-30 08:14:47', '1996-06-29 16:47:24');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (187, 187, 254, 103, '2012-08-23 05:23:46', '1971-03-14 23:52:39');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (188, 188, 256, 101, '1990-08-08 10:39:16', '2000-03-19 19:28:45');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (189, 189, 257, 102, '2004-11-28 18:33:34', '2016-06-25 04:54:58');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (190, 190, 258, 103, '1976-11-03 15:57:01', '1970-06-22 01:55:18');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (191, 191, 260, 101, '2003-02-03 17:15:28', '1977-11-22 05:03:07');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (192, 192, 261, 102, '2007-06-10 18:24:25', '1987-03-25 16:35:01');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (193, 193, 262, 103, '1980-02-14 12:49:42', '2007-10-13 15:57:01');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (194, 194, 263, 101, '2008-01-16 22:32:41', '2011-03-31 20:05:45');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (195, 195, 264, 102, '1989-08-21 11:47:26', '1984-11-30 16:56:53');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (196, 196, 265, 103, '1999-10-12 18:44:30', '2018-12-17 11:27:39');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (197, 197, 266, 101, '2004-01-02 10:19:43', '1974-09-07 14:38:17');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (198, 198, 267, 102, '2016-09-05 21:27:21', '1980-02-28 18:42:35');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (199, 199, 268, 103, '2016-08-21 16:41:29', '1983-07-17 13:29:48');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (200, 200, 269, 101, '2014-08-17 12:02:28', '1971-05-01 20:41:42');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (201, 101, 270, 102, '1993-03-24 22:10:36', '1998-11-26 19:27:40');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (202, 102, 271, 103, '1994-01-18 13:21:57', '1985-11-18 11:12:00');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (203, 103, 272, 101, '2003-06-07 08:46:23', '2017-12-07 01:37:06');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (204, 104, 273, 102, '1975-06-19 14:49:18', '2007-11-18 06:09:02');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (205, 105, 275, 103, '1970-08-26 00:59:58', '2015-09-06 21:49:08');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (206, 106, 276, 101, '1992-12-28 22:59:07', '1977-06-26 19:59:28');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (207, 107, 277, 102, '2017-02-01 20:24:56', '1984-06-13 00:18:23');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (208, 108, 279, 103, '1985-05-23 09:54:31', '2015-10-21 14:29:28');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (209, 109, 280, 101, '2012-08-06 12:41:05', '1976-08-07 08:27:31');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (210, 110, 281, 102, '1998-08-09 22:50:46', '1970-11-11 11:16:08');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (211, 111, 283, 103, '2009-01-09 06:43:56', '2012-09-18 20:42:40');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (212, 112, 284, 101, '1993-02-03 14:50:35', '2004-01-18 04:21:37');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (213, 113, 285, 102, '2007-08-23 11:22:39', '1994-03-27 21:04:24');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (214, 114, 286, 103, '1982-08-29 20:51:19', '1996-05-18 11:42:50');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (215, 115, 287, 101, '1991-11-29 12:04:53', '2003-01-31 09:59:02');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (216, 116, 290, 102, '1998-08-27 00:54:47', '2009-07-22 18:17:19');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (217, 117, 291, 103, '1996-02-13 13:50:48', '1973-12-21 00:35:54');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (218, 118, 292, 101, '1995-04-03 02:46:41', '1970-04-12 06:21:44');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (219, 119, 293, 102, '1970-08-19 16:13:27', '2017-05-14 12:09:14');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (220, 120, 295, 103, '2000-04-19 22:20:00', '1982-08-01 01:09:17');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (221, 121, 297, 101, '2011-05-09 18:30:30', '2012-09-20 04:30:59');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (222, 122, 298, 102, '1973-07-23 12:21:07', '1978-08-01 19:40:38');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (223, 123, 299, 103, '1993-01-18 16:04:41', '2010-11-04 11:55:54');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (224, 124, 300, 101, '1976-02-10 04:08:24', '1991-09-18 03:45:02');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (225, 125, 151, 102, '1978-06-15 06:27:09', '1995-08-21 02:40:52');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (226, 126, 152, 103, '2012-05-09 02:30:46', '1994-11-12 03:21:00');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (227, 127, 153, 101, '1976-08-05 19:59:39', '2012-06-22 05:51:59');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (228, 128, 154, 102, '2018-04-21 22:41:52', '1984-05-01 00:06:11');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (229, 129, 155, 103, '2006-01-10 16:21:11', '2008-04-23 19:44:01');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (230, 130, 157, 101, '1974-02-01 03:32:16', '2005-03-23 07:53:53');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (231, 131, 158, 102, '2005-06-15 08:19:15', '1985-06-03 21:35:18');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (232, 132, 160, 103, '1980-11-23 15:19:35', '1976-05-20 07:00:53');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (233, 133, 161, 101, '1988-04-08 08:11:52', '2000-07-14 08:24:55');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (234, 134, 162, 102, '2013-06-01 00:44:05', '2006-05-02 20:00:57');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (235, 135, 163, 103, '1995-03-13 09:33:00', '1991-11-18 10:53:35');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (236, 136, 165, 101, '1990-09-23 09:38:30', '1996-06-11 22:43:32');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (237, 137, 166, 102, '1978-08-12 10:50:15', '1977-09-13 10:18:38');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (238, 138, 167, 103, '2001-11-09 03:01:59', '2007-08-30 07:45:50');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (239, 139, 168, 101, '2004-03-29 01:12:08', '1987-09-30 21:24:13');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (240, 140, 169, 102, '2009-06-25 01:24:02', '2016-10-17 08:50:42');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (241, 141, 170, 103, '1974-01-08 01:14:52', '2015-11-29 20:47:56');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (242, 142, 171, 101, '1987-10-05 22:41:50', '1997-05-12 01:55:36');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (243, 143, 172, 102, '2017-09-21 07:58:11', '1996-08-22 23:29:53');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (244, 144, 173, 103, '2019-12-22 12:39:38', '1970-04-13 19:03:09');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (245, 145, 174, 101, '2003-12-26 18:38:52', '2014-09-12 23:37:55');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (246, 146, 175, 102, '2009-05-03 00:31:07', '1978-03-24 10:13:57');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (247, 147, 177, 103, '1973-06-27 00:36:34', '1976-04-14 03:35:31');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (248, 148, 178, 101, '1991-02-01 01:34:17', '1974-07-17 06:51:44');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (249, 149, 180, 102, '1975-10-05 00:35:49', '2003-03-17 20:57:54');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (250, 150, 181, 103, '1989-06-08 01:16:20', '2016-11-08 03:43:45');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (251, 151, 183, 101, '2002-09-30 06:21:01', '2011-02-20 10:29:20');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (252, 152, 184, 102, '2019-05-09 05:21:49', '1972-08-29 08:27:45');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (253, 153, 186, 103, '1989-03-20 08:27:23', '1978-08-12 05:13:32');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (254, 154, 187, 101, '1991-05-28 08:32:05', '1982-12-07 15:49:11');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (255, 155, 188, 102, '1970-05-11 16:42:29', '1994-04-14 17:43:59');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (256, 156, 189, 103, '1977-06-06 04:15:03', '1980-06-08 22:44:43');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (257, 157, 190, 101, '1970-10-16 14:33:48', '2005-08-09 19:25:02');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (258, 158, 191, 102, '1984-03-07 22:39:18', '2001-01-04 16:26:03');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (259, 159, 192, 103, '2020-02-27 15:07:49', '1975-11-25 00:58:54');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (260, 160, 193, 101, '1976-10-07 01:47:27', '1972-04-10 17:02:28');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (261, 161, 195, 102, '1980-06-30 21:34:04', '2000-06-01 12:56:03');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (262, 162, 196, 103, '2010-05-07 23:54:37', '1985-04-04 13:20:01');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (263, 163, 197, 101, '2006-04-08 13:11:56', '1971-07-24 06:50:37');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (264, 164, 198, 102, '2009-12-16 04:32:07', '2003-03-27 08:20:11');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (265, 165, 201, 103, '1989-05-16 01:34:18', '2015-07-17 12:51:12');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (266, 166, 202, 101, '1991-04-09 21:47:27', '1993-05-29 05:00:15');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (267, 167, 203, 102, '2009-03-20 02:06:21', '1992-04-16 09:37:35');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (268, 168, 204, 103, '2004-03-23 04:47:17', '1981-09-19 16:47:17');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (269, 169, 205, 101, '1990-03-22 00:55:23', '2018-11-03 16:58:31');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (270, 170, 206, 102, '2006-01-18 01:50:16', '1985-08-30 18:15:52');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (271, 171, 208, 103, '1978-03-12 12:02:12', '1988-07-07 03:05:47');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (272, 172, 209, 101, '2019-07-10 23:29:51', '1970-01-08 00:33:55');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (273, 173, 210, 102, '1980-12-28 03:27:37', '2008-02-15 22:47:22');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (274, 174, 211, 103, '2012-07-10 00:30:54', '1975-04-12 19:02:18');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (275, 175, 212, 101, '2009-11-29 22:34:22', '2005-10-23 03:50:54');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (276, 176, 213, 102, '1997-04-22 18:24:23', '1986-10-15 14:40:51');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (277, 177, 214, 103, '2012-01-10 06:14:00', '1978-02-12 07:46:05');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (278, 178, 215, 101, '1976-05-23 15:13:59', '1988-11-24 11:18:13');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (279, 179, 216, 102, '1975-09-06 15:34:44', '1998-06-03 01:03:41');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (280, 180, 217, 103, '1999-04-05 03:32:24', '1996-12-14 01:35:09');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (281, 181, 218, 101, '2015-02-04 21:09:44', '1985-01-28 11:59:35');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (282, 182, 219, 102, '1978-04-12 23:40:16', '2001-10-28 01:13:46');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (283, 183, 220, 103, '2019-04-08 01:03:17', '1981-12-20 01:38:43');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (284, 184, 221, 101, '2018-05-01 14:23:48', '2019-06-29 17:09:19');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (285, 185, 222, 102, '1984-07-18 05:03:14', '1985-02-09 00:18:27');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (286, 186, 223, 103, '2017-01-20 06:22:59', '2013-09-16 04:42:08');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (287, 187, 224, 101, '1999-10-29 15:01:07', '2014-08-08 19:56:56');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (288, 188, 225, 102, '2002-04-13 21:54:01', '1976-04-23 12:10:08');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (289, 189, 227, 103, '1988-08-11 14:56:18', '1980-10-12 21:38:28');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (290, 190, 228, 101, '1973-07-12 07:43:35', '1992-06-16 06:05:47');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (291, 191, 229, 102, '1980-04-24 00:02:22', '1976-06-30 18:48:21');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (292, 192, 230, 103, '1995-01-13 20:26:47', '1999-07-29 10:00:04');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (293, 193, 231, 101, '2002-11-13 12:00:25', '1989-12-09 11:55:19');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (294, 194, 232, 102, '1999-12-03 19:12:06', '1978-05-18 18:40:43');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (295, 195, 233, 103, '2013-09-22 07:31:05', '2013-10-06 16:31:02');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (296, 196, 235, 101, '1975-08-23 22:49:52', '1984-01-28 23:50:19');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (297, 197, 237, 102, '2016-01-17 18:48:42', '1972-11-29 01:10:43');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (298, 198, 238, 103, '1991-06-04 11:46:14', '1985-08-11 09:23:19');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (299, 199, 239, 101, '1996-08-25 11:43:31', '2016-08-20 04:43:49');
INSERT INTO `call_order` (`id`, `model_id`, `order_id`, `item_status_id`, `created_at`, `updated_at`) VALUES (300, 200, 240, 102, '2006-08-17 01:08:59', '1973-12-03 20:08:29');


#
# TABLE STRUCTURE FOR: call_type
#

DROP TABLE IF EXISTS `call_type`;

CREATE TABLE `call_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cost` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `call_type` (`id`, `name`, `cost`) VALUES (101, 'soluta', 10);
INSERT INTO `call_type` (`id`, `name`, `cost`) VALUES (102, 'et', 73604777);
INSERT INTO `call_type` (`id`, `name`, `cost`) VALUES (103, 'quisquam', 0);
INSERT INTO `call_type` (`id`, `name`, `cost`) VALUES (104, 'aperiam', 2031);
INSERT INTO `call_type` (`id`, `name`, `cost`) VALUES (105, 'voluptas', 28);
INSERT INTO `call_type` (`id`, `name`, `cost`) VALUES (106, 'unde', 13952650);
INSERT INTO `call_type` (`id`, `name`, `cost`) VALUES (107, 'aut', 48);


#
# TABLE STRUCTURE FOR: customer
#

DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `middle_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `postindex` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (101, 'Alphonso', 'Bins', 'a', 'nina.hettinger@example.net', '534.360.9727', '07948 Winfield Via Apt. 591\nLuellachester, KY 49959-7135', '90201-2682', '2018-05-08 01:23:32', '1980-04-17 14:49:34');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (102, 'Cecelia', 'Cormier', 'veritatis', 'dare.brianne@example.com', '677.622.5409x8675', '88468 Tremblay Passage\nJacobsonland, NV 79592', '71398-1371', '2018-07-03 17:06:56', '1987-07-31 11:39:23');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (103, 'Josefina', 'Simonis', 'iusto', 'gutkowski.jan@example.net', '1-183-554-2626x1681', '1924 Crona Knolls\nPort Llewellyn, SC 15153-8764', '00403', '2014-06-14 09:02:04', '1986-04-07 12:50:11');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (104, 'Eloy', 'Kub', 'qui', 'pkreiger@example.org', '1-887-277-1614x46587', '25506 Terry Terrace\nPort Ashtyn, VT 26489', '11581', '1970-01-13 16:03:49', '1971-05-27 14:55:19');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (105, 'Carolyn', 'Cartwright', 'fuga', 'andy96@example.com', '(227)568-0006', '50319 Jaylin Ways Apt. 923\nWest Talia, CO 41168-9138', '66716-9947', '1984-03-22 10:36:14', '1984-02-07 09:17:19');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (106, 'Raegan', 'Murazik', 'sit', 'clinton.stehr@example.com', '988.010.9630x84972', '85440 Edythe Viaduct Apt. 132\nWest Deondreburgh, TX 86369-4415', '87407-6881', '1982-08-15 23:07:39', '1979-11-16 09:27:21');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (107, 'Marilie', 'Champlin', 'rerum', 'kyler.howell@example.net', '(694)593-9479', '304 Vicky Manor\nEast Viva, SC 96518', '55079', '1993-08-30 10:56:45', '2019-12-11 13:00:58');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (108, 'Eulah', 'Collins', 'et', 'raoul87@example.org', '(093)493-4187x680', '94661 Stroman Unions Apt. 325\nSouth Kattiechester, NH 89159-4431', '02194-3103', '2010-12-27 14:13:23', '2015-04-07 21:13:05');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (109, 'Unique', 'Stroman', 'qui', 'cyril92@example.net', '+40(3)5409552050', '1505 Macejkovic Isle\nD\'Amoreside, OH 69277-8792', '74552', '2007-01-06 05:58:15', '2001-10-26 14:17:27');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (110, 'Annetta', 'Schmitt', 'quo', 'hand.alexandrea@example.net', '(816)959-8156', '682 Devyn Streets Apt. 575\nAdelleburgh, HI 59428', '25444', '2012-10-12 09:46:40', '1975-04-24 03:01:29');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (111, 'Manuela', 'Johns', 'sint', 'gmcdermott@example.org', '915-410-1125x4223', '276 Norbert Turnpike\nSouth Isadorefurt, DC 80159', '71009', '2018-10-17 04:37:20', '1994-03-22 23:00:23');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (112, 'Earl', 'Mann', 'facilis', 'roman80@example.com', '176-068-0895x036', '818 Alberto Throughway\nSantinomouth, CA 53277', '97950-8428', '1976-05-01 04:46:03', '1982-01-31 05:06:05');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (113, 'Keely', 'Schulist', 'corrupti', 'ryleigh41@example.net', '1-179-020-8091x69206', '445 Kshlerin Vista\nEast Fae, GA 73374-3309', '98427-9019', '1990-03-31 22:08:45', '2006-01-05 22:59:48');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (114, 'Mariane', 'Jaskolski', 'necessitatibus', 'o\'conner.loyce@example.org', '08818978899', '34331 Carson Lodge\nWest Jamisonstad, CO 28695-2678', '50533', '2007-05-13 06:41:27', '1992-10-04 00:52:50');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (115, 'Dylan', 'Lesch', 'aliquam', 'jkuhn@example.org', '03465043554', '291 Barton Brook Suite 850\nCummingsshire, AZ 74171-1963', '23883', '1981-03-18 05:09:52', '1983-04-11 06:57:03');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (116, 'Pascale', 'Grimes', 'non', 'melissa.langosh@example.org', '1-593-117-0165x6897', '39229 May Loaf Apt. 331\nWatsicamouth, TX 26888-7621', '39211-3822', '1974-09-18 04:53:24', '2019-04-21 13:30:08');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (117, 'Dallas', 'Rutherford', 'rem', 'lubowitz.cielo@example.com', '(577)924-6297x487', '23531 Harber Common\nHegmannside, WI 47683', '42354-1055', '2013-03-16 09:15:47', '2009-12-01 20:02:59');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (118, 'Fletcher', 'West', 'soluta', 'kihn.bulah@example.com', '1-095-185-5057x4775', '62716 Nora Course Suite 081\nJastmouth, UT 80269', '89499-5195', '2011-07-20 18:29:51', '2018-02-25 19:07:02');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (119, 'Enid', 'Lubowitz', 'dicta', 'lrodriguez@example.org', '082.738.2935x863', '17339 Kunde Spring Apt. 636\nAnseltown, AL 37601', '74655', '1992-06-05 21:25:10', '1981-01-08 18:21:23');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (120, 'Demond', 'Collier', 'nobis', 'goldner.lori@example.net', '09737591532', '9644 Victor Squares\nEast Marina, FL 65838', '26945', '2012-12-21 11:35:54', '1980-03-29 06:30:52');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (121, 'Orlando', 'Metz', 'beatae', 'elena.hilll@example.com', '(837)940-4369', '9449 Zulauf Expressway Apt. 080\nNew Stephan, PA 58656-1612', '39324', '1979-08-23 08:32:45', '1973-04-12 13:27:18');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (122, 'Bridie', 'Gerhold', 'vitae', 'zgleichner@example.net', '(288)839-2235', '9727 Brayan Oval\nEast Sabrina, CO 46079', '60050-3043', '2000-11-27 05:58:51', '2004-02-19 16:43:53');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (123, 'Aleen', 'Bogisich', 'voluptas', 'reynolds.tyreek@example.org', '1-297-947-0197x140', '970 Crona Rapids Suite 556\nWest Melodyberg, CT 44499', '55784-5323', '1991-12-08 12:19:30', '1995-10-20 12:33:10');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (124, 'Sherwood', 'Stehr', 'quae', 'skiles.edwin@example.com', '02606915735', '180 Barrows Fields Suite 039\nNorth Marvin, KY 76833', '92200', '1990-09-26 19:18:58', '2006-01-05 11:46:29');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (125, 'Armando', 'Metz', 'cum', 'jdare@example.org', '(403)471-9359x0279', '93332 Raymond Row Apt. 824\nEast Roy, TX 73085', '99439-2367', '2009-03-03 14:26:29', '2006-04-23 06:35:41');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (126, 'Jerry', 'Bernhard', 'ad', 'marshall14@example.com', '04136088815', '226 Imelda Stravenue Apt. 682\nRubiechester, AL 78974', '12215', '1972-12-24 19:14:35', '2007-10-13 11:45:56');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (127, 'Montana', 'Hayes', 'laboriosam', 'ezemlak@example.org', '312-460-3460x7277', '226 Gibson Fall\nLake Ryleighchester, FL 78674-3058', '39380', '2001-04-16 02:19:20', '1976-05-11 17:09:04');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (128, 'Michel', 'Wunsch', 'pariatur', 'qvonrueden@example.com', '530.210.1200x64943', '98414 Ebert Plaza Suite 917\nSouth Dimitri, MO 71890', '87664-3588', '2011-05-15 22:10:00', '2012-07-28 14:50:04');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (129, 'Harry', 'Hessel', 'repellat', 'jessica.keeling@example.com', '(341)401-8984', '7870 Bailee Plains Apt. 536\nNew Zakaryburgh, KY 14640-9753', '94725', '2013-04-18 00:08:40', '2000-05-19 20:07:09');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (130, 'Kurt', 'Goodwin', 'magni', 'gustave.hackett@example.com', '564-258-0865x22036', '446 Alexys Cape Apt. 441\nWest Lindsay, NC 32103', '21587', '1997-05-15 15:45:49', '1989-08-13 07:56:27');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (131, 'Elta', 'Schroeder', 'porro', 'lsteuber@example.com', '1-347-145-9408', '798 Kirstin Gardens\nDooleymouth, TX 31109-2200', '20270-9046', '2013-11-12 04:55:52', '1994-04-01 20:21:15');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (132, 'Emelie', 'Schaefer', 'quo', 'andrew.smith@example.org', '08705561059', '010 Ike Skyway\nTrompmouth, ME 68688', '28714', '2010-05-01 16:38:30', '1999-09-27 06:57:50');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (133, 'Alda', 'Altenwerth', 'incidunt', 'effertz.janet@example.net', '+59(1)4595631961', '0809 Napoleon Branch Suite 479\nEast Darrellshire, MD 35258', '07955-6735', '1972-07-06 22:14:36', '2015-07-31 07:53:07');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (134, 'Nicola', 'Schuster', 'nisi', 'icie.fadel@example.org', '1-362-991-9451x8670', '428 Harber Pine\nPort Beulah, FL 07517', '99799', '1995-02-06 10:28:29', '2002-05-21 07:55:36');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (135, 'Miller', 'Green', 'in', 'uriel42@example.org', '(553)713-6880', '123 Kertzmann Station Suite 654\nFaybury, NY 48404', '20560-1428', '2001-08-06 21:16:39', '1992-08-15 10:22:57');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (136, 'Eve', 'Block', 'qui', 'wilton.stroman@example.com', '801-983-1416', '940 Elenora Avenue\nRashawnmouth, MS 65904-4613', '41658-8589', '2005-08-02 02:23:58', '2010-06-07 23:26:05');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (137, 'Malika', 'Pfannerstill', 'provident', 'jess.gibson@example.com', '1-274-684-8542x8732', '1474 Cormier Tunnel\nPort Devanton, SD 52613', '07004', '1979-08-01 05:31:12', '1976-05-27 22:20:16');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (138, 'Declan', 'Brown', 'dolorem', 'iconn@example.net', '(606)931-1674x16674', '25936 Janiya Row Apt. 461\nConroyburgh, CO 38331-8494', '68907-9950', '2011-04-28 03:18:11', '1996-07-14 06:35:24');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (139, 'Ayla', 'Murray', 'dolores', 'barton.elta@example.net', '653.057.6024x55046', '4261 Aryanna Highway\nDellaburgh, MT 52724-7005', '77566-1510', '1985-01-26 21:09:26', '2019-07-02 14:47:49');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (140, 'Jolie', 'Ritchie', 'officia', 'walton.herman@example.net', '685.639.0114', '6229 Witting Groves\nFlorinemouth, DE 54785', '25818-0226', '1975-11-10 10:01:30', '1989-02-06 19:04:10');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (141, 'Callie', 'Schowalter', 'ut', 'kenya.schroeder@example.net', '1-958-725-6666', '59140 Kautzer Expressway\nKesslerside, MN 77178-4983', '48506', '2008-10-06 13:39:06', '1998-01-14 17:48:33');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (142, 'Yoshiko', 'Ryan', 'dolor', 'yundt.callie@example.com', '1-009-007-8322x5476', '62361 Gislason Ways\nTrompview, MT 70171-7896', '31259-5555', '2012-07-10 12:56:56', '2000-09-01 16:43:32');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (143, 'Tyson', 'Greenholt', 'praesentium', 'legros.king@example.com', '468-561-3270x1069', '650 Juana Shore Suite 258\nNew Aubree, ME 66136-7478', '44206', '2018-03-11 05:30:36', '2010-09-25 23:04:43');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (144, 'Gianni', 'Klocko', 'provident', 'john.rohan@example.org', '1-040-712-8055', '68768 Adaline Well\nNew Jennyfershire, NY 54682-8240', '08849', '2000-10-06 00:24:13', '2004-02-04 16:55:21');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (145, 'Julian', 'Satterfield', 'eos', 'gutmann.jacky@example.com', '1-336-060-8159', '31452 Elvera Ways\nEast Casimerborough, PA 15598', '81438', '1988-09-02 06:42:58', '1977-04-23 06:09:05');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (146, 'Christophe', 'Strosin', 'et', 'allison90@example.net', '708-320-8743', '5459 Ratke Ways Suite 323\nKubborough, TN 66446-8060', '85052', '2010-10-05 07:44:42', '2000-04-04 21:51:51');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (147, 'Elnora', 'Reilly', 'voluptatem', 'rex.osinski@example.net', '102-971-9779x2624', '21638 Gregory Loaf\nNorth Jeffrey, HI 02137-3501', '48169-3110', '2006-05-01 06:17:16', '1997-12-09 19:04:12');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (148, 'Serenity', 'West', 'quia', 'julian53@example.com', '1-454-786-4111x6091', '93832 Hershel Village\nNew Ericfort, SD 53588-4579', '57399', '1992-10-11 19:34:37', '2000-06-09 03:58:12');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (149, 'Mauricio', 'Aufderhar', 'recusandae', 'douglas.milan@example.net', '(894)013-1143x7818', '56156 Collins Lock\nYoshikobury, MA 44305-7272', '78841-2720', '2010-03-26 18:41:38', '1986-11-21 19:44:17');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (150, 'Harley', 'Schimmel', 'ullam', 'windler.trenton@example.org', '1-692-505-5644', '1307 Fay Rue Apt. 647\nMaggioburgh, CT 04274', '09901', '1985-11-08 22:12:19', '2016-06-19 17:08:54');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (151, 'Mathias', 'Walsh', 'odio', 'lind.lisette@example.com', '1-446-254-0622x451', '36337 Pouros Inlet Suite 791\nNorth Erikaberg, CT 70962-2457', '03596-9598', '2006-12-17 12:25:37', '1971-10-13 20:39:37');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (152, 'Curt', 'Parisian', 'fuga', 'otis84@example.com', '1-665-748-7313', '1888 Howard Isle\nSouth Billton, KY 87096', '86335-4587', '1972-02-29 07:27:37', '1976-07-09 14:34:58');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (153, 'Olga', 'Mosciski', 'quisquam', 'ksawayn@example.com', '+71(0)4957231641', '4641 Orn Ways\nLake Torrey, VA 74445-6030', '10848', '1982-08-03 09:10:26', '2020-02-22 03:55:48');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (154, 'Kaden', 'Glover', 'ea', 'bernita.miller@example.com', '017-305-8184x4133', '6344 Weimann Walk\nIsabellachester, NJ 82834', '85657-0303', '1996-09-26 04:46:00', '2004-05-09 09:22:35');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (155, 'Astrid', 'Will', 'commodi', 'yhilll@example.net', '(307)908-2747', '9240 Lowe Club Apt. 130\nNew Shannaton, SC 70725-4500', '51299-5688', '1976-03-17 08:27:53', '2017-11-06 22:59:38');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (156, 'Maurice', 'Wehner', 'aspernatur', 'mozelle.cole@example.net', '379-287-5403x086', '80562 Upton Stream Apt. 260\nVerdafort, UT 01704', '28980', '1992-04-14 17:08:56', '1981-10-16 08:21:58');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (157, 'Clark', 'Paucek', 'tempora', 'kzboncak@example.com', '403.506.7683x6733', '88725 Fred Station Suite 618\nArmstrongburgh, MN 11661-4246', '46044', '2004-11-21 22:00:41', '2016-12-01 19:02:26');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (158, 'Nathan', 'Mayer', 'in', 'hermiston.hobart@example.org', '(261)780-4338x64552', '93191 Schmeler Square\nEast Imelda, NJ 14121', '64350', '2018-03-26 23:00:36', '2011-08-29 00:50:01');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (159, 'Herta', 'Quigley', 'eius', 'watsica.adolph@example.org', '(239)735-0670x7756', '74211 Pollich Spring Suite 800\nBaronport, NV 71981-7577', '20166', '1979-09-02 08:15:09', '1987-02-12 01:34:22');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (160, 'Jeffery', 'Labadie', 'reiciendis', 'stefan.kohler@example.com', '(210)817-2813x099', '7932 Trantow Mission Suite 564\nSouth Deronborough, DC 82119', '67889-1412', '1987-04-03 22:16:12', '1991-05-09 08:24:51');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (161, 'Erik', 'Kreiger', 'provident', 'acremin@example.com', '1-622-037-5270x05109', '94391 Howard Garden Apt. 103\nNew Chelseychester, OK 36587-4516', '75548-8252', '1987-01-08 17:48:10', '1997-08-22 11:18:49');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (162, 'Madge', 'Pfeffer', 'numquam', 'gus.muller@example.org', '+84(5)9235129276', '13391 Marshall Crossing Suite 238\nPort Lonnie, GA 76330', '18871', '2004-04-08 13:59:39', '2015-07-19 22:44:19');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (163, 'Daisha', 'Strosin', 'voluptates', 'flarson@example.com', '+35(9)4322437789', '93477 Zboncak Vista Apt. 290\nZeldaport, WV 17319', '47292-8783', '2009-11-20 21:50:14', '2019-09-18 19:52:45');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (164, 'Ressie', 'Upton', 'ipsam', 'leuschke.gregorio@example.org', '020.658.2394', '79432 Herta Terrace\nLake Cory, DE 88368', '17446-1760', '2019-07-01 09:44:43', '1978-01-03 14:48:42');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (165, 'Floy', 'Schultz', 'vel', 'danyka71@example.com', '849.516.0101x9318', '9115 Hills Hollow Suite 821\nHyattmouth, WY 29876-1461', '88584-4478', '1972-08-23 03:04:38', '2010-08-20 04:18:40');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (166, 'Vince', 'Schmeler', 'voluptas', 'elijah49@example.net', '1-849-002-6031x18776', '4612 Wiza View Apt. 223\nNew Berniece, CA 69463', '34766-9949', '1985-04-14 06:45:44', '2005-05-05 17:39:21');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (167, 'Mckenzie', 'Glover', 'id', 'ohilll@example.net', '1-536-143-4726', '576 Pfannerstill Pike Apt. 431\nPort Lafayette, ND 84794-6689', '64832-5896', '2014-05-03 03:33:05', '2014-03-21 19:46:47');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (168, 'Clara', 'Pfeffer', 'debitis', 'plind@example.org', '938.158.8386x895', '3916 Fletcher Cove Suite 025\nJazmynville, MO 11816', '11594', '1974-07-31 18:14:27', '2016-05-06 00:06:23');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (169, 'Laury', 'Barrows', 'optio', 'tavares.kling@example.com', '1-672-957-6389x74328', '34652 Christine Orchard\nHansstad, NE 46538', '31258', '1976-11-01 20:29:50', '2018-01-27 04:15:57');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (170, 'Ashton', 'Hayes', 'quod', 'vincenza.stamm@example.net', '426.532.3963x14896', '6784 Harber Road Apt. 250\nKassandrafort, UT 74241', '26171-1602', '1976-01-17 17:24:13', '1995-04-05 08:39:03');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (171, 'Monica', 'Casper', 'iure', 'earl.raynor@example.net', '1-809-734-7303x325', '7864 Velda Forge Suite 217\nWest Archhaven, WI 31435', '52201-2973', '1986-03-20 08:22:48', '1972-05-06 15:35:14');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (172, 'Lysanne', 'Emmerich', 'consequatur', 'bgutmann@example.com', '394-675-1029x336', '16973 Raymundo Stravenue Apt. 694\nSouth Guiseppeside, SD 40708', '85385-8817', '2018-09-04 06:17:54', '1988-06-13 04:12:29');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (173, 'Marcelo', 'Nader', 'qui', 'qreynolds@example.com', '1-714-878-5903x36449', '4190 Donnie Canyon\nNew Melbashire, MO 61711', '16007', '1970-06-14 23:38:11', '2015-08-23 02:34:33');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (174, 'Sarina', 'Bashirian', 'atque', 'sean.bashirian@example.org', '1-643-918-4119', '9137 Nicolas Flat\nSouth Adonisfort, MI 60849', '11350-1336', '1982-09-22 21:51:49', '1982-08-15 13:28:11');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (175, 'Kamron', 'Crona', 'nam', 'hilpert.viola@example.net', '032-743-4089x2452', '703 Jazlyn Springs Suite 552\nIlaton, NE 59626', '84743-5896', '1999-10-01 15:04:27', '1974-09-29 04:45:00');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (176, 'Dameon', 'Eichmann', 'quidem', 'dbeahan@example.net', '(173)689-0813x9174', '8322 Dayton Bypass Apt. 427\nJenkinstown, VT 34241', '84560', '2007-06-23 19:15:51', '1995-10-16 10:59:29');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (177, 'Tomasa', 'Casper', 'at', 'hoeger.tyree@example.org', '338.247.8716x761', '363 Lamont Highway Suite 143\nBraunville, KY 80475', '00007', '1995-05-12 21:39:17', '1998-12-13 20:27:31');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (178, 'Maximo', 'Lueilwitz', 'ut', 'spencer.alberta@example.org', '(083)986-7025', '29709 Boyle Forks\nFredrickchester, MA 25133-6251', '46728-0055', '2001-07-02 22:22:25', '1999-04-13 11:33:25');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (179, 'Edwin', 'Keebler', 'et', 'ena.johnston@example.org', '1-050-535-5120', '78849 Borer Vista\nBraulioberg, GA 26632-3947', '83536', '2004-10-19 14:47:25', '2015-08-25 12:49:55');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (180, 'Norval', 'Rosenbaum', 'ratione', 'magdalena.zboncak@example.net', '1-885-246-6467x8185', '28640 Melody Row\nEast Dawn, NM 57721', '43534', '2012-09-02 09:27:29', '1981-12-11 00:35:15');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (181, 'Ramiro', 'Williamson', 'iusto', 'wcole@example.net', '(623)023-6264x8845', '85593 Klocko Lane\nKodyport, CA 49522', '79006', '1982-08-09 00:19:12', '1992-11-12 16:05:19');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (182, 'Chet', 'Bradtke', 'eum', 'roosevelt.dare@example.org', '572-459-8464x84753', '24947 Rice Circles Apt. 124\nCasimerland, RI 88685', '24710', '1990-08-16 12:25:29', '2004-09-14 15:21:31');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (183, 'Jarret', 'Olson', 'dolorem', 'gvandervort@example.com', '(852)583-5698', '98297 Juvenal Harbor Suite 947\nWest Yesenia, CO 47879', '86995', '2009-03-14 21:48:47', '2018-03-14 06:55:43');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (184, 'Mathias', 'Legros', 'et', 'una94@example.net', '(751)506-4964x86175', '09299 Mosciski Turnpike Suite 258\nSouth Corrine, CT 91061', '53860-4877', '1999-07-16 13:23:42', '1971-08-28 19:29:56');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (185, 'Royal', 'Sawayn', 'necessitatibus', 'liam56@example.com', '+28(0)8163694611', '197 Malcolm Coves\nNew Lamontfort, MD 61737-0624', '04380-7718', '1996-05-16 14:03:46', '2009-03-01 13:40:21');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (186, 'Charley', 'Miller', 'vitae', 'tremayne.mitchell@example.org', '(227)541-3605x922', '7083 Spinka Trafficway Suite 185\nLynnborough, IL 83972', '95857', '2001-07-24 20:43:42', '1992-10-02 15:02:49');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (187, 'Kaylee', 'Blanda', 'deleniti', 'madelynn.hickle@example.org', '141-695-5096', '2156 Dickinson Centers\nNorth Lincoln, AZ 51420', '13673', '2003-12-31 15:58:14', '1972-06-13 11:14:45');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (188, 'Chandler', 'O\'Conner', 'non', 'wiza.jeromy@example.net', '558-201-8520x194', '531 Bergstrom Lakes\nHomenickburgh, SC 36079-6707', '28086-3079', '2008-11-15 18:34:41', '2010-08-16 14:19:22');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (189, 'Freida', 'Conn', 'minima', 'wjakubowski@example.com', '1-527-874-6576x52119', '920 Abdul Ferry\nHellerchester, KS 53029', '73582', '1996-02-24 18:07:36', '1977-12-11 15:12:23');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (190, 'Stacey', 'Weimann', 'explicabo', 'nathen.greenholt@example.org', '(146)070-3268', '839 Blanda Trail\nLake Lesly, NE 53063-0222', '36234-8016', '1985-08-26 19:10:06', '1975-02-03 16:50:14');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (191, 'Ewell', 'Mohr', 'ut', 'maureen.russel@example.net', '(933)508-8804', '66289 Erwin Junctions Suite 201\nSandraburgh, OK 71606', '73327', '1993-01-13 03:37:27', '1977-12-01 22:27:17');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (192, 'Percy', 'O\'Kon', 'suscipit', 'benton91@example.net', '08467744790', '99409 Ritchie Route\nLake Roelmouth, WA 99185-8334', '49195-2717', '2001-01-24 07:35:48', '1980-05-27 08:53:42');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (193, 'Gonzalo', 'Nolan', 'sapiente', 'kenyatta84@example.net', '997.306.2462', '2304 Schumm Circle\nSouth Buddyberg, KY 66819', '18717', '2009-08-05 17:44:07', '1989-10-16 23:34:08');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (194, 'Tristin', 'Koepp', 'modi', 'stuart19@example.com', '778.235.1843', '45283 Murphy Ranch\nOscarview, KS 52995', '44806', '2015-12-22 11:31:08', '1987-07-14 12:03:22');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (195, 'Kayla', 'Runolfsson', 'ab', 'buck21@example.net', '1-486-556-7042', '86080 Jeramy Motorway\nWest Alexander, NH 54645', '97559-0363', '1972-03-24 10:08:02', '1972-10-18 06:30:32');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (196, 'Patrick', 'Quitzon', 'temporibus', 'roxane.berge@example.org', '(015)931-1525x9731', '7229 Audie Burgs\nOttistown, MO 29587', '53055-7882', '2007-08-21 16:23:00', '1973-09-24 04:56:38');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (197, 'Andy', 'Luettgen', 'voluptas', 'ebba53@example.org', '388.511.0967x10627', '97489 Bogan Plains Apt. 431\nHanemouth, MT 74096', '05121', '1985-01-16 04:39:42', '2005-10-07 15:49:27');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (198, 'Coralie', 'Mante', 'officia', 'hgraham@example.net', '(968)343-8969', '8992 Cruickshank Stream Apt. 170\nRathhaven, NY 83836-6256', '33600', '2016-08-18 21:41:33', '1995-02-22 10:45:39');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (199, 'Adam', 'Shanahan', 'doloribus', 'louisa35@example.net', '1-052-071-8467x67775', '3395 Johnson Throughway\nLake Danialbury, IA 03449-2266', '55054', '1976-06-18 18:43:56', '2019-12-10 17:51:31');
INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) VALUES (200, 'Lucienne', 'Bruen', 'veritatis', 'devan.nienow@example.net', '1-766-704-1002x9339', '8548 Ramon Passage\nRudyberg, SC 64434-3785', '68372', '1971-05-23 02:18:49', '1999-08-27 17:16:54');


#
# TABLE STRUCTURE FOR: horn
#

DROP TABLE IF EXISTS `horn`;

CREATE TABLE `horn` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cost` int(10) unsigned DEFAULT NULL,
  `material_id` int(10) unsigned NOT NULL,
  `is_marriage` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `horn` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (101, 'corrupti', 45350982, 101, 1);
INSERT INTO `horn` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (102, 'et', 17, 102, 0);
INSERT INTO `horn` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (103, 'consequatur', 240273, 103, 1);
INSERT INTO `horn` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (104, 'autem', 12668887, 104, 0);
INSERT INTO `horn` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (105, 'quos', 0, 105, 0);
INSERT INTO `horn` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (106, 'facere', 1, 106, 1);
INSERT INTO `horn` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (107, 'est', 6712379, 107, 0);
INSERT INTO `horn` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (108, 'repudiandae', 215430129, 108, 1);
INSERT INTO `horn` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (109, 'fugit', 580088, 109, 1);
INSERT INTO `horn` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (110, 'error', 199, 110, 0);


#
# TABLE STRUCTURE FOR: horn_operation
#

DROP TABLE IF EXISTS `horn_operation`;

CREATE TABLE `horn_operation` (
  `horn_id` int(10) unsigned NOT NULL,
  `operation_id` int(10) unsigned NOT NULL,
  `tool_id` int(10) unsigned DEFAULT NULL,
  `is_complited` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`horn_id`,`operation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (101, 101, 101, 1);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (101, 111, 111, 1);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (101, 121, 101, 1);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (101, 131, 111, 1);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (101, 141, 101, 0);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (101, 151, 111, 0);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (101, 161, 101, 0);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (101, 171, 111, 0);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (101, 181, 101, 0);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (101, 191, 111, 0);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (102, 102, 102, 0);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (102, 112, 112, 1);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (102, 122, 102, 1);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (102, 132, 112, 0);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (102, 142, 102, 1);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (102, 152, 112, 1);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (102, 162, 102, 0);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (102, 172, 112, 1);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (102, 182, 102, 1);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (102, 192, 112, 0);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (103, 103, 103, 1);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (103, 113, 113, 1);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (103, 123, 103, 1);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (103, 133, 113, 0);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (103, 143, 103, 1);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (103, 153, 113, 0);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (103, 163, 103, 0);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (103, 173, 113, 0);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (103, 183, 103, 1);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (103, 193, 113, 1);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (104, 104, 104, 0);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (104, 114, 114, 1);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (104, 124, 104, 1);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (104, 134, 114, 0);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (104, 144, 104, 0);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (104, 154, 114, 1);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (104, 164, 104, 1);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (104, 174, 114, 0);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (104, 184, 104, 0);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (104, 194, 114, 0);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (105, 105, 105, 0);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (105, 115, 115, 1);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (105, 125, 105, 0);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (105, 135, 115, 0);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (105, 145, 105, 0);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (105, 155, 115, 1);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (105, 165, 105, 0);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (105, 175, 115, 1);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (105, 185, 105, 0);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (105, 195, 115, 0);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (106, 106, 106, 1);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (106, 116, 116, 0);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (106, 126, 106, 1);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (106, 136, 116, 1);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (106, 146, 106, 1);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (106, 156, 116, 0);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (106, 166, 106, 0);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (106, 176, 116, 1);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (106, 186, 106, 1);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (106, 196, 116, 1);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (107, 107, 107, 1);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (107, 117, 117, 0);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (107, 127, 107, 1);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (107, 137, 117, 0);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (107, 147, 107, 0);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (107, 157, 117, 0);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (107, 167, 107, 1);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (107, 177, 117, 1);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (107, 187, 107, 1);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (107, 197, 117, 0);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (108, 108, 108, 0);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (108, 118, 118, 0);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (108, 128, 108, 0);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (108, 138, 118, 1);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (108, 148, 108, 0);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (108, 158, 118, 1);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (108, 168, 108, 0);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (108, 178, 118, 1);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (108, 188, 108, 0);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (108, 198, 118, 1);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (109, 109, 109, 0);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (109, 119, 119, 0);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (109, 129, 109, 1);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (109, 139, 119, 1);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (109, 149, 109, 0);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (109, 159, 119, 0);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (109, 169, 109, 0);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (109, 179, 119, 0);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (109, 189, 109, 1);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (109, 199, 119, 0);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (110, 110, 110, 0);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (110, 120, 120, 1);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (110, 130, 110, 0);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (110, 140, 120, 0);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (110, 150, 110, 1);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (110, 160, 120, 1);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (110, 170, 110, 0);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (110, 180, 120, 1);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (110, 190, 110, 0);
INSERT INTO `horn_operation` (`horn_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (110, 200, 120, 0);


#
# TABLE STRUCTURE FOR: item_status
#

DROP TABLE IF EXISTS `item_status`;

CREATE TABLE `item_status` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `item_status` (`id`, `name`) VALUES (101, 'eveniet');
INSERT INTO `item_status` (`id`, `name`) VALUES (102, 'odit');
INSERT INTO `item_status` (`id`, `name`) VALUES (103, 'ut');


#
# TABLE STRUCTURE FOR: material
#

DROP TABLE IF EXISTS `material`;

CREATE TABLE `material` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cost` int(10) unsigned DEFAULT NULL,
  `quantity` int(10) unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `material` (`id`, `name`, `cost`, `quantity`, `created_at`, `updated_at`) VALUES (101, 'dolor', 64, 622, '1990-10-02 05:49:29', '2013-12-31 07:58:34');
INSERT INTO `material` (`id`, `name`, `cost`, `quantity`, `created_at`, `updated_at`) VALUES (102, 'exercitationem', 6, 2889119, '2019-08-13 17:16:44', '1996-08-16 02:31:31');
INSERT INTO `material` (`id`, `name`, `cost`, `quantity`, `created_at`, `updated_at`) VALUES (103, 'libero', 126552, 50782, '2015-01-25 22:37:29', '1972-01-14 01:57:17');
INSERT INTO `material` (`id`, `name`, `cost`, `quantity`, `created_at`, `updated_at`) VALUES (104, 'cum', 1065, 12559427, '2006-10-25 15:12:47', '1995-05-28 19:05:25');
INSERT INTO `material` (`id`, `name`, `cost`, `quantity`, `created_at`, `updated_at`) VALUES (105, 'quaerat', 3134, 75134, '1993-07-01 04:24:05', '2009-12-28 10:58:46');
INSERT INTO `material` (`id`, `name`, `cost`, `quantity`, `created_at`, `updated_at`) VALUES (106, 'non', 362, 316, '1995-12-04 18:03:21', '1978-02-01 07:59:05');
INSERT INTO `material` (`id`, `name`, `cost`, `quantity`, `created_at`, `updated_at`) VALUES (107, 'reiciendis', 2, 1, '2010-03-27 06:54:34', '1980-02-05 19:14:44');
INSERT INTO `material` (`id`, `name`, `cost`, `quantity`, `created_at`, `updated_at`) VALUES (108, 'repellat', 19883, 599, '2000-07-30 12:44:01', '2006-07-20 06:55:14');
INSERT INTO `material` (`id`, `name`, `cost`, `quantity`, `created_at`, `updated_at`) VALUES (109, 'qui', 136399950, 44, '1986-09-10 15:43:31', '1972-02-14 07:04:28');
INSERT INTO `material` (`id`, `name`, `cost`, `quantity`, `created_at`, `updated_at`) VALUES (110, 'sed', 53, 4, '1984-07-18 16:40:14', '2001-08-23 10:48:18');


#
# TABLE STRUCTURE FOR: model
#

DROP TABLE IF EXISTS `model`;

CREATE TABLE `model` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `calltype_id` int(10) unsigned NOT NULL,
  `mouthpiece_id` int(10) unsigned DEFAULT NULL,
  `ring_id` int(10) unsigned DEFAULT NULL,
  `horn_id` int(10) unsigned DEFAULT NULL,
  `bone_id` int(10) unsigned DEFAULT NULL,
  `bung_id` int(10) unsigned DEFAULT NULL,
  `tongue_id` int(10) unsigned DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (101, 101, 101, 1, 101, 101, 101, 101, 0, '1981-03-18 07:02:49', '1988-03-14 14:57:12');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (102, 102, 102, 2, 102, 102, 102, 102, 1, '1972-03-30 18:42:26', '1980-03-22 21:26:11');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (103, 103, 103, 3, 103, 103, 103, 103, 1, '2007-07-17 22:11:09', '1998-01-27 07:42:38');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (104, 104, 104, 4, 104, 104, 104, 104, 1, '1978-08-23 07:30:41', '1987-09-27 10:12:27');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (105, 105, 105, 5, 105, 105, 105, 105, 1, '1979-08-26 16:08:30', '1979-04-24 09:13:12');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (106, 106, 106, 6, 106, 106, 106, 106, 1, '2019-10-25 00:56:52', '1973-01-05 19:26:21');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (107, 107, 107, 7, 107, 107, 107, 107, 0, '1978-07-23 00:18:41', '1972-02-10 06:33:54');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (108, 101, 108, 8, 108, 108, 108, 108, 1, '2008-07-08 06:57:05', '1979-05-02 00:11:30');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (109, 102, 109, 9, 109, 109, 109, 109, 0, '1977-04-18 03:45:35', '1989-05-06 01:30:02');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (110, 103, 110, 10, 110, 110, 110, 110, 1, '1977-11-03 05:36:28', '1998-01-27 21:13:06');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (111, 104, 101, 1, 101, 101, 101, 111, 1, '2003-08-25 11:02:30', '2006-05-09 01:36:55');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (112, 105, 102, 2, 102, 102, 102, 112, 0, '1988-11-20 05:32:43', '2018-02-07 10:37:24');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (113, 106, 103, 3, 103, 103, 103, 113, 0, '1984-07-27 12:51:16', '2015-10-11 10:01:02');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (114, 107, 104, 4, 104, 104, 104, 114, 1, '1986-06-05 15:24:47', '1973-12-05 14:28:55');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (115, 101, 105, 5, 105, 105, 105, 115, 0, '1973-07-29 07:49:57', '2002-03-16 23:17:57');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (116, 102, 106, 6, 106, 106, 106, 116, 1, '1970-10-08 18:58:17', '2000-01-07 10:57:34');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (117, 103, 107, 7, 107, 107, 107, 117, 1, '2005-03-08 04:52:20', '1997-09-02 04:41:46');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (118, 104, 108, 8, 108, 108, 108, 118, 1, '1976-06-09 06:12:57', '1984-10-23 21:11:04');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (119, 105, 109, 9, 109, 109, 109, 119, 0, '2003-11-25 07:35:25', '1972-05-26 13:05:21');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (120, 106, 110, 10, 110, 110, 110, 120, 1, '1973-09-29 16:47:46', '1994-03-05 20:49:37');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (121, 107, 101, 1, 101, 101, 101, 121, 0, '2009-02-20 22:39:40', '1983-11-27 05:28:22');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (122, 101, 102, 2, 102, 102, 102, 122, 0, '2000-03-18 12:45:20', '2019-01-03 14:27:01');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (123, 102, 103, 3, 103, 103, 103, 123, 1, '2013-10-24 18:26:02', '1977-11-03 01:56:43');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (124, 103, 104, 4, 104, 104, 104, 124, 0, '1977-03-14 07:20:29', '2012-06-26 21:04:46');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (125, 104, 105, 5, 105, 105, 105, 125, 1, '2010-07-23 20:48:39', '2005-02-10 02:30:15');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (126, 105, 106, 6, 106, 106, 106, 126, 0, '1996-02-06 08:45:30', '1977-03-18 19:08:39');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (127, 106, 107, 7, 107, 107, 107, 127, 1, '1992-01-09 23:11:03', '1977-09-20 22:15:52');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (128, 107, 108, 8, 108, 108, 108, 128, 1, '1982-11-28 15:26:11', '1983-04-23 20:01:16');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (129, 101, 109, 9, 109, 109, 109, 129, 0, '1989-04-09 05:30:12', '2001-05-11 07:36:33');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (130, 102, 110, 10, 110, 110, 110, 130, 1, '1972-03-12 11:35:36', '1991-01-07 00:24:17');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (131, 103, 101, 1, 101, 101, 101, 131, 0, '2011-01-27 17:12:39', '2018-09-05 10:52:18');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (132, 104, 102, 2, 102, 102, 102, 132, 1, '2005-02-22 18:09:30', '1998-05-09 13:14:05');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (133, 105, 103, 3, 103, 103, 103, 133, 1, '1977-08-26 06:26:06', '1995-01-04 21:40:39');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (134, 106, 104, 4, 104, 104, 104, 134, 0, '1992-01-17 07:15:46', '1975-02-15 09:41:26');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (135, 107, 105, 5, 105, 105, 105, 135, 1, '1973-04-02 16:19:47', '1981-02-05 21:16:35');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (136, 101, 106, 6, 106, 106, 106, 136, 0, '1991-03-07 12:31:28', '2008-09-24 21:04:20');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (137, 102, 107, 7, 107, 107, 107, 137, 1, '1982-06-14 18:58:50', '2001-10-25 21:38:53');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (138, 103, 108, 8, 108, 108, 108, 138, 0, '1986-11-21 14:38:36', '1975-01-24 00:36:06');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (139, 104, 109, 9, 109, 109, 109, 139, 0, '1980-01-10 06:33:40', '1990-06-19 14:47:36');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (140, 105, 110, 10, 110, 110, 110, 140, 1, '1982-03-21 14:19:22', '2008-07-21 13:39:29');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (141, 106, 101, 1, 101, 101, 101, 141, 1, '1975-02-16 10:43:57', '1990-09-21 09:54:01');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (142, 107, 102, 2, 102, 102, 102, 142, 0, '1989-11-30 07:59:57', '2010-04-29 20:31:01');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (143, 101, 103, 3, 103, 103, 103, 143, 0, '1972-09-10 17:53:46', '2015-06-25 15:36:16');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (144, 102, 104, 4, 104, 104, 104, 144, 1, '1995-07-12 06:14:23', '2003-01-23 02:02:41');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (145, 103, 105, 5, 105, 105, 105, 145, 0, '2019-04-27 07:32:18', '2014-12-09 08:33:57');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (146, 104, 106, 6, 106, 106, 106, 146, 1, '1999-03-12 23:14:09', '2007-06-19 13:22:18');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (147, 105, 107, 7, 107, 107, 107, 147, 0, '2003-02-13 13:01:08', '2015-10-26 08:37:06');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (148, 106, 108, 8, 108, 108, 108, 148, 0, '1972-11-27 10:22:54', '1999-06-29 04:57:05');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (149, 107, 109, 9, 109, 109, 109, 149, 0, '2020-02-13 11:31:00', '1973-10-30 19:01:29');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (150, 101, 110, 10, 110, 110, 110, 150, 1, '1980-10-12 16:20:45', '2010-04-22 05:15:55');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (151, 102, 101, 1, 101, 101, 101, 151, 0, '2012-08-02 06:33:22', '2016-07-02 22:06:08');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (152, 103, 102, 2, 102, 102, 102, 152, 0, '2001-03-20 06:32:14', '2001-09-10 14:40:42');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (153, 104, 103, 3, 103, 103, 103, 153, 0, '2007-05-10 08:16:50', '1970-12-29 17:48:07');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (154, 105, 104, 4, 104, 104, 104, 154, 1, '1970-12-19 20:14:56', '1978-10-21 04:29:57');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (155, 106, 105, 5, 105, 105, 105, 155, 1, '1996-03-14 15:09:51', '2010-06-04 21:44:58');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (156, 107, 106, 6, 106, 106, 106, 156, 0, '1993-07-02 16:25:32', '1990-03-14 21:59:31');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (157, 101, 107, 7, 107, 107, 107, 157, 1, '2015-04-24 06:28:40', '2016-12-28 13:26:07');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (158, 102, 108, 8, 108, 108, 108, 158, 0, '1981-08-10 17:46:06', '2004-01-30 02:34:20');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (159, 103, 109, 9, 109, 109, 109, 159, 1, '2000-01-20 22:04:39', '2000-09-22 07:35:49');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (160, 104, 110, 10, 110, 110, 110, 160, 0, '2019-07-28 13:33:44', '1996-03-09 06:48:03');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (161, 105, 101, 1, 101, 101, 101, 161, 0, '1988-08-09 16:21:41', '1986-11-07 08:02:45');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (162, 106, 102, 2, 102, 102, 102, 162, 0, '1980-12-28 05:16:19', '2004-12-21 03:56:34');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (163, 107, 103, 3, 103, 103, 103, 163, 1, '1995-05-25 10:04:56', '1980-11-23 06:34:39');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (164, 101, 104, 4, 104, 104, 104, 164, 1, '2016-10-20 11:56:05', '1982-02-06 16:20:01');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (165, 102, 105, 5, 105, 105, 105, 165, 1, '1992-05-19 21:34:17', '2015-10-09 06:55:19');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (166, 103, 106, 6, 106, 106, 106, 166, 1, '2006-08-23 19:15:35', '1998-12-28 05:30:03');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (167, 104, 107, 7, 107, 107, 107, 167, 1, '2016-08-10 06:35:21', '2016-02-28 19:22:58');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (168, 105, 108, 8, 108, 108, 108, 168, 0, '2008-10-07 09:22:20', '1995-06-06 17:40:24');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (169, 106, 109, 9, 109, 109, 109, 169, 1, '2018-01-23 17:30:18', '1980-03-12 03:44:46');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (170, 107, 110, 10, 110, 110, 110, 170, 1, '2008-08-31 05:06:18', '1973-07-14 02:08:21');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (171, 101, 101, 1, 101, 101, 101, 171, 1, '1989-04-06 06:50:58', '1989-05-22 19:01:09');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (172, 102, 102, 2, 102, 102, 102, 172, 0, '1994-02-19 08:37:30', '1971-04-07 09:39:43');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (173, 103, 103, 3, 103, 103, 103, 173, 0, '1976-07-21 17:18:34', '2009-11-22 22:27:36');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (174, 104, 104, 4, 104, 104, 104, 174, 1, '1974-11-03 04:56:08', '2012-06-06 22:12:09');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (175, 105, 105, 5, 105, 105, 105, 175, 0, '1989-08-28 19:24:15', '1976-09-12 21:55:36');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (176, 106, 106, 6, 106, 106, 106, 176, 0, '1987-03-29 15:22:51', '2016-04-10 06:47:13');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (177, 107, 107, 7, 107, 107, 107, 177, 0, '1990-01-15 07:02:02', '2008-05-29 11:30:25');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (178, 101, 108, 8, 108, 108, 108, 178, 0, '1991-05-25 10:03:10', '2017-04-15 17:15:05');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (179, 102, 109, 9, 109, 109, 109, 179, 1, '2008-03-11 08:12:47', '1989-01-06 22:26:44');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (180, 103, 110, 10, 110, 110, 110, 180, 0, '1999-07-25 19:45:56', '2017-01-17 22:43:00');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (181, 104, 101, 1, 101, 101, 101, 181, 0, '2015-01-19 14:44:26', '2005-09-21 19:36:00');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (182, 105, 102, 2, 102, 102, 102, 182, 1, '1980-10-31 21:36:39', '1983-10-08 12:03:41');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (183, 106, 103, 3, 103, 103, 103, 183, 0, '2017-08-07 18:47:49', '2004-12-07 12:53:06');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (184, 107, 104, 4, 104, 104, 104, 184, 0, '1986-03-22 05:01:50', '1991-05-27 12:19:58');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (185, 101, 105, 5, 105, 105, 105, 185, 0, '2004-10-28 20:41:09', '2008-01-10 20:33:10');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (186, 102, 106, 6, 106, 106, 106, 186, 1, '2019-06-19 11:17:12', '2006-06-15 09:00:18');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (187, 103, 107, 7, 107, 107, 107, 187, 1, '1972-02-01 05:38:00', '1985-05-16 09:06:42');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (188, 104, 108, 8, 108, 108, 108, 188, 1, '1996-12-07 07:45:10', '2001-08-27 22:48:20');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (189, 105, 109, 9, 109, 109, 109, 189, 0, '1987-05-02 10:26:24', '1972-02-23 04:35:37');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (190, 106, 110, 10, 110, 110, 110, 190, 0, '2007-05-13 13:21:38', '1992-10-17 08:31:31');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (191, 107, 101, 1, 101, 101, 101, 191, 0, '2018-03-01 22:43:56', '2005-01-14 03:41:19');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (192, 101, 102, 2, 102, 102, 102, 192, 1, '1983-01-20 09:43:09', '2009-07-07 10:41:44');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (193, 102, 103, 3, 103, 103, 103, 193, 1, '1976-01-14 22:25:46', '1971-04-09 19:45:44');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (194, 103, 104, 4, 104, 104, 104, 194, 1, '1988-07-04 08:10:16', '1972-01-30 02:02:48');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (195, 104, 105, 5, 105, 105, 105, 195, 0, '1979-07-13 11:34:45', '1980-02-05 05:47:55');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (196, 105, 106, 6, 106, 106, 106, 196, 0, '1999-01-15 18:31:14', '1979-12-17 04:49:44');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (197, 106, 107, 7, 107, 107, 107, 197, 1, '2005-02-27 08:42:57', '2000-05-17 04:20:06');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (198, 107, 108, 8, 108, 108, 108, 198, 0, '2007-08-07 10:26:09', '1995-04-30 12:49:09');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (199, 101, 109, 9, 109, 109, 109, 199, 1, '2000-01-03 10:18:58', '2008-12-02 14:09:40');
INSERT INTO `model` (`id`, `calltype_id`, `mouthpiece_id`, `ring_id`, `horn_id`, `bone_id`, `bung_id`, `tongue_id`, `is_default`, `created_at`, `updated_at`) VALUES (200, 102, 110, 10, 110, 110, 110, 200, 0, '2000-03-11 15:11:48', '2019-06-12 21:27:06');


#
# TABLE STRUCTURE FOR: mouthpiece
#

DROP TABLE IF EXISTS `mouthpiece`;

CREATE TABLE `mouthpiece` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cost` int(10) unsigned DEFAULT NULL,
  `material_id` int(10) unsigned NOT NULL,
  `is_marriage` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `mouthpiece` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (101, 'officiis', 818811, 101, 0);
INSERT INTO `mouthpiece` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (102, 'enim', 3802704, 102, 1);
INSERT INTO `mouthpiece` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (103, 'quibusdam', 81014636, 103, 1);
INSERT INTO `mouthpiece` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (104, 'laboriosam', 135, 104, 0);
INSERT INTO `mouthpiece` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (105, 'consequatur', 155, 105, 1);
INSERT INTO `mouthpiece` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (106, 'soluta', 416, 106, 1);
INSERT INTO `mouthpiece` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (107, 'voluptatibus', 0, 107, 1);
INSERT INTO `mouthpiece` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (108, 'laborum', 17, 108, 1);
INSERT INTO `mouthpiece` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (109, 'ut', 37337320, 109, 1);
INSERT INTO `mouthpiece` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (110, 'deleniti', 34093035, 110, 0);


#
# TABLE STRUCTURE FOR: mouthpiece_operation
#

DROP TABLE IF EXISTS `mouthpiece_operation`;

CREATE TABLE `mouthpiece_operation` (
  `mouthpiece_id` int(10) unsigned NOT NULL,
  `operation_id` int(10) unsigned NOT NULL,
  `tool_id` int(10) unsigned DEFAULT NULL,
  `is_complited` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`mouthpiece_id`,`operation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (101, 101, 101, 1);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (101, 111, 111, 1);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (101, 121, 101, 0);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (101, 131, 111, 1);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (101, 141, 101, 0);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (101, 151, 111, 1);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (101, 161, 101, 0);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (101, 171, 111, 0);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (101, 181, 101, 1);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (101, 191, 111, 1);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (102, 102, 102, 0);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (102, 112, 112, 0);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (102, 122, 102, 1);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (102, 132, 112, 1);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (102, 142, 102, 1);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (102, 152, 112, 1);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (102, 162, 102, 1);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (102, 172, 112, 0);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (102, 182, 102, 0);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (102, 192, 112, 1);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (103, 103, 103, 1);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (103, 113, 113, 1);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (103, 123, 103, 1);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (103, 133, 113, 1);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (103, 143, 103, 0);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (103, 153, 113, 0);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (103, 163, 103, 0);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (103, 173, 113, 0);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (103, 183, 103, 0);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (103, 193, 113, 1);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (104, 104, 104, 0);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (104, 114, 114, 1);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (104, 124, 104, 0);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (104, 134, 114, 1);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (104, 144, 104, 0);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (104, 154, 114, 1);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (104, 164, 104, 0);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (104, 174, 114, 1);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (104, 184, 104, 1);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (104, 194, 114, 0);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (105, 105, 105, 0);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (105, 115, 115, 0);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (105, 125, 105, 1);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (105, 135, 115, 1);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (105, 145, 105, 0);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (105, 155, 115, 0);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (105, 165, 105, 0);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (105, 175, 115, 0);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (105, 185, 105, 0);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (105, 195, 115, 0);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (106, 106, 106, 1);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (106, 116, 116, 0);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (106, 126, 106, 0);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (106, 136, 116, 0);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (106, 146, 106, 1);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (106, 156, 116, 1);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (106, 166, 106, 1);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (106, 176, 116, 1);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (106, 186, 106, 1);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (106, 196, 116, 0);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (107, 107, 107, 1);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (107, 117, 117, 1);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (107, 127, 107, 0);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (107, 137, 117, 1);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (107, 147, 107, 0);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (107, 157, 117, 1);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (107, 167, 107, 1);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (107, 177, 117, 1);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (107, 187, 107, 1);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (107, 197, 117, 1);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (108, 108, 108, 1);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (108, 118, 118, 1);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (108, 128, 108, 0);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (108, 138, 118, 1);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (108, 148, 108, 1);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (108, 158, 118, 0);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (108, 168, 108, 1);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (108, 178, 118, 1);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (108, 188, 108, 1);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (108, 198, 118, 0);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (109, 109, 109, 0);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (109, 119, 119, 0);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (109, 129, 109, 1);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (109, 139, 119, 1);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (109, 149, 109, 0);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (109, 159, 119, 0);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (109, 169, 109, 0);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (109, 179, 119, 1);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (109, 189, 109, 1);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (109, 199, 119, 1);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (110, 110, 110, 1);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (110, 120, 120, 0);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (110, 130, 110, 0);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (110, 140, 120, 1);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (110, 150, 110, 0);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (110, 160, 120, 0);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (110, 170, 110, 0);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (110, 180, 120, 1);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (110, 190, 110, 1);
INSERT INTO `mouthpiece_operation` (`mouthpiece_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (110, 200, 120, 1);


#
# TABLE STRUCTURE FOR: operation
#

DROP TABLE IF EXISTS `operation`;

CREATE TABLE `operation` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `g_code_link` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cost` int(10) unsigned DEFAULT NULL,
  `time` int(10) unsigned NOT NULL,
  `operation_type_id` int(10) unsigned NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (101, 'veritatis', 'http://hodkiewiczschneider.org/', 22, 7, 101, '2018-04-05 17:38:46', '1984-08-03 08:51:00');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (102, 'in', 'http://beahancrooks.com/', 217, 2, 102, '1972-12-15 16:42:48', '2000-03-15 20:42:25');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (103, 'aut', 'http://rosenbaum.info/', 0, 4, 103, '1981-02-20 01:43:13', '2004-01-01 07:51:43');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (104, 'est', 'http://millergoyette.net/', 216427422, 9, 104, '1981-09-08 14:58:19', '1975-05-14 18:35:42');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (105, 'deserunt', 'http://gleichnerrath.com/', 3, 9, 105, '2001-03-24 21:51:14', '1982-06-11 15:35:51');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (106, 'aliquam', 'http://satterfield.com/', 0, 6, 106, '1998-03-12 02:28:17', '2008-08-08 05:19:45');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (107, 'eum', 'http://www.williamson.biz/', 14877, 5, 107, '1997-07-27 14:22:13', '1993-06-12 07:12:47');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (108, 'et', 'http://www.mohrgrant.info/', 0, 9, 108, '2019-07-06 05:24:30', '2013-07-28 09:25:05');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (109, 'consequuntur', 'http://langosh.com/', 679543, 9, 109, '2011-09-18 04:10:31', '2005-08-24 23:46:49');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (110, 'sint', 'http://www.collier.com/', 4444370, 4, 110, '1982-03-15 13:12:27', '1998-03-26 11:46:29');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (111, 'consequatur', 'http://towne.biz/', 1542518, 4, 111, '1980-08-11 17:30:49', '2006-08-24 04:24:56');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (112, 'temporibus', 'http://gleichner.com/', 248, 9, 112, '1997-08-04 22:29:54', '1981-03-14 03:30:07');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (113, 'numquam', 'http://www.schimmel.com/', 29678157, 4, 113, '1997-02-18 23:52:19', '2005-01-15 20:31:00');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (114, 'voluptas', 'http://www.crona.com/', 17404, 2, 114, '2006-04-27 14:30:05', '1972-10-06 00:55:34');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (115, 'eaque', 'http://bradtke.com/', 4411599, 2, 115, '2019-11-09 12:45:50', '1974-07-02 10:37:19');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (116, 'illum', 'http://schmittcorwin.biz/', 219248, 3, 116, '1994-04-06 11:36:40', '1982-08-05 04:16:01');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (117, 'laudantium', 'http://www.vandervortdietrich.com/', 334, 9, 117, '1984-10-20 20:27:45', '2008-05-16 13:37:12');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (118, 'iusto', 'http://jenkins.com/', 2262, 7, 118, '1990-04-13 17:07:11', '2015-12-18 15:17:21');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (119, 'laborum', 'http://hane.net/', 0, 6, 119, '1996-10-14 09:03:02', '2001-05-13 12:54:33');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (120, 'optio', 'http://www.jonesbayer.com/', 5725, 1, 120, '1986-06-20 23:23:19', '2003-03-15 14:31:39');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (121, 'odit', 'http://www.langaufderhar.org/', 75002, 7, 121, '2011-10-16 02:55:18', '2018-10-14 03:15:18');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (122, 'totam', 'http://www.rolfsonherman.info/', 4, 4, 122, '1988-11-01 04:07:52', '1980-07-07 08:26:51');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (123, 'fuga', 'http://www.barton.com/', 81826884, 8, 123, '1981-11-11 15:28:30', '2007-08-07 06:38:35');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (124, 'minima', 'http://www.keelingzemlak.org/', 7881067, 2, 124, '1973-05-30 15:53:43', '1987-11-08 23:45:03');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (125, 'animi', 'http://robel.com/', 682706373, 8, 125, '2008-06-21 18:32:18', '2000-10-17 15:35:19');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (126, 'quasi', 'http://reichel.org/', 0, 5, 126, '1991-10-04 12:52:07', '2009-03-03 23:27:57');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (127, 'omnis', 'http://www.mayert.com/', 3328, 7, 127, '1972-10-18 19:07:38', '1991-04-19 06:16:41');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (128, 'a', 'http://welchbednar.com/', 4083, 4, 128, '1991-12-13 05:51:05', '1974-11-11 13:42:12');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (129, 'officia', 'http://www.schaefermohr.com/', 1561, 1, 129, '2003-06-24 11:43:27', '1974-05-24 01:27:48');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (130, 'excepturi', 'http://www.simonissauer.net/', 27904, 1, 130, '1982-03-08 14:52:43', '1982-04-05 05:40:49');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (131, 'ut', 'http://mann.org/', 1, 8, 131, '2001-12-17 19:44:43', '1981-03-05 01:03:03');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (132, 'quia', 'http://howell.com/', 2384978, 6, 132, '1976-04-27 13:29:02', '2000-01-23 13:08:55');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (133, 'ea', 'http://hartmannbreitenberg.biz/', 0, 8, 133, '2016-10-23 12:10:08', '1994-07-29 10:04:21');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (134, 'error', 'http://www.lueilwitzspencer.com/', 355849141, 8, 134, '1982-05-27 18:41:47', '2008-05-12 11:14:57');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (135, 'dolorum', 'http://raukonopelski.com/', 2, 1, 135, '1977-06-04 12:30:31', '1991-08-13 16:18:08');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (136, 'illo', 'http://www.spencerconsidine.com/', 4889, 6, 136, '1976-05-19 22:25:08', '1970-05-31 15:35:30');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (137, 'corrupti', 'http://www.jerdemonahan.net/', 5, 7, 137, '2015-06-29 00:04:46', '2008-10-20 13:00:13');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (138, 'cumque', 'http://www.kerluke.com/', 0, 3, 138, '1972-11-16 18:58:32', '1979-07-14 07:50:54');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (139, 'rerum', 'http://balistreriklocko.com/', 794683, 9, 139, '2006-09-27 04:55:34', '2016-08-02 00:27:12');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (140, 'sunt', 'http://schaefer.com/', 10136, 3, 140, '2014-11-18 12:41:05', '2009-01-10 12:19:23');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (141, 'dicta', 'http://www.webermohr.com/', 0, 1, 141, '1971-12-31 21:00:15', '1999-03-01 00:50:38');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (142, 'quo', 'http://www.bode.com/', 13657, 5, 142, '1999-03-07 05:55:34', '1979-04-01 11:36:40');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (143, 'doloremque', 'http://www.mitchell.com/', 559892, 2, 143, '1991-11-15 02:32:36', '1980-04-17 14:42:38');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (144, 'itaque', 'http://bodeschowalter.com/', 48, 7, 144, '1991-03-15 00:08:37', '1971-02-23 23:36:40');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (145, 'nobis', 'http://ernser.net/', 68, 1, 145, '2002-03-12 18:43:56', '1999-05-06 04:54:42');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (146, 'nihil', 'http://www.wuckert.com/', 0, 1, 146, '1987-05-03 17:57:21', '1980-09-14 09:00:13');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (147, 'non', 'http://www.gaylordshanahan.com/', 2207811, 4, 147, '2001-05-30 18:06:36', '1981-11-24 13:55:50');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (148, 'at', 'http://beierdenesik.com/', 4, 8, 148, '1990-11-09 18:15:36', '1982-02-14 16:49:20');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (149, 'repellendus', 'http://rohan.com/', 0, 2, 149, '2002-02-18 09:14:11', '1982-12-25 21:20:52');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (150, 'nulla', 'http://www.hilpertwhite.com/', 3529, 9, 150, '1985-10-26 02:49:44', '2018-04-03 08:28:39');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (151, 'placeat', 'http://larson.com/', 65259028, 5, 101, '1996-08-10 16:26:41', '2004-09-12 01:36:08');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (152, 'reprehenderit', 'http://feilbrekke.com/', 36, 6, 102, '1979-06-04 05:16:27', '1998-10-21 06:21:43');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (153, 'velit', 'http://www.walkerlittle.com/', 198, 7, 103, '1973-05-18 23:21:36', '1979-09-28 05:40:03');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (154, 'suscipit', 'http://www.lemke.com/', 1122, 3, 104, '1970-03-17 04:20:41', '1999-12-28 01:10:40');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (155, 'beatae', 'http://www.klocko.com/', 4, 9, 105, '2019-08-19 20:05:35', '1977-08-03 11:50:03');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (156, 'architecto', 'http://www.goldner.com/', 1, 8, 106, '1993-08-19 18:11:37', '1978-07-22 08:24:22');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (157, 'magnam', 'http://www.kshlerin.com/', 18413, 4, 107, '1975-12-13 11:48:48', '1986-01-28 12:04:16');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (158, 'ipsa', 'http://www.schillerkreiger.net/', 305469, 4, 108, '2001-08-14 02:52:16', '1983-07-14 04:56:14');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (159, 'id', 'http://cartwright.com/', 70528, 2, 109, '1989-12-19 15:56:31', '1999-02-17 05:57:39');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (160, 'deleniti', 'http://www.dach.biz/', 79, 9, 110, '1999-08-09 18:31:14', '1989-02-25 11:23:39');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (161, 'impedit', 'http://hahn.biz/', 1903873, 5, 111, '1985-02-09 03:19:11', '1998-10-25 03:09:09');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (162, 'molestiae', 'http://www.mccullough.com/', 1, 7, 112, '2007-04-28 13:34:15', '2007-05-30 22:19:02');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (163, 'nam', 'http://gradyboehm.com/', 437, 9, 113, '1973-02-05 22:01:13', '1973-10-08 06:58:54');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (164, 'ad', 'http://nienow.net/', 5, 2, 114, '2002-03-30 07:52:41', '2017-03-11 22:46:54');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (165, 'iure', 'http://www.ferrywatsica.com/', 0, 2, 115, '1986-09-18 05:21:53', '1975-07-12 15:07:44');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (166, 'voluptate', 'http://kreigerdavis.com/', 0, 8, 116, '2009-02-02 01:47:18', '1987-05-07 01:17:41');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (167, 'quos', 'http://www.wunsch.biz/', 7271061, 7, 117, '1979-03-22 04:19:44', '2002-11-28 03:23:14');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (168, 'qui', 'http://jacobs.biz/', 5, 5, 118, '1990-06-27 23:25:29', '2006-07-21 07:14:10');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (169, 'magni', 'http://www.shanahan.com/', 50322, 3, 119, '2019-03-25 07:06:06', '1972-10-28 22:37:52');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (170, 'saepe', 'http://bednar.info/', 221076, 8, 120, '2013-04-27 02:48:22', '1986-03-17 00:21:10');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (171, 'autem', 'http://www.cormieremmerich.com/', 5747453, 2, 121, '2011-10-12 14:58:13', '2008-06-25 06:37:14');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (172, 'cupiditate', 'http://reichel.com/', 9, 5, 122, '1982-02-02 16:40:05', '1992-04-29 23:20:27');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (173, 'perferendis', 'http://eichmannhayes.com/', 26568, 1, 123, '2011-08-01 14:31:58', '2016-12-09 08:31:36');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (174, 'natus', 'http://www.ankunding.com/', 62158736, 1, 124, '1979-06-14 01:00:57', '1992-01-09 13:56:40');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (175, 'dolor', 'http://turcotte.biz/', 0, 2, 125, '2012-11-12 06:33:30', '1998-03-30 13:31:09');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (176, 'cum', 'http://kuhn.biz/', 9, 3, 126, '2016-07-22 16:02:22', '1998-07-28 20:57:37');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (177, 'iste', 'http://marvin.biz/', 107, 1, 127, '1980-01-18 11:48:53', '1977-05-12 22:24:26');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (178, 'exercitationem', 'http://www.stracke.com/', 1665, 3, 128, '2003-03-08 07:48:28', '2019-12-10 11:33:49');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (179, 'inventore', 'http://swaniawskisanford.com/', 270818, 5, 129, '2018-08-04 09:27:00', '1971-01-29 08:53:32');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (180, 'nisi', 'http://www.strosindickinson.org/', 10980, 5, 130, '1992-10-25 02:44:33', '1998-01-02 13:08:45');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (181, 'modi', 'http://hills.com/', 3, 2, 131, '2010-07-15 01:48:16', '2019-02-26 15:29:11');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (182, 'eius', 'http://spencercollier.com/', 191689, 4, 132, '1995-11-25 14:30:46', '1974-02-23 18:48:45');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (183, 'vel', 'http://hoppereichel.com/', 1, 4, 133, '1994-04-23 06:51:43', '2002-06-28 05:27:35');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (184, 'quas', 'http://hansen.com/', 953129, 3, 134, '2010-10-18 20:49:34', '2005-08-12 14:26:44');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (185, 'quam', 'http://www.adams.info/', 580, 3, 135, '1996-10-11 03:59:20', '2011-11-03 19:07:48');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (186, 'voluptatem', 'http://www.schaden.com/', 60974, 8, 136, '1976-12-23 16:11:32', '2013-12-04 06:51:00');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (187, 'explicabo', 'http://www.konopelski.com/', 2, 4, 137, '2018-06-30 19:20:25', '2017-07-21 07:21:02');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (188, 'repudiandae', 'http://www.barrowsdare.org/', 41, 2, 138, '2007-01-25 22:59:55', '2010-11-12 05:27:00');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (189, 'occaecati', 'http://www.zboncaknikolaus.com/', 4, 6, 139, '2019-09-12 00:23:48', '2003-04-08 08:28:06');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (190, 'pariatur', 'http://murazikmoen.com/', 0, 5, 140, '2018-05-14 22:09:01', '1988-09-05 21:20:28');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (191, 'nostrum', 'http://ritchie.com/', 4047257, 7, 141, '1986-05-22 05:49:51', '2016-07-22 05:12:08');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (192, 'voluptatibus', 'http://dibbert.com/', 39, 5, 142, '1974-04-10 15:44:55', '1981-04-24 04:06:36');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (193, 'recusandae', 'http://purdy.com/', 146552531, 2, 143, '1981-07-26 22:43:38', '2000-06-09 19:17:29');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (194, 'perspiciatis', 'http://paucek.biz/', 330, 6, 144, '1989-02-15 00:21:07', '2000-03-23 07:55:58');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (195, 'libero', 'http://www.denesik.info/', 1, 6, 145, '1980-02-26 07:07:27', '2002-12-27 22:16:01');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (196, 'distinctio', 'http://lindroberts.com/', 7084273, 8, 146, '1998-07-02 00:03:05', '2019-08-22 09:28:35');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (197, 'neque', 'http://www.feeney.org/', 811064528, 5, 147, '1995-03-15 10:31:18', '2001-12-19 08:14:17');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (198, 'amet', 'http://www.turnermraz.net/', 8125307, 6, 148, '2017-09-29 05:03:00', '1973-04-14 05:12:51');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (199, 'maxime', 'http://wehnerbins.com/', 44708, 7, 149, '2013-01-08 05:42:52', '1986-02-11 16:58:23');
INSERT INTO `operation` (`id`, `name`, `g_code_link`, `cost`, `time`, `operation_type_id`, `created_at`, `updated_at`) VALUES (200, 'sapiente', 'http://www.cummerataryan.info/', 3605, 1, 150, '1995-06-06 06:38:50', '1990-05-02 00:07:28');


#
# TABLE STRUCTURE FOR: operation_type
#

DROP TABLE IF EXISTS `operation_type`;

CREATE TABLE `operation_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `coordinate_num` tinyint(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `operation_type` (`id`, `name`, `coordinate_num`) VALUES (101, 'rerum', 9);
INSERT INTO `operation_type` (`id`, `name`, `coordinate_num`) VALUES (102, 'hic', 1);
INSERT INTO `operation_type` (`id`, `name`, `coordinate_num`) VALUES (103, 'dolor', 6);
INSERT INTO `operation_type` (`id`, `name`, `coordinate_num`) VALUES (104, 'nobis', 8);
INSERT INTO `operation_type` (`id`, `name`, `coordinate_num`) VALUES (105, 'nihil', 6);
INSERT INTO `operation_type` (`id`, `name`, `coordinate_num`) VALUES (106, 'maiores', 3);
INSERT INTO `operation_type` (`id`, `name`, `coordinate_num`) VALUES (107, 'amet', 1);
INSERT INTO `operation_type` (`id`, `name`, `coordinate_num`) VALUES (108, 'voluptatem', 4);
INSERT INTO `operation_type` (`id`, `name`, `coordinate_num`) VALUES (109, 'et', 2);
INSERT INTO `operation_type` (`id`, `name`, `coordinate_num`) VALUES (110, 'nemo', 0);
INSERT INTO `operation_type` (`id`, `name`, `coordinate_num`) VALUES (111, 'debitis', 9);
INSERT INTO `operation_type` (`id`, `name`, `coordinate_num`) VALUES (112, 'eius', 8);
INSERT INTO `operation_type` (`id`, `name`, `coordinate_num`) VALUES (113, 'officia', 3);
INSERT INTO `operation_type` (`id`, `name`, `coordinate_num`) VALUES (114, 'velit', 0);
INSERT INTO `operation_type` (`id`, `name`, `coordinate_num`) VALUES (115, 'aspernatur', 2);
INSERT INTO `operation_type` (`id`, `name`, `coordinate_num`) VALUES (116, 'iusto', 1);
INSERT INTO `operation_type` (`id`, `name`, `coordinate_num`) VALUES (117, 'sequi', 7);
INSERT INTO `operation_type` (`id`, `name`, `coordinate_num`) VALUES (118, 'harum', 0);
INSERT INTO `operation_type` (`id`, `name`, `coordinate_num`) VALUES (119, 'nostrum', 5);
INSERT INTO `operation_type` (`id`, `name`, `coordinate_num`) VALUES (120, 'labore', 9);
INSERT INTO `operation_type` (`id`, `name`, `coordinate_num`) VALUES (121, 'magni', 8);
INSERT INTO `operation_type` (`id`, `name`, `coordinate_num`) VALUES (122, 'sint', 3);
INSERT INTO `operation_type` (`id`, `name`, `coordinate_num`) VALUES (123, 'nulla', 4);
INSERT INTO `operation_type` (`id`, `name`, `coordinate_num`) VALUES (124, 'enim', 7);
INSERT INTO `operation_type` (`id`, `name`, `coordinate_num`) VALUES (125, 'fugiat', 7);
INSERT INTO `operation_type` (`id`, `name`, `coordinate_num`) VALUES (126, 'qui', 5);
INSERT INTO `operation_type` (`id`, `name`, `coordinate_num`) VALUES (127, 'fuga', 9);
INSERT INTO `operation_type` (`id`, `name`, `coordinate_num`) VALUES (128, 'totam', 8);
INSERT INTO `operation_type` (`id`, `name`, `coordinate_num`) VALUES (129, 'ipsa', 7);
INSERT INTO `operation_type` (`id`, `name`, `coordinate_num`) VALUES (130, 'est', 8);
INSERT INTO `operation_type` (`id`, `name`, `coordinate_num`) VALUES (131, 'pariatur', 1);
INSERT INTO `operation_type` (`id`, `name`, `coordinate_num`) VALUES (132, 'consequatur', 8);
INSERT INTO `operation_type` (`id`, `name`, `coordinate_num`) VALUES (133, 'quas', 7);
INSERT INTO `operation_type` (`id`, `name`, `coordinate_num`) VALUES (134, 'commodi', 8);
INSERT INTO `operation_type` (`id`, `name`, `coordinate_num`) VALUES (135, 'ullam', 2);
INSERT INTO `operation_type` (`id`, `name`, `coordinate_num`) VALUES (136, 'soluta', 0);
INSERT INTO `operation_type` (`id`, `name`, `coordinate_num`) VALUES (137, 'doloremque', 6);
INSERT INTO `operation_type` (`id`, `name`, `coordinate_num`) VALUES (138, 'tempore', 1);
INSERT INTO `operation_type` (`id`, `name`, `coordinate_num`) VALUES (139, 'sunt', 3);
INSERT INTO `operation_type` (`id`, `name`, `coordinate_num`) VALUES (140, 'laborum', 4);
INSERT INTO `operation_type` (`id`, `name`, `coordinate_num`) VALUES (141, 'molestias', 4);
INSERT INTO `operation_type` (`id`, `name`, `coordinate_num`) VALUES (142, 'molestiae', 2);
INSERT INTO `operation_type` (`id`, `name`, `coordinate_num`) VALUES (143, 'excepturi', 1);
INSERT INTO `operation_type` (`id`, `name`, `coordinate_num`) VALUES (144, 'asperiores', 0);
INSERT INTO `operation_type` (`id`, `name`, `coordinate_num`) VALUES (145, 'autem', 8);
INSERT INTO `operation_type` (`id`, `name`, `coordinate_num`) VALUES (146, 'voluptatibus', 9);
INSERT INTO `operation_type` (`id`, `name`, `coordinate_num`) VALUES (147, 'quaerat', 7);
INSERT INTO `operation_type` (`id`, `name`, `coordinate_num`) VALUES (148, 'necessitatibus', 9);
INSERT INTO `operation_type` (`id`, `name`, `coordinate_num`) VALUES (149, 'magnam', 3);
INSERT INTO `operation_type` (`id`, `name`, `coordinate_num`) VALUES (150, 'impedit', 8);


#
# TABLE STRUCTURE FOR: order_status
#

DROP TABLE IF EXISTS `order_status`;

CREATE TABLE `order_status` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cost` int(10) unsigned DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `order_status` (`id`, `name`, `cost`, `is_default`) VALUES (101, 'ipsum', 24527, 0);
INSERT INTO `order_status` (`id`, `name`, `cost`, `is_default`) VALUES (102, 'quo', 167868673, 1);
INSERT INTO `order_status` (`id`, `name`, `cost`, `is_default`) VALUES (103, 'consequatur', 3352439, 1);


#
# TABLE STRUCTURE FOR: orders
#

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned DEFAULT NULL,
  `guid` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `order_status_id` int(10) unsigned NOT NULL,
  `shipping_type_id` int(10) unsigned NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `guid` (`guid`)
) ENGINE=InnoDB AUTO_INCREMENT=301 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (151, 101, '7557024', 101, 101, '1998-10-15 16:25:19', '1970-02-19 14:48:16');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (152, 102, '9597623', 102, 102, '2013-11-24 21:27:46', '1995-06-02 01:18:52');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (153, 103, '8805412', 103, 103, '2006-05-18 15:24:09', '2007-04-13 13:15:48');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (154, 104, '827974970', 101, 101, '2003-02-17 21:02:23', '2000-08-12 08:29:19');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (155, 105, '', 102, 102, '1971-09-23 23:30:16', '1970-02-14 19:38:42');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (157, 107, '3', 101, 101, '1980-10-04 17:07:45', '1979-12-10 05:35:02');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (158, 108, '56562', 102, 102, '1975-10-31 04:33:37', '1980-08-13 21:06:16');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (160, 110, '4394', 101, 101, '1977-08-04 01:35:51', '1970-04-21 17:12:42');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (161, 111, '71943656', 102, 102, '2002-06-09 09:29:49', '2016-06-24 21:32:22');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (162, 112, '66', 103, 103, '1996-03-10 19:03:41', '2012-09-05 17:00:12');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (163, 113, '786', 101, 101, '2005-04-30 22:35:05', '1982-08-22 00:25:38');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (165, 115, '973', 103, 103, '1975-04-10 08:12:29', '1987-02-03 19:51:16');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (166, 116, '97805', 101, 101, '2008-06-18 02:35:05', '1989-05-10 14:46:13');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (167, 117, '56', 102, 102, '1991-08-18 17:49:35', '1984-08-06 15:19:08');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (168, 118, '16267', 103, 103, '2009-08-18 07:17:28', '2019-12-13 13:36:25');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (169, 119, '444489', 101, 101, '2006-12-04 11:54:40', '2012-07-07 09:41:44');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (170, 120, '551', 102, 102, '1974-12-01 14:50:48', '1989-01-19 12:16:30');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (171, 121, '2026646', 103, 103, '2001-11-29 12:16:37', '1976-05-01 12:18:57');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (172, 122, '37064174', 101, 101, '1997-10-31 21:32:24', '2019-05-12 09:06:27');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (173, 123, '7863', 102, 102, '1996-07-15 21:20:29', '2006-01-22 16:07:23');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (174, 124, '55', 103, 103, '1992-06-04 13:06:54', '1979-01-12 20:52:56');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (175, 125, '282236', 101, 101, '1983-10-01 03:54:48', '2017-08-03 03:19:55');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (177, 127, '746', 103, 103, '1987-08-30 05:35:42', '1988-01-13 16:55:54');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (178, 128, '53991', 101, 101, '1983-07-04 12:25:18', '1995-03-30 02:04:41');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (180, 130, '5', 103, 103, '1987-03-03 22:10:33', '2003-06-27 02:22:00');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (181, 131, '7552', 101, 101, '1977-08-17 00:08:24', '2006-09-09 17:38:33');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (183, 133, '640226', 103, 103, '1980-10-24 18:56:11', '2004-03-15 21:42:03');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (184, 134, '193153408', 101, 101, '2019-03-10 18:15:08', '1979-10-09 07:34:07');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (186, 136, '1212', 103, 103, '1989-12-29 11:20:11', '1993-12-12 23:33:20');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (187, 137, '80', 101, 101, '1987-09-19 00:06:25', '2000-08-10 02:31:51');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (188, 138, '546', 102, 102, '1974-12-29 23:22:17', '2003-03-21 22:08:03');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (189, 139, '2591878', 103, 103, '2016-07-01 00:20:07', '2012-06-20 05:26:01');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (190, 140, '81723', 101, 101, '2013-02-03 00:49:11', '2015-03-06 09:19:38');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (191, 141, '4', 102, 102, '1973-03-12 19:43:23', '1987-07-15 05:13:43');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (192, 142, '96921243', 103, 103, '1973-05-28 08:38:08', '2019-02-17 18:22:55');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (193, 143, '49454516', 101, 101, '1986-09-07 22:42:32', '1993-06-12 02:15:49');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (195, 145, '3299', 103, 103, '2010-10-17 20:50:59', '2004-04-20 14:03:39');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (196, 146, '498', 101, 101, '1991-02-24 21:45:39', '2008-04-02 03:18:15');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (197, 147, '962435', 102, 102, '1998-07-23 08:05:09', '1991-04-10 20:32:54');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (198, 148, '30', 103, 103, '2019-12-22 22:02:25', '1992-09-13 12:05:47');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (201, 151, '6', 103, 103, '1977-12-09 04:22:24', '2007-03-20 23:08:03');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (202, 152, '99688', 101, 101, '1995-04-27 15:33:07', '2009-09-22 20:09:04');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (203, 153, '96152328', 102, 102, '1974-08-14 03:20:00', '2007-01-05 20:36:06');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (204, 154, '907852827', 103, 103, '2004-06-07 04:41:28', '1993-07-03 00:11:51');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (205, 155, '862', 101, 101, '2019-07-12 12:30:47', '1987-09-16 11:29:59');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (206, 156, '8', 102, 102, '1981-01-02 22:31:21', '1987-09-08 20:32:25');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (208, 158, '20', 101, 101, '2002-07-13 21:02:52', '1971-12-13 08:51:39');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (209, 159, '9', 102, 102, '2005-08-24 04:26:36', '2016-02-10 18:34:51');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (210, 160, '501', 103, 103, '1977-07-19 14:47:59', '1990-12-19 23:30:40');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (211, 161, '27011', 101, 101, '1971-04-12 11:35:52', '1993-09-14 14:25:15');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (212, 162, '7', 102, 102, '2002-02-09 19:46:16', '1992-01-02 19:26:44');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (213, 163, '78714', 103, 103, '1987-02-17 10:50:03', '1985-01-01 06:05:40');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (214, 164, '993', 101, 101, '1996-12-12 22:09:28', '2008-04-02 05:24:11');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (215, 165, '855', 102, 102, '2017-12-16 14:10:32', '1985-12-15 18:33:16');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (216, 166, '34', 103, 103, '1995-12-15 04:39:03', '2002-09-30 18:56:48');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (217, 167, '392', 101, 101, '2017-09-14 19:41:24', '2016-05-13 02:51:41');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (218, 168, '150571963', 102, 102, '2000-02-02 07:56:55', '2005-11-03 16:51:40');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (219, 169, '54387', 103, 103, '1986-11-30 05:49:35', '2013-07-16 08:47:07');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (220, 170, '35452314', 101, 101, '2007-08-20 09:12:34', '1992-01-27 14:56:19');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (221, 171, '342', 102, 102, '1983-04-08 12:43:58', '1992-10-20 01:04:31');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (222, 172, '6701447', 103, 103, '2019-07-26 14:09:41', '1992-04-04 09:16:58');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (223, 173, '10341066', 101, 101, '2012-10-14 01:35:06', '1987-12-27 01:00:20');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (224, 174, '20577078', 102, 102, '2015-01-05 01:43:20', '1980-11-29 07:32:55');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (225, 175, '3699', 103, 103, '1979-12-14 11:10:53', '1984-05-25 13:36:34');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (227, 177, '52366841', 102, 102, '2008-03-11 17:36:58', '1987-03-28 22:44:07');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (228, 178, '575245272', 103, 103, '1984-02-15 01:48:33', '2008-06-29 23:28:50');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (229, 179, '94', 101, 101, '1999-01-08 03:20:24', '2001-03-08 10:39:37');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (230, 180, '28', 102, 102, '2019-01-04 13:26:35', '1979-11-26 11:31:03');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (231, 181, '36064015', 103, 103, '1989-09-18 21:06:23', '2001-01-12 20:36:41');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (232, 182, '89318078', 101, 101, '2018-01-15 14:49:57', '2005-12-17 00:12:11');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (233, 183, '6695675', 102, 102, '2012-04-19 12:01:45', '1983-02-27 06:05:11');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (235, 185, '7705242', 101, 101, '1973-07-31 08:06:15', '1991-12-31 13:50:10');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (237, 187, '66717415', 103, 103, '2002-05-26 01:02:21', '2016-10-02 07:41:26');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (238, 188, '54', 101, 101, '1979-01-10 03:06:46', '2017-12-21 15:23:08');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (239, 189, '8607538', 102, 102, '2011-07-06 00:54:15', '1997-12-03 11:14:53');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (240, 190, '523176', 103, 103, '1973-08-07 23:52:48', '1992-06-23 23:55:54');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (241, 191, '788352', 101, 101, '1999-01-04 12:50:07', '1980-12-27 19:49:20');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (242, 192, '8512', 102, 102, '1975-12-26 08:36:29', '1996-07-18 10:22:28');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (243, 193, '688', 103, 103, '2004-05-09 20:47:18', '1971-07-04 03:28:37');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (244, 194, '2937761', 101, 101, '1985-07-12 12:39:41', '2015-08-22 10:56:08');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (245, 195, '197', 102, 102, '1981-10-28 12:02:20', '1972-02-22 16:06:36');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (247, 197, '31', 101, 101, '1980-11-05 12:18:46', '1977-11-07 04:31:42');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (249, 199, '356929084', 103, 103, '1980-08-06 16:10:44', '1973-07-05 11:41:51');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (251, 101, '6726379', 102, 102, '2011-04-02 04:28:34', '1999-06-05 11:22:13');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (252, 102, '595740', 103, 103, '2012-02-23 05:39:23', '1988-01-08 18:54:41');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (253, 103, '94360912', 101, 101, '1973-11-21 04:34:05', '2009-12-30 01:52:18');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (254, 104, '672', 102, 102, '1980-05-07 01:57:33', '2004-04-27 04:48:22');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (256, 106, '809578961', 101, 101, '1978-07-21 10:28:27', '2003-07-21 10:52:09');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (257, 107, '154643', 102, 102, '2019-08-05 03:58:36', '1990-01-23 15:38:12');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (258, 108, '2', 103, 103, '1996-06-07 17:32:23', '1996-10-06 22:04:51');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (260, 110, '10648912', 102, 102, '1999-11-08 13:20:58', '2010-01-17 10:09:28');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (261, 111, '7335', 103, 103, '2016-02-20 09:40:04', '1970-01-11 17:31:16');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (262, 112, '22', 101, 101, '1979-08-28 04:28:16', '1987-10-15 07:49:15');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (263, 113, '10', 102, 102, '1990-03-17 00:33:34', '2007-03-15 06:41:00');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (264, 114, '19099', 103, 103, '1980-05-05 02:34:30', '2008-11-19 08:29:36');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (265, 115, '1', 101, 101, '1994-04-15 18:02:47', '1993-12-10 16:06:34');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (266, 116, '3833913', 102, 102, '1982-04-01 10:31:18', '2011-08-08 21:23:47');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (267, 117, '4576', 103, 103, '1985-06-04 11:36:48', '2018-03-06 01:10:56');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (268, 118, '500644607', 101, 101, '1992-03-25 06:35:20', '2015-07-04 12:07:23');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (269, 119, '18025766', 102, 102, '1987-06-19 01:28:33', '1997-06-15 20:02:31');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (270, 120, '83078836', 103, 103, '1995-01-05 18:46:13', '1974-08-17 05:45:29');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (271, 121, '741515041', 101, 101, '1989-05-08 18:18:48', '1979-06-07 12:31:38');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (272, 122, '8833432', 102, 102, '2019-10-21 05:54:05', '1993-09-24 04:04:23');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (273, 123, '3915239', 103, 103, '2009-06-21 13:37:12', '1972-07-09 07:01:47');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (275, 125, '25', 102, 102, '2005-12-04 16:42:39', '2013-03-03 01:33:50');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (276, 126, '3551751', 103, 103, '2001-01-14 05:08:16', '2004-06-16 10:41:05');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (277, 127, '251', 101, 101, '2003-06-18 16:53:56', '2016-07-30 15:06:26');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (279, 129, '44313288', 103, 103, '1978-10-02 21:00:55', '1978-11-26 01:00:57');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (280, 130, '2700', 101, 101, '1984-12-09 11:34:23', '1990-06-21 20:04:13');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (281, 131, '29404', 102, 102, '2019-12-28 07:43:23', '1976-09-15 08:15:31');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (283, 133, '42207023', 101, 101, '1989-03-14 02:05:56', '1986-06-30 01:10:36');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (284, 134, '889715824', 102, 102, '2020-02-14 12:13:43', '1974-04-29 08:50:17');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (285, 135, '19141682', 103, 103, '2009-09-13 06:08:00', '2006-05-23 00:01:47');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (286, 136, '24081', 101, 101, '2006-08-20 23:09:08', '2004-11-06 12:25:53');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (287, 137, '3169973', 102, 102, '2013-08-29 06:22:02', '2002-09-10 22:29:53');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (290, 140, '599', 102, 102, '2001-02-06 03:12:00', '1973-08-05 12:30:00');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (291, 141, '4491455', 103, 103, '1991-12-02 07:21:51', '2014-11-05 09:32:33');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (292, 142, '283327', 101, 101, '2006-05-01 16:39:37', '1981-11-01 10:40:07');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (293, 143, '804', 102, 102, '2005-11-01 03:51:39', '2017-04-26 11:09:29');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (295, 145, '5891', 101, 101, '1986-05-26 03:26:09', '1982-03-28 03:44:18');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (297, 147, '85934450', 103, 103, '2010-10-03 18:04:07', '1976-06-12 04:30:47');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (298, 148, '71452051', 101, 101, '2019-05-17 12:59:51', '1988-07-19 13:07:48');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (299, 149, '239734281', 102, 102, '2007-04-11 00:51:02', '2006-05-03 11:21:22');
INSERT INTO `orders` (`id`, `customer_id`, `guid`, `order_status_id`, `shipping_type_id`, `created_at`, `updated_at`) VALUES (300, 150, '3684157', 103, 103, '2004-11-17 13:51:40', '1983-07-11 05:59:24');


#
# TABLE STRUCTURE FOR: ring
#

DROP TABLE IF EXISTS `ring`;

CREATE TABLE `ring` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cost` int(10) unsigned DEFAULT NULL,
  `material_id` int(10) unsigned NOT NULL,
  `is_marriage` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `ring` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (1, 'culpa', 0, 101, 0);
INSERT INTO `ring` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (2, 'fugiat', 5, 102, 1);
INSERT INTO `ring` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (3, 'doloribus', 20806533, 103, 0);
INSERT INTO `ring` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (4, 'perspiciatis', 0, 104, 0);
INSERT INTO `ring` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (5, 'facilis', 33, 105, 1);
INSERT INTO `ring` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (6, 'et', 89845712, 106, 1);
INSERT INTO `ring` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (7, 'voluptatum', 187, 107, 1);
INSERT INTO `ring` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (8, 'neque', 1198, 108, 1);
INSERT INTO `ring` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (9, 'consectetur', 29, 109, 0);
INSERT INTO `ring` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (10, 'voluptas', 617988, 110, 1);


#
# TABLE STRUCTURE FOR: ring_operation
#

DROP TABLE IF EXISTS `ring_operation`;

CREATE TABLE `ring_operation` (
  `ring_id` int(10) unsigned NOT NULL,
  `operation_id` int(10) unsigned NOT NULL,
  `tool_id` int(10) unsigned DEFAULT NULL,
  `is_complited` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`ring_id`,`operation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (1, 101, 101, 0);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (1, 111, 111, 1);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (1, 121, 101, 0);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (1, 131, 111, 1);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (1, 141, 101, 1);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (1, 151, 111, 1);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (1, 161, 101, 0);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (1, 171, 111, 1);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (1, 181, 101, 1);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (1, 191, 111, 1);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (2, 102, 102, 0);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (2, 112, 112, 1);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (2, 122, 102, 1);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (2, 132, 112, 0);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (2, 142, 102, 1);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (2, 152, 112, 1);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (2, 162, 102, 1);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (2, 172, 112, 0);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (2, 182, 102, 1);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (2, 192, 112, 0);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (3, 103, 103, 1);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (3, 113, 113, 0);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (3, 123, 103, 1);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (3, 133, 113, 1);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (3, 143, 103, 0);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (3, 153, 113, 0);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (3, 163, 103, 0);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (3, 173, 113, 1);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (3, 183, 103, 1);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (3, 193, 113, 1);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (4, 104, 104, 1);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (4, 114, 114, 0);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (4, 124, 104, 0);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (4, 134, 114, 1);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (4, 144, 104, 0);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (4, 154, 114, 0);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (4, 164, 104, 0);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (4, 174, 114, 0);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (4, 184, 104, 0);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (4, 194, 114, 1);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (5, 105, 105, 0);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (5, 115, 115, 0);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (5, 125, 105, 0);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (5, 135, 115, 0);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (5, 145, 105, 0);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (5, 155, 115, 0);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (5, 165, 105, 1);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (5, 175, 115, 0);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (5, 185, 105, 1);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (5, 195, 115, 1);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (6, 106, 106, 1);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (6, 116, 116, 1);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (6, 126, 106, 1);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (6, 136, 116, 1);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (6, 146, 106, 1);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (6, 156, 116, 0);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (6, 166, 106, 0);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (6, 176, 116, 1);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (6, 186, 106, 1);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (6, 196, 116, 1);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (7, 107, 107, 1);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (7, 117, 117, 1);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (7, 127, 107, 1);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (7, 137, 117, 1);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (7, 147, 107, 0);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (7, 157, 117, 0);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (7, 167, 107, 1);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (7, 177, 117, 1);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (7, 187, 107, 0);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (7, 197, 117, 1);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (8, 108, 108, 1);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (8, 118, 118, 1);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (8, 128, 108, 0);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (8, 138, 118, 0);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (8, 148, 108, 1);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (8, 158, 118, 0);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (8, 168, 108, 1);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (8, 178, 118, 0);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (8, 188, 108, 0);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (8, 198, 118, 1);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (9, 109, 109, 1);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (9, 119, 119, 0);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (9, 129, 109, 1);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (9, 139, 119, 0);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (9, 149, 109, 0);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (9, 159, 119, 1);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (9, 169, 109, 1);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (9, 179, 119, 0);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (9, 189, 109, 0);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (9, 199, 119, 0);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (10, 110, 110, 0);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (10, 120, 120, 1);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (10, 130, 110, 1);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (10, 140, 120, 0);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (10, 150, 110, 1);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (10, 160, 120, 0);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (10, 170, 110, 0);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (10, 180, 120, 0);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (10, 190, 110, 1);
INSERT INTO `ring_operation` (`ring_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (10, 200, 120, 0);


#
# TABLE STRUCTURE FOR: shipping_type
#

DROP TABLE IF EXISTS `shipping_type`;

CREATE TABLE `shipping_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cost` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `shipping_type` (`id`, `name`, `cost`) VALUES (101, 'nulla', 17958579);
INSERT INTO `shipping_type` (`id`, `name`, `cost`) VALUES (102, 'maxime', 40);
INSERT INTO `shipping_type` (`id`, `name`, `cost`) VALUES (103, 'error', 39265);


#
# TABLE STRUCTURE FOR: tongue
#

DROP TABLE IF EXISTS `tongue`;

CREATE TABLE `tongue` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cost` int(10) unsigned DEFAULT NULL,
  `material_id` int(10) unsigned NOT NULL,
  `is_marriage` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (101, 'est', 21605, 101, 0);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (102, 'modi', 0, 102, 0);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (103, 'debitis', 2255, 103, 1);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (104, 'quia', 89353, 104, 1);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (105, 'sit', 7873393, 105, 1);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (106, 'corporis', 148, 106, 0);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (107, 'molestiae', 60839, 107, 1);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (108, 'odit', 398773, 108, 0);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (109, 'nihil', 5, 109, 1);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (110, 'sunt', 3, 110, 1);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (111, 'illum', 458273, 101, 0);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (112, 'et', 1, 102, 1);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (113, 'cum', 1, 103, 1);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (114, 'qui', 5448585, 104, 0);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (115, 'sequi', 98, 105, 0);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (116, 'dolor', 316, 106, 0);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (117, 'asperiores', 72603, 107, 1);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (118, 'perferendis', 6474, 108, 0);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (119, 'iure', 1624, 109, 0);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (120, 'animi', 55270, 110, 1);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (121, 'voluptates', 426, 101, 0);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (122, 'at', 63, 102, 1);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (123, 'occaecati', 32, 103, 1);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (124, 'eos', 134, 104, 1);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (125, 'delectus', 1, 105, 0);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (126, 'in', 657, 106, 0);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (127, 'aperiam', 0, 107, 1);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (128, 'aut', 906997, 108, 1);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (129, 'quos', 144, 109, 1);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (130, 'totam', 24, 110, 0);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (131, 'reiciendis', 24040, 101, 0);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (132, 'laboriosam', 1394, 102, 1);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (133, 'iusto', 227, 103, 0);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (134, 'consequatur', 469, 104, 0);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (135, 'saepe', 41246, 105, 0);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (136, 'consectetur', 2275, 106, 1);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (137, 'magnam', 5, 107, 1);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (138, 'esse', 69784935, 108, 1);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (139, 'fugit', 207020381, 109, 1);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (140, 'maiores', 694638, 110, 0);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (141, 'adipisci', 219594, 101, 0);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (142, 'doloremque', 162552072, 102, 0);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (143, 'minima', 0, 103, 0);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (144, 'quas', 1226, 104, 1);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (145, 'exercitationem', 357437295, 105, 0);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (146, 'doloribus', 18636, 106, 0);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (147, 'assumenda', 0, 107, 1);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (148, 'veritatis', 348938, 108, 0);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (149, 'ipsa', 408, 109, 1);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (150, 'voluptas', 2973, 110, 0);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (151, 'deserunt', 1, 101, 1);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (152, 'inventore', 5440177, 102, 0);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (153, 'quibusdam', 6, 103, 1);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (154, 'accusamus', 3783, 104, 1);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (155, 'id', 0, 105, 0);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (156, 'facilis', 0, 106, 0);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (157, 'amet', 40, 107, 1);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (158, 'quis', 0, 108, 1);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (159, 'voluptatum', 585, 109, 1);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (160, 'deleniti', 231, 110, 0);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (161, 'ab', 255, 101, 1);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (162, 'dolore', 2157943, 102, 1);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (163, 'unde', 1845, 103, 0);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (164, 'ea', 297601, 104, 0);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (165, 'tenetur', 7190790, 105, 1);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (166, 'harum', 226644, 106, 0);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (167, 'repudiandae', 500, 107, 0);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (168, 'cupiditate', 283896478, 108, 0);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (169, 'quidem', 65406, 109, 1);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (170, 'praesentium', 80, 110, 0);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (171, 'voluptatem', 203, 101, 1);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (172, 'tempora', 0, 102, 0);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (173, 'quisquam', 2, 103, 1);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (174, 'explicabo', 800, 104, 1);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (175, 'autem', 5466743, 105, 0);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (176, 'cumque', 19369016, 106, 1);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (177, 'fuga', 0, 107, 1);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (178, 'dolorem', 2, 108, 1);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (179, 'rem', 0, 109, 1);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (180, 'reprehenderit', 295, 110, 0);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (181, 'beatae', 4, 101, 0);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (182, 'omnis', 21, 102, 0);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (183, 'labore', 218, 103, 1);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (184, 'quo', 694113, 104, 0);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (185, 'temporibus', 4, 105, 0);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (186, 'itaque', 167250, 106, 1);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (187, 'ducimus', 11, 107, 1);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (188, 'eum', 1088, 108, 1);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (189, 'sint', 0, 109, 1);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (190, 'ut', 8, 110, 0);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (191, 'nulla', 12290, 101, 0);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (192, 'rerum', 2, 102, 0);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (193, 'molestias', 308711, 103, 1);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (194, 'numquam', 161577, 104, 1);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (195, 'culpa', 0, 105, 0);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (196, 'sed', 44615, 106, 1);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (197, 'quae', 118129334, 107, 0);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (198, 'natus', 0, 108, 0);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (199, 'quam', 19026, 109, 0);
INSERT INTO `tongue` (`id`, `name`, `cost`, `material_id`, `is_marriage`) VALUES (200, 'mollitia', 104, 110, 0);


#
# TABLE STRUCTURE FOR: tongue_operation
#

DROP TABLE IF EXISTS `tongue_operation`;

CREATE TABLE `tongue_operation` (
  `tongue_id` int(10) unsigned NOT NULL,
  `operation_id` int(10) unsigned NOT NULL,
  `tool_id` int(10) unsigned DEFAULT NULL,
  `is_complited` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`tongue_id`,`operation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (101, 101, 101, 1);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (102, 102, 102, 1);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (103, 103, 103, 0);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (104, 104, 104, 1);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (105, 105, 105, 0);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (106, 106, 106, 1);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (107, 107, 107, 0);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (108, 108, 108, 0);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (109, 109, 109, 0);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (110, 110, 110, 0);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (111, 111, 111, 0);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (112, 112, 112, 0);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (113, 113, 113, 0);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (114, 114, 114, 0);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (115, 115, 115, 0);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (116, 116, 116, 1);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (117, 117, 117, 1);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (118, 118, 118, 0);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (119, 119, 119, 0);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (120, 120, 120, 0);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (121, 121, 101, 1);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (122, 122, 102, 0);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (123, 123, 103, 1);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (124, 124, 104, 1);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (125, 125, 105, 1);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (126, 126, 106, 1);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (127, 127, 107, 1);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (128, 128, 108, 0);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (129, 129, 109, 0);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (130, 130, 110, 0);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (131, 131, 111, 0);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (132, 132, 112, 0);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (133, 133, 113, 1);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (134, 134, 114, 1);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (135, 135, 115, 1);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (136, 136, 116, 0);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (137, 137, 117, 1);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (138, 138, 118, 1);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (139, 139, 119, 0);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (140, 140, 120, 1);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (141, 141, 101, 0);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (142, 142, 102, 1);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (143, 143, 103, 0);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (144, 144, 104, 1);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (145, 145, 105, 0);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (146, 146, 106, 1);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (147, 147, 107, 0);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (148, 148, 108, 0);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (149, 149, 109, 1);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (150, 150, 110, 0);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (151, 151, 111, 0);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (152, 152, 112, 0);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (153, 153, 113, 0);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (154, 154, 114, 1);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (155, 155, 115, 0);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (156, 156, 116, 0);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (157, 157, 117, 1);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (158, 158, 118, 1);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (159, 159, 119, 1);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (160, 160, 120, 0);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (161, 161, 101, 0);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (162, 162, 102, 1);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (163, 163, 103, 0);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (164, 164, 104, 0);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (165, 165, 105, 0);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (166, 166, 106, 1);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (167, 167, 107, 1);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (168, 168, 108, 1);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (169, 169, 109, 0);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (170, 170, 110, 1);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (171, 171, 111, 0);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (172, 172, 112, 0);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (173, 173, 113, 0);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (174, 174, 114, 1);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (175, 175, 115, 1);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (176, 176, 116, 0);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (177, 177, 117, 0);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (178, 178, 118, 1);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (179, 179, 119, 0);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (180, 180, 120, 1);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (181, 181, 101, 1);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (182, 182, 102, 1);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (183, 183, 103, 0);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (184, 184, 104, 0);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (185, 185, 105, 1);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (186, 186, 106, 0);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (187, 187, 107, 1);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (188, 188, 108, 0);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (189, 189, 109, 1);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (190, 190, 110, 0);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (191, 191, 111, 1);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (192, 192, 112, 1);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (193, 193, 113, 1);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (194, 194, 114, 0);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (195, 195, 115, 1);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (196, 196, 116, 1);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (197, 197, 117, 1);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (198, 198, 118, 0);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (199, 199, 119, 1);
INSERT INTO `tongue_operation` (`tongue_id`, `operation_id`, `tool_id`, `is_complited`) VALUES (200, 200, 120, 0);


#
# TABLE STRUCTURE FOR: tool
#

DROP TABLE IF EXISTS `tool`;

CREATE TABLE `tool` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `tool_type_id` int(10) unsigned DEFAULT NULL,
  `resource_count` int(10) unsigned NOT NULL,
  `cuantity` int(10) unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `tool` (`id`, `name`, `tool_type_id`, `resource_count`, `cuantity`, `created_at`, `updated_at`) VALUES (101, 'iste', 1, 45303, 1, '1974-10-27 23:37:23', '2010-01-06 16:49:02');
INSERT INTO `tool` (`id`, `name`, `tool_type_id`, `resource_count`, `cuantity`, `created_at`, `updated_at`) VALUES (102, 'cupiditate', 2, 42, 5, '2001-06-01 10:44:13', '2014-03-04 03:51:35');
INSERT INTO `tool` (`id`, `name`, `tool_type_id`, `resource_count`, `cuantity`, `created_at`, `updated_at`) VALUES (103, 'fugiat', 3, 225216, 9, '1983-07-07 04:15:05', '1999-02-11 16:01:40');
INSERT INTO `tool` (`id`, `name`, `tool_type_id`, `resource_count`, `cuantity`, `created_at`, `updated_at`) VALUES (104, 'consequatur', 4, 229749, 6, '1988-12-29 10:25:22', '1989-08-13 05:08:07');
INSERT INTO `tool` (`id`, `name`, `tool_type_id`, `resource_count`, `cuantity`, `created_at`, `updated_at`) VALUES (105, 'tempore', 5, 209, 7, '1979-04-24 18:57:35', '1971-11-06 02:21:39');
INSERT INTO `tool` (`id`, `name`, `tool_type_id`, `resource_count`, `cuantity`, `created_at`, `updated_at`) VALUES (106, 'voluptas', 6, 2731298, 6, '2009-04-13 03:19:54', '1989-06-09 09:57:30');
INSERT INTO `tool` (`id`, `name`, `tool_type_id`, `resource_count`, `cuantity`, `created_at`, `updated_at`) VALUES (107, 'ullam', 7, 0, 5, '1977-05-19 21:11:03', '1983-10-12 14:23:17');
INSERT INTO `tool` (`id`, `name`, `tool_type_id`, `resource_count`, `cuantity`, `created_at`, `updated_at`) VALUES (108, 'aut', 8, 6997155, 0, '2006-11-22 10:55:19', '1999-02-24 02:32:53');
INSERT INTO `tool` (`id`, `name`, `tool_type_id`, `resource_count`, `cuantity`, `created_at`, `updated_at`) VALUES (109, 'suscipit', 9, 5028, 6, '2002-03-12 22:51:23', '1978-10-23 03:11:38');
INSERT INTO `tool` (`id`, `name`, `tool_type_id`, `resource_count`, `cuantity`, `created_at`, `updated_at`) VALUES (110, 'sunt', 10, 5119, 8, '2007-01-19 11:58:09', '1994-03-25 07:54:29');
INSERT INTO `tool` (`id`, `name`, `tool_type_id`, `resource_count`, `cuantity`, `created_at`, `updated_at`) VALUES (111, 'nihil', 1, 5469, 5, '2019-09-27 12:16:38', '2018-02-27 16:33:11');
INSERT INTO `tool` (`id`, `name`, `tool_type_id`, `resource_count`, `cuantity`, `created_at`, `updated_at`) VALUES (112, 'est', 2, 191321, 5, '1983-01-21 10:43:47', '1993-12-10 21:22:18');
INSERT INTO `tool` (`id`, `name`, `tool_type_id`, `resource_count`, `cuantity`, `created_at`, `updated_at`) VALUES (113, 'quibusdam', 3, 673, 0, '1991-04-13 01:33:30', '2001-03-18 22:13:24');
INSERT INTO `tool` (`id`, `name`, `tool_type_id`, `resource_count`, `cuantity`, `created_at`, `updated_at`) VALUES (114, 'quos', 4, 319154, 1, '1982-06-13 13:56:38', '1993-09-30 16:27:17');
INSERT INTO `tool` (`id`, `name`, `tool_type_id`, `resource_count`, `cuantity`, `created_at`, `updated_at`) VALUES (115, 'sit', 5, 7, 2, '2003-04-27 09:54:21', '2000-09-10 13:38:24');
INSERT INTO `tool` (`id`, `name`, `tool_type_id`, `resource_count`, `cuantity`, `created_at`, `updated_at`) VALUES (116, 'earum', 6, 20349, 9, '1977-04-17 03:38:09', '2012-12-04 04:41:37');
INSERT INTO `tool` (`id`, `name`, `tool_type_id`, `resource_count`, `cuantity`, `created_at`, `updated_at`) VALUES (117, 'laudantium', 7, 94673, 4, '1983-03-13 01:39:30', '2012-02-14 09:34:17');
INSERT INTO `tool` (`id`, `name`, `tool_type_id`, `resource_count`, `cuantity`, `created_at`, `updated_at`) VALUES (118, 'fugit', 8, 138401, 7, '1981-07-17 08:58:46', '2006-12-19 14:03:29');
INSERT INTO `tool` (`id`, `name`, `tool_type_id`, `resource_count`, `cuantity`, `created_at`, `updated_at`) VALUES (119, 'voluptatibus', 9, 0, 1, '1992-01-29 05:15:26', '1979-11-24 12:34:32');
INSERT INTO `tool` (`id`, `name`, `tool_type_id`, `resource_count`, `cuantity`, `created_at`, `updated_at`) VALUES (120, 'quo', 10, 6, 1, '2006-02-11 00:43:11', '1993-01-25 03:53:32');


#
# TABLE STRUCTURE FOR: tool_type
#

DROP TABLE IF EXISTS `tool_type`;

CREATE TABLE `tool_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cost` int(10) unsigned DEFAULT NULL,
  `resource_count` int(10) unsigned NOT NULL,
  `cuantity` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `tool_type` (`id`, `name`, `cost`, `resource_count`, `cuantity`) VALUES (1, 'nihil', 1213, 570731413, 2);
INSERT INTO `tool_type` (`id`, `name`, `cost`, `resource_count`, `cuantity`) VALUES (2, 'harum', 4815, 430, 6);
INSERT INTO `tool_type` (`id`, `name`, `cost`, `resource_count`, `cuantity`) VALUES (3, 'magnam', 413, 4, 3);
INSERT INTO `tool_type` (`id`, `name`, `cost`, `resource_count`, `cuantity`) VALUES (4, 'ex', 29, 0, 2);
INSERT INTO `tool_type` (`id`, `name`, `cost`, `resource_count`, `cuantity`) VALUES (5, 'et', 36958311, 820239, 9);
INSERT INTO `tool_type` (`id`, `name`, `cost`, `resource_count`, `cuantity`) VALUES (6, 'accusamus', 290802230, 0, 2);
INSERT INTO `tool_type` (`id`, `name`, `cost`, `resource_count`, `cuantity`) VALUES (7, 'repellendus', 6397589, 9617, 2);
INSERT INTO `tool_type` (`id`, `name`, `cost`, `resource_count`, `cuantity`) VALUES (8, 'numquam', 97, 764542, 4);
INSERT INTO `tool_type` (`id`, `name`, `cost`, `resource_count`, `cuantity`) VALUES (9, 'eum', 4, 257176, 9);
INSERT INTO `tool_type` (`id`, `name`, `cost`, `resource_count`, `cuantity`) VALUES (10, 'officia', 28, 91869, 7);


