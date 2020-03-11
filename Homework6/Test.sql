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

 
-- 2. Подсчитать общее количество лайков, которые получили 10 самых молодых пользователей.
-- получим 10 id самых молодых пользователей.

SELECT * FROM profiles;
SELECT user_id, (SELECT 'количество лайков') AS 'likes' FROM profiles ORDER BY birthday DESC LIMIT 10;

-- теперь получим лайки этих пользователей.

SELECT id FROM likes WHERE user_id = 5;
SELECT COUNT(id) FROM likes WHERE user_id = 5 LIMIT 5;

-- вложим один запрос в другой
SELECT 
	user_id, 
	(SELECT COUNT(id) FROM likes WHERE user_id = profiles.user_id) 
	AS 'likes' 
	FROM profiles 
	ORDER BY birthday DESC 
	LIMIT 10
;

-- Мы получили 10 самых молодых пользователей и количества лайков, поставленных каждым из них. 
-- Осталось сосчитать сумму. Для этого нужен еще один запрос-обертка.
 
SELECT id, first_name FROM users GROUP BY first_name; 
COUNT(*) AS likes;
SELECT 
	(SELECT COUNT(id) FROM likes WHERE user_id = profiles.user_id) 
	AS 'likes' 
	FROM profiles 
	ORDER BY birthday DESC 
	LIMIT 10
;


DESC likes;
SELECT * FROM users LIMIT 5;
SELECT id FROM users ORDER BY created_at;


-- В таком виде оба запроса отрабатывают корректно. Но выводится не тот результат.
SELECT id FROM users ORDER BY created_at LIMIT 10
SELECT 
	COUNT(id) 
	FROM likes 
	WHERE user_id IN ( 
		SELECT id FROM users ORDER BY created_at 
		)
	LIMIT 10;

-- А в таком - логика правильная, но система выдает ошибку, невозможно использовать limit в этом контексте.
SELECT 
	COUNT(id) 
	FROM likes 
	WHERE user_id IN ( 
		SELECT id FROM users ORDER BY created_at LIMIT 10
		)
	;

-- нашел возможность делать выборку по двум таблицам.
SELECT 
	COUNT(likes.id) AS 'juniors_likes_summ'
	FROM likes, users
	WHERE user_id = users.id
	;
-- Но фильтр по возрасту, да еще с ограничениями пока не разобрался как наложить.
-- для решения создам временную таблицу и заполню ее user_id самых молодых. А потом посчитаю лайки для этой выборки.

CREATE TEMPORARY TABLE u_id AS (
 SELECT id FROM users ORDER BY created_at LIMIT 10
 );
SELECT 
	COUNT(id) 
	FROM likes 
	WHERE user_id IN ( 
		SELECT id
		FROM u_id 
		ORDER BY created_at
);
DROP TABLE IF EXISTS u_id;

-- SELECT * FROM u_id;



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


###############################



#####################################
-- 4. Найти 10 пользователей, которые проявляют наименьшую активность в использовании социальной сети.

-- Для реальной базы такие параметры как заполненность профиля и дата последнего посещения играли бы ключевую роль.
-- Но в учебной базе далеко не все юзеры имеют фото, а к дата обновления сгенерирована случайно,
-- Поэтому здесь допускаем, что все пользователи в выборке заходили на сайт в последнее время,
-- критериями сортировки выборки будут в первую очередь количество друзей - те, кто не генерирует контент наименее активны.
-- Вторым уровнем проверки будут лайки. Пользователи, которые не только не пишут посты но и наименее активно реагируют на уже существующий
-- контент точно подходят под определение "наименее активных"

-- Отсортируем пользователей по кол-ву лайков.
SELECT * FROM likes LIMIT 5;
SELECT * FROM users LIMIT 5;

SELECT 
	id,
	(SELECT 
		COUNT(id) 
		FROM likes 
		WHERE user_id = users.id) 
		AS 'total_likes'
	FROM users
	ORDER BY total_likes
	LIMIT 10; 

