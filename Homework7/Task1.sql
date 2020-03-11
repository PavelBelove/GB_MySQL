##########################################################################
-- 1 Составьте список пользователей users, которые осуществили хотя бы один заказ orders в интернет магазине.
##########################################################################


SELECT * FROM users;


-- заглянем в orders
SELECT * FROM orders;


-- Пусто. Добавим несколько запросов. Так же сделаю несколько "дублей" - разных заказов от одного польдователя.


INSERT INTO orders (user_id, created_at, updated_at) VALUES (2, NOW(), NOW());
INSERT INTO orders (user_id, created_at, updated_at) VALUES (3, NOW(), NOW());
INSERT INTO orders (user_id, created_at, updated_at) VALUES (6, NOW(), NOW());

-- Найдем пользователей, id которых упоминается в orders.user_id

SELECT
	users.id,
	name,
	orders.id AS order_id,
	orders.created_at 
	FROM users
	JOIN orders ON users.id = orders.user_id
	WHERE orders.id IS NOT NULL
;

-- Как и ожидалось, join отрабатывает по каждой комбинации. Таким образом, при двойных заказах получаются дубли id клиента.
-- Сгруппируем по id

SELECT
	users.id,
	name
	FROM users
	JOIN orders ON users.id = orders.user_id
	WHERE orders.id IS NOT NULL
	GROUP BY id
;

-- Пришлось убрать пару столбцов - Mysql не знал, как группировать. Задача решена, но стоит довести запрос до удобочитаемого результата.
-- Во-первых, посчитать количество заказов, совершенных этим пользователем.
-- во-вторых, подтянуть дату последнего заказа, чтобы знать, как давно этот пользователь обращался.

######################################################################################################################

SELECT
	users.id,
	name,
	COUNT(orders.id) AS counted_orders,
	MAX(orders.created_at) AS last_order
	FROM users
	JOIN orders ON users.id = orders.user_id
	WHERE orders.id IS NOT NULL
	GROUP BY id
;
	
######################################################################################################################





