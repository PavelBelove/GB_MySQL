DROP FUNCTION IF EXISTS hello;
DELIMITER //
CREATE FUNCTION hello ()
RETURNS TEXT DETERMINISTIC
BEGIN
	IF HOUR(NOW()) BETWEEN 6 AND 11 THEN
		RETURN 'Доброе утро';
	ELSEIF HOUR(NOW()) BETWEEN 12 AND 17 THEN
		RETURN 'Добрый день';
	ELSEIF HOUR(NOW()) BETWEEN 18 AND 23 THEN
		RETURN 'Добрый вечер';
	ELSE
		RETURN 'Доброй ночи'; -- Конструкция HOUR(NOW()) не может вывести некорректное значение, поэтому else
	END IF;
END//
DELIMITER ;