-- 3. Определить кто больше поставил лайков (всего) - мужчины или женщины?

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