--  В принципе, получены 10 записей с нулем лайков. Таких полозователей больше, и не ясно, являются ли эти действительно, наименее активными.
-- Создадим аналогичный запрос, по кол-ву друзей.
-- Причем в данном контексте меня скорее интересуют те друзья, инициатором  общения с которыми является данный юзер.
-- Ведь в этом случае уровень "активности" гораздо выше - пользователь заводит друзей. Это не то же самое, что одобрить поступившие заявки.
-- поэтому меня интересуют friend_id соответствующего юзера, "в зачет" идут так же отправленные заявки в друзья.
SHOW TABLES;
SELECT * FROM friendship;

SELECT COUNT(friend_id) 
  FROM friendship 
  WHERE user_id = 23 AND status_id IN (
      SELECT 
      id 
      FROM friendship_statuses 
      WHERE name = 'Confirmed' OR name = 'Requested'
  );
   
 -- Теперь обернем получившийся запрос поиском по users
 -- данные сортируем по полям, от важных к менее важным. 
 

 
 ########################
 
 
SELECT 
	id,
	(SELECT 
		COUNT(id) 
		FROM likes 
		WHERE user_id = users.id) 
		AS 'total_likes',
	(SELECT COUNT(friend_id) 
  		FROM friendship 
  		WHERE user_id = users.id AND status_id IN (
      		SELECT 
     			id 
      			FROM friendship_statuses 
      			WHERE name = 'Confirmed' OR name = 'Requested'
  	)) 
  	AS 'friendship_orders'
	FROM users
	ORDER BY total_likes, friendship_orders
	LIMIT 10; 

-- Теперь в результатах поиска только пользователи с нулевыми лайками и не отправившие ни одной заявки в друзья.
-- По аналогии можно накидать выборок по очень большому количеству параметров.
-- Слабая сторона подхода в наличии четкой иерархии - сначала сортировка по лайкам, потом по друзьям
-- Зато порядок этой сортировки легко менять, переставляя имена полей после ORDER BY.

########################################################################################

-- Еще один подход, действующий более гибко, но требующий изменения структуры базы.
-- добавить глобально пользователям рейтинг активности, создав соответствующее поле в profiles
-- Тогда можно будет последовательно выполнить любое количество запросов, высчитывающими рейтинг по любой логике, например:
-- любой чих пользователя можно получить запросом, аналогичным предыдущим. Полученное значение умножить на коэффициент (насколько полученная цифра
-- важна для анализа активности). Обновить значение поля raiting в profiles, прибавив к уже существующему значению результаты выдачи.
-- (При каждом новом пересчете поле обнуляется) Настраивая коэффициенты и комбинируя необходимые простые запросы, можно будет
-- заполнить поле raiting чтобы учитывались сразу множество факторов, в любых комбинациях и каждый со своей "силой".
-- То, что каждый вид активности отрабатывается отдельным запросом, позволит на этом этапе отслеживать, например, накрутки, или активность ботов.

-- Вообще, я бы, пожалуй сделал рейтинг активности не только как техническую сущность, а дал пользователю возможность видеть его хотя бы в профайле. 
-- С возможностью дать публичный доступ добровольно. Убывающие цифры мотивируют проявлять большую активность. 
-- Как и возможность посоревноваться, выставить это "достижение" на показ. Но реализация этого требует минимум еще одного поля is_public 
-- принимающего TRUE И FALSE - хочет ли юзер чтобы его счетчик видели другие. 

-- Понятно, что при таком подходе решение задачи сведется к простейшему запросу:
SELECT * FROM profiles ORDER BY 'raiting' DESC LIMIT 10;

-- Перекраивать базу не буду. Но в целях тренировки, попробую реализовать этот подход с созданием промежуточной таблицы.
-- это лишняя сущность. Лучше было бы добавить колонки в профили.









