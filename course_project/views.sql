################################
-- Свобода выбора пользователя в его же интересах ограничена моделями с флагом is_default
-- создам представление, к которому могли бы обращаться пользователи, исключив все нестандартные модели
-- И оставив только поля необходимые для выбора деталей.

###############################

CREATE VIEW default_model
	AS SELECT
		id,
		calltype_id,
		mouthpiece_id,
		ring_id,
		horn_id,
		bone_id,
		bung_id,
		tongue_id
	FROM model 
	WHERE is_default = 1
;

-- SELECT * FROM default_model LIMIT 10;

############################################################################
-- по логике базы, покапатель формирует заказ, а уже в заказе лежат манки.
-- но иногда, например для аналитики, важно видеть напрямую, какие манки, когда и какими пользователями заказывались.
-- Создам представление, объединяющее эти данные.


CREATE VIEW customer_model
	AS SELECT 
		customer.id AS id,
		first_name,
		last_name,
		middle_name,
		email,
		call_order.model_id AS model_id,
		call_order.order_id,
		orders.updated_at 
	FROM customer
	LEFT JOIN orders ON customer.id = orders.customer_id
	LEFT JOIN call_order ON call_order.order_id = orders.id
	ORDER BY customer.id, call_order.order_id
;


-- SELECT * FROM customer_model LIMIT 10;

