###############################################################################################################
-- База данных для приема и обработки индивидуальных заказов для сайта ketner.ru
###############################################################################################################
-- Мы с братом, Артемом Беловым, разбили проект на 2 части. Чтобы не повторяться в курсовом.
-- В моем проекте - прием заказов в конструкторе манков и оптимизация производства, в его - пользовательская часть, школа игры на духовых манках.
-- В дальнейшем базы будут сшиты в одну по связи user-customer 
-- Соответственно,  такие данные как никнейм или пароль будут в user. Предполагается возможность сделать заказ без регистрации, 
-- В таком режиме база должна работать самодостаточно. 

USE ketner;

-- customer
-- Таблица пользователей. 


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
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


########################################

-- call_order
-- таблица связи для model и orders, в заказе может быть несколько манков.


DROP TABLE IF EXISTS `call_order`;

CREATE TABLE `call_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `model_id` int(10) unsigned NOT NULL,
  `order_id` int(10) unsigned NOT NULL,
  `item_status_id` int(10) unsigned NOT NULL,  
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- DESC `call`;

-- orders
-- таблица заказов.


DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned, -- NOT NULL не добавлял, возможны случаи, когда манок изготавливается не по заказу клиента, хозяина нет, а изделие должно быть учтено.
  `guid` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `order_status_id` int(10) unsigned NOT NULL,
  `shipping_type_id` int(10) unsigned NOT NULL,  
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `guid` (`guid`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

########################################

-- model
-- Модели манков. 
-- Пользователям доступны для выбора только модели, помеченные is_default, это защищает их от заказа некомплектного манка, или несовместимых деталей.
-- когда он начнет заполнять форму на сайте, результаты автоматически будут отсортировываться, предлагая только "хорошие" варианты. 
-- Администраторам требуется иногда формировать некомплектные заказы, учитывать "специальные пожелания" и т.д., поэтому может возникнуть
--  необходимость принять заказ, например, на один мундштук. NOT NULL не добавлены по этой причине.

-- Еще рассматривается вариант создать отдельно таблицу default_model, она получается не большой, обновления будет требовать не часто, и всегда это будет сопряжено с 
-- загрузкой фото. Будет дублирование данных, но пользователь физически "прострелить ногу", сделав некорректный заказ, не сможет, даже в случае какой-то ошибки.
-- основная часть запросов будет обращаться к маленькой, плотной, быстрой таблице, а model - только на уровне администратора.



DROP TABLE IF EXISTS `model`;

CREATE TABLE `model` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `calltype_id` int(10) unsigned NOT NULL,     
  `mouthpiece_id` int(10) unsigned,
  `ring_id` int(10) unsigned,
  `horn_id` int(10) unsigned,
  `bone_id` int(10) unsigned,
  `bung_id` int(10) unsigned,  
  `tongue_id` int(10) unsigned,
  `is_default` boolean,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- DESC `model`;

#############################################

-- operation
-- таблица операций всех по изготовлению манков. Часть выполняются на ЧПУ, часть на другом оборудовании. 
-- Присутствует колонка управляющих программ для ЧПУ, если подразумевается этот вид обработки. Хранит ссылки на файлы G-code.

-- Обсуждавшийся вариант хранить код в git-репозитории не подошел, во-первых, по причине безмозглости станков, им нужен единственный файл.
-- Во-вторых, репозиторий есть, но там очень много экспериментальных программ, которые в принципе не должны попасть в эту базу, не говоря о возможном заказе по ошибке.
-- новые модели в продажу выходят не часто, требуют загрузки серий фото и полу-ручное добавление операций в базу видится оптимальным вариантом. 

-- В этой части в ходе курса появилась уйма идей для оптимизации процесса производства, поэтому пока сделал минимальный работоспособный вариант.
-- Но планирую серьезную переработку. G-code будет храниться фрагментами, либо в виде отдельных файлов, либо в базе, более подходящей для этого.
-- Рассматриваю elasticsearch или mongo. 


DROP TABLE IF EXISTS `operation`;

CREATE TABLE `operation` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `g_code_link` varchar(250) COLLATE utf8_unicode_ci,
  `cost` int(10) unsigned, 
  `time` int(10) unsigned NOT NULL, -- Время на выполнение операции в секундах. Для учета станочного времени и своевременной замены инструмента.
  `operation_type_id` int(10) unsigned NOT NULL, 
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- DESC operation;


##################################
-- operation_type
-- Продумать организацию парка машин для масштабирования, но пока прописывать это в базе преждевременно.

DROP TABLE IF EXISTS `operation_type`;

CREATE TABLE `operation_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `coordinate_num` tinyint(10) unsigned,  
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- DESC `operation_type`;

