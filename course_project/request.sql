######################################################
-- Примеры запросов.

######################################################
-- Пользователь выбирает манок. Он определился с видом манка, моделью горна и мундштука. 
-- Выбирать он может только из моделей с флагом is_default = 1
-- Запрос готовит подборку остальных параметров (на примере тональной доски, tongue), совместимых с данным корпусом.

-- SHOW TABLES;
	
SELECT
	id,
	name,
	cost,
	material_id 
	FROM tongue
	WHERE id IN (
		SELECT 
			tongue_id 
			FROM model 
			WHERE is_default = 1 
			AND calltype_id = 102 
			AND mouthpiece_id = 106
			AND horn_id = 106)
; 

-- "правильных" на тестовых данных оказалось два варианта.
-- Основная масса запросов конструктора будут подобными.


######################################################

-- На сайте появился заказ от постоянного клиента customer.id=123.
-- Запрос готовит информацию о манках, которые уже были заказаны данным пользователем.
-- сформированные в заказ, но не оплаченные манки не истересуют. 
-- Для отслеживания этого order_status.id не должен быть 101 (не опачено).



SELECT 
	call_order.model_id,
	call_order.order_id,
	call_order.updated_at,
	orders.order_status_id
	FROM call_order
	LEFT JOIN orders ON orders.id = call_order.order_id
	LEFT JOIN order_status on order_status.id = orders.order_status_id
	WHERE orders.order_status_id != 101
	AND orders.customer_id = 123
	ORDER BY call_order.order_id DESC, call_order.updated_at DESC
;

-- На тестовых данных видно, что этот покупатель обращался дважды, заказал уже 3 манка.
-- INSERT INTO `customer` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `phone`, `address`, `postindex`, `created_at`, `updated_at`) 
-- 	VALUES (99, 'Alphonso', 'Bins', 'a', 'ninahettinger@example.net', '5324.360.9727', '07948 Winfield Via Apt. 591\nLuellachester, KY 49959-7135', '90201-2682', '2018-05-08 01:23:32', '1980-04-17 14:49:34');
-- А только что добавленный, с id 99 обращается впервые.

######################################################

-- Станок настроен на работу в координатной сетке  coordinate_num = 4
-- Это означает, что он готов делать мундштуки, для разных типов манков. Можно искать по всем таблицам деталей подряд, но это крайне неэффективно.
-- Логика выбора возможных деталей будет довольно сложная, поэтому вынесена на уровень приложения. 
-- Запрос должен собрать все мундштуки из заказов "в работе", сгруппировать по типам УП, по цветам. 

-- SHOW TABLES;


SELECT 
	mouthpiece_id,
	material_id,
	operation_id,
	tool_id,
	g_code_link
	FROM mouthpiece_operation
	LEFT JOIN mouthpiece ON mouthpiece_operation.mouthpiece_id = mouthpiece.id
	LEFT JOIN operation ON mouthpiece_operation.operation_id = operation.id
	LEFT JOIN operation_type ON operation.operation_type_id = operation_type.id
	WHERE mouthpiece_operation.is_complited = FALSE
	AND coordinate_num = 4
	ORDER BY operation_id
;

-- В этой части базы фейковые данные совсем мало напоминают правду. 
-- Запрос вполне можно было бы "докрутить" дополнительными ограничениями и сортировками, как минимум, нужно еще фильтровать по tool_id
-- которых в реальных данных будет 1-2-3 варианта на каждую координатную сетку.
-- но в таком виде база нашла всего 3 мундштука на изготовление, больше особо фильтровать нечего.





