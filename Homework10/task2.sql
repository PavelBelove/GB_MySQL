###################################################################
-- 2. Задание на оконные функции
-- Построить запрос, который будет выводить следующие столбцы:

	-- имя группы
	-- среднее количество пользователей в группах
	-- самый молодой пользователь в группе
	-- самый пожилой пользователь в группе
	-- общее количество пользователей в группе
	-- всего пользователей в системе
	-- отношение в процентах (общее количество пользователей в группе /
	-- всего пользователей в системе) * 100
###################################################################

USE GB_VK;
SHOW TABLES;
DESC users;
DESC communities;
DESC profiles;
DESC communities_users;

-- Данные, необходимые для решения разбросаны по трем таблицам.
-- Четвертая - communities_users связывает их между собой (айди в профилях и пользователях одинаковые). 
-- Составлю запрос, собирающий все необходимые данные в одну таблицу. 
-- Начну с communities_users, из нее можно напрямую стучаться во все остальные таблицы.

SELECT * FROM communities_users
	LEFT JOIN communities ON communities_users.community_id = communities.id
	LEFT JOIN users ON users.id = communities_users.user_id
	LEFT JOIN profiles ON profiles.user_id = users.id
    ORDER BY communities.id 
    LIMIT 10;

###################################################################

-- Теперь внутри получившейся таблицы можно применять оконные функции.
-- В качестве окна выступают группы communities.id 

SELECT DISTINCT communities.id, communities.name AS group_name,
	MIN(profiles.birthday) OVER w AS oldest_age,
	MAX(profiles.birthday) OVER w AS youngest_age,
	@count_in_group:= COUNT(communities_users.user_id) OVER w AS count_in_group,
	@count_total:= COUNT(communities_users.user_id) OVER () AS count_total
	FROM communities_users
	LEFT JOIN communities ON communities_users.community_id = communities.id
	LEFT JOIN users ON users.id = communities_users.user_id
	LEFT JOIN profiles ON profiles.user_id = users.id
	WINDOW w AS (PARTITION BY communities.id)
;

###################################################################
-- Чтобы рассчитать среднее количество и процентное отношение, уже нужны данные
-- рассчитанные в предыдущем запросе. Поэтому сохранил результаты в переменные;
###################################################################

SELECT DISTINCT communities.id, communities.name AS group_name,
	MIN(profiles.birthday) OVER w AS oldest_age,
	MAX(profiles.birthday) OVER w AS youngest_age,
	@count_in_group:= COUNT(communities_users.user_id) OVER w AS count_in_group,
	@count_total:= COUNT(communities_users.user_id) OVER () AS count_total,
    @count_in_group / @count_total * 100 AS procents, 
    AVG(@count_in_group) OVER w AS average_users
	FROM communities_users
	LEFT JOIN communities ON communities_users.community_id = communities.id
	LEFT JOIN users ON users.id = communities_users.user_id
	LEFT JOIN profiles ON profiles.user_id = users.id
	WINDOW w AS (PARTITION BY communities.id)
;
###################################################################











