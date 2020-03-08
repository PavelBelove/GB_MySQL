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
-- Просто удалю и пересоздам таблицу, задав рандомные значения user_id до 24
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

 
-- 2. Подсчитать общее количество лайков, которые получили 10 самых молодых пользователей.
-- получим 10 id самых молодых пользователей.

SELECT * FROM users;
SELECT id, name, birthday_at FROM users ORDER BY birthday_at LIMIT 10;

-- теперь получим лайки этих пользователей.

SELECT * FROM likes LIMIT 5;
DESC likes;
SELECT * FROM users LIMIT 5;
SELECT id FROM users ORDER BY birthday_at LIMIT 10;


-- Не понял почему не работает, а при отдельном выполнении частей запроса отрабатывает корректно.
SELECT 
	COUNT(id) 
	FROM likes 
	WHERE user_id IN ( 5
		-- SELECT id FROM users ORDER BY birthday_at LIMIT 10
		);

-- нашел возможность делать выборку по двум таблицам.
SELECT 
	COUNT(likes.id) AS 'juniors_likes_summ'
	FROM likes, users
	WHERE user_id = users.id
	;
-- Но фильтр по возрасту, да еще с ограничениями пока не разобрался как наложить.

####################################################
-- 3. Определить кто больше поставил лайков (всего) - мужчины или женщины?

-- 
SELECT * FROM profiles;
SELECT * FROM users ORDER BY first_name;

-- пола всего два, и больше (надеюсь) быть не может
-- поэтому можно посчитать количество лайков, поставленных мужчинами, и с женщинами отдельными аналогичными запросами.
SELECT 	
	'Mans likes',
	COUNT(likes.id)
	FROM likes, profiles
	WHERE likes.user_id IN (
		SELECT 
			id 
			FROM users
			WHERE profiles.gender  = 'm'  
);

-- Теперь объединим с аналогичным запросом для женского пола

SELECT 	
	'Mans likes',
	COUNT(likes.id)
	FROM likes, profiles
	WHERE likes.user_id IN (
		SELECT 
			id 
			FROM users
			WHERE profiles.gender  = 'm'  
)UNION 
SELECT 	
	'Whomans likes',
	COUNT(likes.id)
	FROM likes, profiles
	WHERE likes.user_id IN (
		SELECT 
			id 
			FROM users
			WHERE profiles.gender  = 'f'  
);








