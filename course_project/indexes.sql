###################################################
-- Пока создам индексы только для customer, для поиска по полям email, телефон и составной индекс для ФИО
-- они определенно потребуются,СМС с незнакомого номера смс типа "измените мой заказ" приходят регулярно.
-- что до остальной базы - на данном этапе трудно сориентироваться, где еще они нужны.
-- Где явно требовались - созданы уже ключи следования.

-- DESC customer; 

CREATE UNIQUE INDEX customer_email_idx ON customer(email);
CREATE UNIQUE INDEX customer_phone_idx ON customer(phone);

CREATE INDEX customer__last_name__first_name__middle_name_idx ON customer(last_name, first_name, middle_name);

###################################################