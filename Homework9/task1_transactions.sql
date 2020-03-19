
################################################################
-- Транзакции. Задание 1.
-- В базе данных shop и sample присутствуют одни и те же таблицы, учебной базы данных.
-- Переместите запись id = 1 из таблицы shop.users в таблицу sample.users. Используйте транзакции.
################################################################
-- Сначала создадим  временную таблицу users1, просто подправив команду для создания users

DROP TABLE IF EXISTS users1;
CREATE TEMPORARY TABLE users1 (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Имя покупателя',
  birthday_at DATE COMMENT 'Дата рождения',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Покупатели';

INSERT INTO users1 (name, birthday_at) VALUES
  ('Иван', '1998-01-12'),
  ('Мария', '1992-08-29');

-- Эта таблица находится в базе GB_SHOP, что не помешает составить запрос, явно указывая базы данных, а потом 
-- в получившемся запросе сменить  GB_SHOP.users1 на sample.users

#################################################################
SELECT * FROM users;
SELECT * FROM users1;

-- Получим требуемую строку из users явно указав базу данных.

SELECT * FROM GB_SHOP.users AS usr WHERE usr.id = 1;

-- Вставим в созданную таблицу полученную строку
INSERT INTO GB_SHOP.users1 SELECT * FROM GB_SHOP.users AS usr WHERE usr.id = 1;

-- Вероятно, пользователь с ID=1 уже был. Чтобы его не потерять, сдвинем ID за пределы диапазона.
UPDATE  GB_SHOP.users1 SET id = 100 WHERE id = 1; 
-- Но и команда на удаление потребуется.
DELETE FROM GB_SHOP.users1  WHERE id = 1;


-- Теперь подкорректирую запросы, и оберну их в транзакцию.
-- В условии не сказано, что делать с пользователем с id 1 в базе samples, поэтому сохраним его с другим ID

START TRANSACTION;
  UPDATE GB_SHOP.users1 SET id = 100 WHERE id = 1; 
  INSERT INTO GB_SHOP.users1 SELECT * FROM GB_SHOP.users AS usr WHERE usr.id = 1;
  DELETE FROM GB_SHOP.users  WHERE id = 1; -- удалить пользователя с прежнего места.
COMMIT;

################################################################
################################################################

-- Заменим GB_SHOP.users1 на sample.users, чтобы получить финальный запрос.

START TRANSACTION;
  UPDATE sample.users SET id = 100 WHERE id = 1; 
  INSERT INTO sample.users SELECT * 
 	FROM GB_SHOP.users AS usr WHERE usr.id = 1;
  DELETE FROM GB_SHOP.users  WHERE id = 1; -- удалить пользователя с прежнего места.
COMMIT;
################################################################
################################################################
-- Транзакции. Задание 2.
-- Создайте представление, которое выводит название name товарной позиции из
-- таблицы products и соответствующее название каталога name из таблицы catalogs.

################################################################
-- Сначала создадим запрос, возвращающий нужные данные
SELECT products.name AS p_name, catalogs.name AS c_name
	FROM products
	LEFT JOIN catalogs ON catalogs.id = products.catalog_id;

-- создадим представление

CREATE VIEW prod_cat (product_name, catalog_name) AS
	SELECT products.name AS p_name, catalogs.name AS c_name
		FROM products
		LEFT JOIN catalogs ON catalogs.id = products.catalog_id;
	

SELECT * FROM prod_cat;

DROP VIEW prod_cat;

