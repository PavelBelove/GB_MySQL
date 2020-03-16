##############################################################################################
-- 1. Добавить необходимые внешние ключи для всех таблиц базы данных
-- vk (приложить команды).

-- По созданным связям создать ER диаграмму, используя Dbeaver
-- (приложить графический файл к ДЗ).
##############################################################################################

SHOW TABLES;
-- DESC communities;
-- DESC communities_users;

ALTER TABLE communities_users
	ADD CONSTRAINT communities_users__user_id_fk -- не уверен, что это допустимое имя, но с одним подчеркиванием сам в названиях путался
		FOREIGN KEY (user_id) REFERENCES users (id);	
	
#######################################################
-- SHOW TABLES;
-- DESC communities;
-- DESC communities_users;

ALTER TABLE communities_users
	ADD CONSTRAINT communities_users__community_id_fk
		FOREIGN KEY (community_id) REFERENCES communities (id);	
	
#######################################################
	
-- SHOW TABLES;
-- DESC profiles;
-- DESC users;

ALTER TABLE profiles	
	ADD CONSTRAINT profiles__user_id_fk
		FOREIGN KEY (user_id) REFERENCES users (id);
	
#######################################################
-- SHOW TABLES;
-- DESC profiles;
-- DESC media;
-- Типы не совпадают. Меняем photo_id на INT UNSIGNED
	
ALTER TABLE profiles
	MODIFY COLUMN photo_id INT UNSIGNED;

ALTER TABLE profiles
	ADD CONSTRAINT profiles__photo_id_fk
		FOREIGN KEY (photo_id) REFERENCES media (id);
	
#######################################################	
-- В принципе, можно не проверять таблицы, если база не ругнулась, ничего менять не нужно.

ALTER TABLE messages
	ADD CONSTRAINT messages__from_user_id_fk
		FOREIGN KEY (from_user_id) REFERENCES users (id);
	
#######################################################
	
ALTER TABLE messages	
	ADD CONSTRAINT messages__to_user_id_fk
		FOREIGN KEY (to_user_id) REFERENCES users (id);
	
#######################################################
-- Запросы, меняющие одну и ту же таблицу тоже можно объединить.

ALTER TABLE media
	ADD CONSTRAINT media__user_id_fk
		FOREIGN KEY (user_id) REFERENCES users (id),
	ADD CONSTRAINT media__media_type_id_fk
		FOREIGN KEY (media_type_id) REFERENCES media_types (id);

	
#######################################################
	ALTER TABLE likes
	ADD CONSTRAINT likes__user_id_fk
		FOREIGN KEY (user_id) REFERENCES users (id),
	ADD CONSTRAINT likes__target_type_id_fk
		FOREIGN KEY (target_type_id) REFERENCES target_types (id);

#######################################################	
	
ALTER TABLE friendship
	ADD CONSTRAINT friendship__user_id_fk
		FOREIGN KEY (user_id) REFERENCES users (id),
	ADD CONSTRAINT friendship__friend_id_fk
		FOREIGN KEY (friend_id) REFERENCES users (id),
	ADD CONSTRAINT friendship__status_id_fk
		FOREIGN KEY (status_id) REFERENCES friendship_statuses (id);

#######################################################	