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

 

COUNT(*) AS likes;
SELECT 
	SUM((SELECT COUNT(id) FROM likes WHERE user_id = profiles.user_id)) 
	AS 'likes' 
	FROM profiles 
	ORDER BY birthday DESC 
	LIMIT 10
;


DESC likes;
SELECT * FROM profiles LIMIT 5;
SELECT * FROM likes LIMIT 5;
SELECT user_id FROM profiles ORDER BY birthday;


-- В таком виде оба запроса отрабатывают корректно. Но выводится не тот результат.
SELECT user_id FROM profiles ORDER BY birthday LIMIT 10;

SELECT 
	COUNT(id) 
	FROM likes 
	WHERE user_id IN ( 
		SELECT user_id FROM profiles ORDER BY birthday 
		)
	LIMIT 10;

-- А в таком - логика правильная, но система выдает ошибку, невозможно использовать limit в этом контексте.
SELECT 
	COUNT(id) 
	FROM likes 
	WHERE user_id IN ( 
		SSELECT user_id FROM profiles ORDER BY birthday  LIMIT 10
		)
	;

-- нашел возможность делать выборку по двум таблицам.
SELECT 
	COUNT(likes.id) AS 'juniors_likes_summ'
	FROM likes, profiles
	WHERE user_id = profiles.users_id
	;
-- Но фильтр по возрасту, да еще с ограничениями пока не разобрался как наложить.
##########################################################################################

-- для решения создам временную таблицу и заполню ее user_id самых молодых. А потом посчитаю лайки для этой выборки.

CREATE TEMPORARY TABLE u_id AS (
 SELECT id FROM users ORDER BY created_at LIMIT 10
 );
SELECT 
	COUNT(id) 
	AS 'teenagers_likes'
	FROM likes 
	WHERE user_id IN ( 
		SELECT id
		FROM u_id 
		ORDER BY created_at
);
DROP TABLE IF EXISTS u_id; 
###########################################################################################
