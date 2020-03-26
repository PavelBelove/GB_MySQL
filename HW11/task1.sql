#####################################################################################
-- Создайте таблицу logs типа Archive. Пусть при каждом создании записи в таблицах users, catalogs и products в таблицу logs 
-- помещается время и дата создания записи, название таблицы, идентификатор первичного ключа и содержимое поля name.

#####################################################################################

-- Таблица logs будет "тянуть" данные из разных таблиц в одну колонку. Сначала изучим строение users, catalogs и products
-- И убедимся, что колонки logs будут заполняться данными одного типа, иначе ничего не заработает.
USE shop;
DESC users;
DESC catalogs;
DESC products;

-- Проблем нет, корректировать типы не требуется.

#####################################################################################
-- Создадим таблицу, указав движок. 

DROP TABLE IF EXISTS logs;
CREATE TABLE logs (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  item_id INT UNSIGNED NOT NULL,
  table_name VARCHAR(255),
  name VARCHAR(255),
  created_at datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=ARCHIVE;

SELECT * FROM logs;

#####################################################################################

-- Создадим триггер на создание записи в users

DROP TRIGGER IF EXISTS users_logs;
DELIMITER //
CREATE TRIGGER users_logs AFTER INSERT ON users
FOR EACH ROW
BEGIN
	DECLARE id INT UNSIGNED;
	SET id = NEW.id;
	INSERT INTO logs (item_id, table_name, name) VALUES (id, 'users', NEW.name);
END//
DELIMITER ;

INSERT INTO users (name, birthday_at) VALUES ('New_user', '2000-01-01');

SELECT * FROM logs;

#####################################################################################
-- Аналогично, два других триггера.

DROP TRIGGER IF EXISTS catalogs_logs;
DELIMITER //
CREATE TRIGGER catalogs_logs AFTER INSERT ON catalogs
FOR EACH ROW
BEGIN
	DECLARE id INT UNSIGNED;
	SET id = NEW.id;
	INSERT INTO logs (item_id, table_name, name) VALUES (id, 'catalogs', NEW.name);
END//
DELIMITER ;

DROP TRIGGER IF EXISTS products_logs;
DELIMITER //
CREATE TRIGGER products_logs AFTER INSERT ON products
FOR EACH ROW
BEGIN
	DECLARE id INT UNSIGNED;
	SET id = NEW.id;
	INSERT INTO logs (item_id, table_name, name) VALUES (id, 'products', NEW.name);
END//
DELIMITER ;

-- В условиях задачи речь только о триггерах на создание записи, но в реальности я бы добавлял строки в logs и при изменении, и при удалении записей. 
-- А для того, чтобы их идентифицировать, завел колонку типа действия в таблице logs. Поскольку таблица архивная, дополнительную таблицу-справочник делать не стоит.
-- В таком же виде данные явно не полны - пользователи могут менять профайл, уходить или быть забанены. 
-- В первом случае будут не актуальные записи в логах, во втором - вообще появятся ссылки "в пустоту"

-- Пример подобного триггера (Без проверки, т.к. надо править структуру logs):

DROP TRIGGER IF EXISTS users_logs_del;
DELIMITER //
CREATE TRIGGER users_logs BEFORE DELETE ON users
FOR EACH ROW
BEGIN
	DECLARE id INT UNSIGNED;
	SET id = OLD.id;
	INSERT INTO logs (item_id, table_name, name, trig_type) VALUES (id, 'users', OLD.name, 'Del');
END//
DELIMITER ;

-- И еще 5 триггеров по аналогии, чтобы в логах отражались реальные изменения базы.