##################################
-- call_type

DROP TABLE IF EXISTS `call_type`;

CREATE TABLE `call_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cost` int(10) unsigned,   
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- DESC `call_type`;

##################################
-- shipping_type

DROP TABLE IF EXISTS `shipping_type`;

CREATE TABLE `shipping_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cost` int(10) unsigned,   
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- DESC `shipping_type`;

##################################
-- order_status

DROP TABLE IF EXISTS `order_status`;

CREATE TABLE `order_status` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cost` int(10) unsigned,
  `is_default` boolean DEFAULT TRUE, -- FALSE, если требуется особый контроль заказа.
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- DESC `order_status`;


##################################
-- item_status

DROP TABLE IF EXISTS `item_status`;

CREATE TABLE `item_status` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,  
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- DESC `item_status`;
#############################################

-- material

DROP TABLE IF EXISTS `material`;

CREATE TABLE `material` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cost` int(10) unsigned,
  `quantity` int(10) unsigned, -- сделать автоинкремент при расходовании материала/
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- DESC `material`;

####################################################

-- tool_type
-- Виды инструмента.


DROP TABLE IF EXISTS `tool_type`; 

CREATE TABLE `tool_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cost` int(10) unsigned,
  `resource_count` int(10) unsigned NOT NULL, -- пробег инструмента до замены в секундах 
  `cuantity` int(10) unsigned, -- запас на складе - добавить автоинкремент при создании новой сущности tool  
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- DESC `tool_type`;

####################################################

-- tool
-- Физический инструмент. Фреза-строка. 
-- resource_count должен убывать на time у последнего заведенного в базу инструмента данного типа.
-- если отпустится ниже порогового значения, будет предупреждение. До нуля - требование заменить инструмент.
-- При поломке инструмента, новая строка создается досрочно.


DROP TABLE IF EXISTS `tool`; 

CREATE TABLE `tool` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `tool_type_id` int(10) unsigned,
  `resource_count` int(10) unsigned NOT NULL, -- пробег инструмента до замены в секундах добавить уменьшение на operation.time при использовании в operation.
  `cuantity` int(10) unsigned, -- запас на складе - добавить автодекремент при создании новой сущности tool 
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(), 
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- DESC `tool`;

####################################################

####################################################

-- horn
-- horn-operation
-- Таблица детали и связка между деталью и операциями.

-- в этой таблице и далее is_marriage всегда ложь. Но в результатах запроса по конкретному заказу может быть заменен на правду.
-- такие запчасти должны быть изготовлены вне очереди, а бракованные детали даже по ошибке не должны попасть клиенту.
-- причем переделывать нужно именно деталь, а не отдельные операции, поэтому флаг тут. Это отдельный маркер,
-- в соответствующих связках горн-операция is_complited будет заменено на ложь.

-- Графы времени создания и удаления отдельно не заводил. Данные будут совпадать с items, а для контроля не стандартных случаев есть флаг is_marriage

DROP TABLE IF EXISTS `horn`; 
DROP TABLE IF EXISTS `horn_operation`;

CREATE TABLE `horn` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cost` int(10) unsigned,
  `material_id` int(10) unsigned NOT NULL,  
  `is_marriage` boolean DEFAULT FALSE,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `horn_operation` (
  `horn_id` int(10) unsigned NOT NULL,
  `operation_id` int(10) unsigned NOT NULL,
  `tool_id` int(10) unsigned,
  `is_complited` boolean DEFAULT FALSE, 
  PRIMARY KEY (`horn_id`, `operation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- DESC `horn`;
