-- 3. Определить кто больше поставил лайков (всего) - мужчины или женщины?

###################################################
##UPDATE
###################################################

-- Посчитаем лайки  пользователей по отдельности.


SELECT 
	COUNT(likes.id),
	profiles.user_id 
	FROM likes, profiles 
	WHERE likes.user_id = profiles.user_id 
	GROUP BY profiles.user_id 
	LIMIT 1
;

-- Еще понадобится графа пол, подтянем ее из профилей.

SELECT 
	COUNT(likes.id) AS user_likes, 
	profiles.user_id, 
	profiles.gender 
	FROM likes, profiles 
	WHERE likes.user_id = profiles.user_id 
	GROUP BY profiles.user_id, profiles.gender
	LIMIT 5
	;

-- Теперь в результате выдачи все необходимые для подсчета данные.
-- Сгруппируем по полу и посчитаем результат.

SELECT 
	gender,
	SUM(user_likes) AS total_likes
	FROM (
		SELECT 
			COUNT(likes.id) AS user_likes, 
			profiles.user_id, 
			profiles.gender 
			FROM likes, profiles 
			WHERE likes.user_id = profiles.user_id 
			GROUP BY profiles.user_id, profiles.gender) 
			AS al_likes
	GROUP BY gender
	;

-- осталось отсортировать по total_likes и оставить в результатах только 1 строку.

SELECT 
	* 
	FROM (
		SELECT 
			gender AS winners,
			SUM(user_likes) AS total_likes
			FROM (
				SELECT 
					COUNT(likes.id) AS user_likes, 
					profiles.user_id, 
					profiles.gender 
					FROM likes, profiles 
					WHERE likes.user_id = profiles.user_id 
					GROUP BY profiles.user_id, profiles.gender) 
					AS al_likes
					GROUP BY gender) 
			AS res_table 
	ORDER BY total_likes DESC
	LIMIT 1
;



-- 
	


SELECT result_table.gender, SUM(result_table.likes_count) as summ
FROM (
	SELECT profiles.user_id, profiles.gender, (
		SELECT COUNT(*)
		FROM likes l
		WHERE l.user_id = profiles.user_id
	) as likes_count
	FROM profiles
) as result_table
GROUP BY gender
ORDER BY summ DESC
LIMIT 2;

###################################################
##END
###################################################


-- 
SELECT * FROM profiles;
SELECT * FROM likes;
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

-- такой подход хорош, если периодически приходится получать количества лайков той или другой категории. Если цель сразу сводная таблица
##################################################################################################

-- то лучше пройтись одним запросом, сгруппировав по гендеру.


SELECT 	
	profiles.gender,
	COUNT(likes.id)
	FROM likes, profiles
	GROUP BY profiles.gender
	;


####################################################################################################
