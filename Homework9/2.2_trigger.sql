

DROP TRIGGER IF EXISTS check_id;
DELIMITER //
CREATE TRIGGER check_id BEFORE INSERT ON products
FOR EACH ROW
BEGIN
	DECLARE prod_id, cat_id INT;
	SELECT id INTO prod_id FROM products ORDER BY id LIMIT 1; -- получаем ID и записываем в prod_id по порядку старые значения
	SELECT catalog_id INTO cat_id FROM products ORDER BY id LIMIT 1; -- и старые значения каталога
	IF (COALESCE(NEW.name, NEW.description) IS NULL) THEN  -- Проверяем сначала name затем description
		SET NEW.id = prod_id; 
		SET NEW.catalog_id = cat_id; -- И, если везде null, явно возвращаем id и catalog_id прежнее значение.
	END IF;
END//
DELIMITER ;