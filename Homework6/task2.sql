-- 2. Подсчитать общее количество лайков, которые получили 10 самых молодых пользователей.
-- получим 10 id самых молодых пользователей.


###################################################
##UPDATE
###################################################

-- не верно прочитал условие задачи. Нужно получить не количество лайков, поставленных пользователями, а
-- количество, полученное ими как сущностями.
-- Опять же, формулировка не уточняет, идет ли речь только за лайки с  target_type_id = 2 (в нашей базе можно лайкать непосредственно пользователя)
-- решу этот вариант. 

SHOW TABLES;
SELECT * FROM profiles LIMIT 5;
SELECT * FROM users LIMIT 5;
SELECT * FROM likes LIMIT 5;
SELECT * FROM target_types LIMIT 5;

-- Начнем с сопоставления лайков с сущностью пользователя по его ID.

SELECT 
	likes.id,
	likes.target_id,
	profiles.user_id	
	FROM likes, profiles  
	WHERE likes.target_id = profiles.user_id
;

-- В полученной таблице только те лайки, которые поставлены пользователям. А количество строк равняется количеству лайков. 
-- Сначала посчитаем лайки каждого, отсортируем по возрасту, возьмем 10 результатов.
SELECT profiles.user_id, (
		SELECT COUNT(*)
		FROM likes  
		WHERE likes.target_id = profiles.user_id
	) as likes_count
	FROM profiles  
	ORDER BY profiles.birthday DESC
	LIMIT 10
;

-- Теперь сумируем столбец likes_count из полученной таблицы.

SELECT SUM(likes_count)
FROM (
	SELECT profiles.user_id, (
		SELECT COUNT(*)
		FROM likes  
		WHERE likes.target_id = profiles.user_id
	) as likes_count
	FROM profiles  
	ORDER BY profiles.birthday DESC
	LIMIT 10
) AS stuf;

-- Но есть и другой подход, более общий. Кроме "профиля" у самых молодых пользователей могут быть и посты, и медиафайлы. 
-- И если кто-то "облаял" мое видео, то лайк как бы тоже "мой". Поэтому для решения логично пройти по всей таблице лайков. 
-- Подразумеваю, что имелось ввиду первое решение, как более простое. Но для реализации второго нужно отдельно пройтись по 
-- пользователям, найти все их посты, все медиафайлы. Посчитать все лайки по результатам выдачи аналогичными запросами, а результат сумировать.
-- Опять же, если такой запрос типовой, и информация о "суммарном количистве лайков" например, обновляется в режиме реального времени,
-- Задачу стоит решить на уровне изменения таблиц. Добавив в таблицу likes столбец recipient - id юзера, которому принадлежит контент, 
-- на который поставлен лайк. Если эти данные прихранить, подобные запросы будут очень быстро отрабатывать, и не грузить базу. 
-- Тут смотреть, что "дороже" - каждый раз считать, или все время хранить.

-- Это может здорово пригодиться например, при реализации алгоритма "дележки денег за рекламу и платную подписку между блоггерами". 
-- Для работы алгоритмов выдачи - в зависимости от % лайков можно оценить, насколько качественный контент генерирует тот или иной пользователь.
-- В конце концов, эту информацию можно самим пользователям продать. Например, лайки видят все, а личности тех, кто влепил диз - только по VIP-подписке.

-- В общем, если такая необходимость (посчитать лайки) возникла уже на этапе разработки, нужно оценить, как часто это придется делать
-- и на основании этого принимать решение, вычислять данные на лету, или сохранять на уровне структуры, или вычислять периодически и хранить во временной таблице.


###################################################
##END
###################################################

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