-- DESC `horn-operation`;

####################################################

-- mouthpiece
-- mouthpiece-operation
-- Таблица детали и связка между деталью и операциями.


DROP TABLE IF EXISTS `mouthpiece`; 
DROP TABLE IF EXISTS `mouthpiece_operation`;

CREATE TABLE `mouthpiece` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cost` int(10) unsigned,
  `material_id` int(10) unsigned NOT NULL,  
  `is_marriage` boolean DEFAULT FALSE,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `mouthpiece_operation` (
  `mouthpiece_id` int(10) unsigned NOT NULL,
  `operation_id` int(10) unsigned NOT NULL,
  `tool_id` int(10) unsigned,
  `is_complited` boolean DEFAULT FALSE, 
  PRIMARY KEY (`mouthpiece_id`, `operation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- DESC `mouthpiece`;
-- DESC `mouthpiece-operation`;

####################################################

-- bone
-- bone-operation
-- Таблица детали и связка между деталью и операциями.

DROP TABLE IF EXISTS `bone`; 
DROP TABLE IF EXISTS `bone_operation`;

CREATE TABLE `bone` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cost` int(10) unsigned,
  `material_id` int(10) unsigned NOT NULL,  
  `is_marriage` boolean DEFAULT FALSE,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `bone_operation` (
  `bone_id` int(10) unsigned NOT NULL,
  `operation_id` int(10) unsigned NOT NULL,
  `tool_id` int(10) unsigned,
  `is_complited` boolean DEFAULT FALSE, 
  PRIMARY KEY (`bone_id`, `operation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- DESC `bone`;
-- DESC `bone-operation`;

####################################################

-- tongue
-- tongue-operation
-- Таблица детали и связка между деталью и операциями.


DROP TABLE IF EXISTS `tongue`; 
DROP TABLE IF EXISTS `tongue_operation`;

CREATE TABLE `tongue` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cost` int(10) unsigned,
  `material_id` int(10) unsigned NOT NULL,  
  `is_marriage` boolean DEFAULT FALSE,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `tongue_operation` (
  `tongue_id` int(10) unsigned NOT NULL,
  `operation_id` int(10) unsigned NOT NULL,
  `tool_id` int(10) unsigned,
  `is_complited` boolean DEFAULT FALSE, 
  PRIMARY KEY (`tongue_id`, `operation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- DESC `tongue`;
-- DESC `tongue-operation`;

####################################################

-- ring
-- ring-operation
-- Таблица детали и связка между деталью и операциями.



DROP TABLE IF EXISTS `ring`; 
DROP TABLE IF EXISTS `ring_operation`;

CREATE TABLE `ring` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cost` int(10) unsigned,
  `material_id` int(10) unsigned NOT NULL,  
  `is_marriage` boolean DEFAULT FALSE,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `ring_operation` (
  `ring_id` int(10) unsigned NOT NULL,
  `operation_id` int(10) unsigned NOT NULL,
  `tool_id` int(10) unsigned,
  `is_complited` boolean DEFAULT FALSE, 
  PRIMARY KEY (`ring_id`, `operation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- DESC `ring`;
-- DESC `ring-operation`;

####################################################

-- bung
-- bung-operation
-- Таблица детали и связка между деталью и операциями.

DROP TABLE IF EXISTS `bung`; 
DROP TABLE IF EXISTS `bung_operation`;

CREATE TABLE `bung` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cost` int(10) unsigned,
  `material_id` int(10) unsigned NOT NULL,  
  `is_marriage` boolean DEFAULT FALSE,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `bung_operation` (
  `bung_id` int(10) unsigned NOT NULL,
  `operation_id` int(10) unsigned NOT NULL,
  `tool_id` int(10) unsigned,
  `is_complited` boolean DEFAULT FALSE, 
  PRIMARY KEY (`bung_id`, `operation_id`)  
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;





SHOW TABLES;





