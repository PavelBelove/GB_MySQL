-- Готовим базу данных, создав и заполнив таблицы лайков.
SHOW TABLES;
DROP TABLE IF EXISTS likes;

CREATE TABLE likes (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_id INT UNSIGNED NOT NULL,
  target_id INT UNSIGNED NOT NULL,
  target_type_id INT UNSIGNED NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Таблица типов лайков
DROP TABLE IF EXISTS target_types;
CREATE TABLE target_types (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL UNIQUE,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO target_types (name) VALUES 
  ('messages'),
  ('users'),
  ('media'),
  ('posts');

-- Заполняем лайки
INSERT INTO likes 
  SELECT 
    id, 
    FLOOR(1 + (RAND() * 100)), 
    FLOOR(1 + (RAND() * 100)),
    FLOOR(1 + (RAND() * 4)),
    CURRENT_TIMESTAMP 
  FROM messages;

-- Проверим
SELECT * FROM likes LIMIT 10;

-- Создадим запросы ради практики, выдающий тип кконтента по ID лайка
SELECT name FROM target_types WHERE id = (SELECT target_type_id FROM likes WHERE id = 2);

-- Теперь подтянем имя пользователя из users по id лайка
SELECT * FROM users;
SELECT user_id FROM likes;
SELECT name FROM users WHERE id = (SELECT user_id FROM likes WHERE id = 20);

-- В базе несоответствие. Существуют лайки с user_id до сотни, в то время как пользователей всего в моей базе 50
-- Просто удалю и пересоздам таблицу, задав рандомные значения user_id до 50
INSERT INTO likes 
  SELECT 
    id, 
    FLOOR(1 + (RAND() * 50)), 
    FLOOR(1 + (RAND() * 100)),
    FLOOR(1 + (RAND() * 4)),
    CURRENT_TIMESTAMP 
  FROM messages;
 
 -- Теперь все работает. 
 -- Можно скомбинировать, и найти, например, все лайки пользователя, сгруппировать по типу контента
 -- и определить, какой именно контент предпочитает пользователь.
 

 
SELECT 	
	COUNT(target_type_id) FROM likes WHERE user_id = 1
		GROUP BY target_type_id;
 
