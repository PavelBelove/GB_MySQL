# 2. Таблица users была неудачно спроектирована.
# Записи created_at и updated_at были заданы типом VARCHAR
# и в них долгое время помещались значения в формате "20.10.2017 8:10".
# Необходимо преобразовать поля к типу DATETIME, сохранив введеные ранее значения.
DESC users;

###### Подготовка
# В исходной базе столбцы уже в формате DATETIME, поэтому сначала перевожу в VARCHAR
ALTER TABLE users MODIFY COLUMN created_at VARCHAR(255);
ALTER TABLE users MODIFY COLUMN updated_at VARCHAR(255);
# Заполняю таблицу значениями в нужном формате
UPDATE users SET created_at = DATE_FORMAT(NOW(), '%d.%m.%Y %h:%i');
UPDATE users SET updated_at = DATE_FORMAT(NOW(), '%d.%m.%Y %h:%i');
#################

###### Начало миграции
# Добавляем вспомогательный столбец
ALTER TABLE users ADD COLUMN temp_date VARCHAR(255);

# Копируем туда данные created_at
UPDATE users SET temp_date = created_at;

# Заполняем created_at данными из temp_date
# UPDATE users SET created_at = CONVERT
UPDATE users SET created_at = FROM_UNIXTIME(UNIX_TIMESTAMP(CONCAT(
	substring(temp_date, 7, 4), '-',
	substring(temp_date, 1, 2), '-',
	substring(temp_date, 4, 2), ' ',
	substring(temp_date, 12, 5)
)));

# Переводим created_at в DATETIME
ALTER TABLE users MODIFY COLUMN created_at DATETIME;

# Теперь повторяем шаги для updated_at

# Копируем в temp_date данные updated_at
UPDATE users SET temp_date = updated_at;

# Заполняем updated_at данными из temp_date
# UPDATE users SET created_at = CONVERT
UPDATE users SET updated_at = FROM_UNIXTIME(UNIX_TIMESTAMP(CONCAT(
	substring(temp_date, 7, 4), '-',
	substring(temp_date, 1, 2), '-',
	substring(temp_date, 4, 2), ' ',
	substring(temp_date, 12, 5)
)));

# Переводим updated_at в DATETIME
ALTER TABLE users MODIFY COLUMN updated_at DATETIME;

# Удаляем вспомогательную колонку
ALTER TABLE users DROP COLUMN temp_date;

#################
