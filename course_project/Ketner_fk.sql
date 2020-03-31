-- Ключи следования.

#######################################################

-- SHOW TABLES;
-- DESC bone;
-- DESC bone_operation;
-- DESC operation;
-- DESC tool;
		
ALTER TABLE bone_operation 
	ADD CONSTRAINT bone_operation__bone_id_fk
		FOREIGN KEY (bone_id) REFERENCES bone (id);	
	
ALTER TABLE bone_operation 
	ADD CONSTRAINT bone_operation__operation_id_fk
		FOREIGN KEY (operation_id) REFERENCES operation (id);
	
ALTER TABLE bone_operation 
	ADD CONSTRAINT bone_operation__tool_id_fk
		FOREIGN KEY (tool_id) REFERENCES tool (id);	
	
#######################################################
		
ALTER TABLE mouthpiece_operation 
	ADD CONSTRAINT mouthpiece_operation__mouthpiece_id_fk
		FOREIGN KEY (mouthpiece_id) REFERENCES mouthpiece (id);	
	
ALTER TABLE mouthpiece_operation 
	ADD CONSTRAINT mouthpiece_operation__operation_id_fk
		FOREIGN KEY (operation_id) REFERENCES operation (id);

ALTER TABLE mouthpiece_operation 
	ADD CONSTRAINT mouthpiece_operation__tool_id_fk
		FOREIGN KEY (tool_id) REFERENCES tool (id);
	
#######################################################
		
ALTER TABLE bung_operation 
	ADD CONSTRAINT bung_operation__bung_id_fk
		FOREIGN KEY (bung_id) REFERENCES bung (id);	
	
ALTER TABLE bung_operation 
	ADD CONSTRAINT bung_operation__operation_id_fk
		FOREIGN KEY (operation_id) REFERENCES operation (id);

ALTER TABLE bung_operation 
	ADD CONSTRAINT bung_operation__tool_id_fk
		FOREIGN KEY (tool_id) REFERENCES tool (id);
	
#######################################################
		
ALTER TABLE ring_operation 
	ADD CONSTRAINT ring_operation__ring_id_fk
		FOREIGN KEY (ring_id) REFERENCES ring (id);	
	
ALTER TABLE ring_operation 
	ADD CONSTRAINT ring_operation__operation_id_fk
		FOREIGN KEY (operation_id) REFERENCES operation (id);

ALTER TABLE ring_operation 
	ADD CONSTRAINT ring_operation__tool_id_fk
		FOREIGN KEY (tool_id) REFERENCES tool (id);
	
#######################################################

		
ALTER TABLE tongue_operation 
	ADD CONSTRAINT tongue_operation__tongue_id_fk
		FOREIGN KEY (tongue_id) REFERENCES tongue (id);	
	
ALTER TABLE tongue_operation 
	ADD CONSTRAINT tongue_operation__operation_id_fk
		FOREIGN KEY (operation_id) REFERENCES operation (id);

ALTER TABLE tongue_operation 
	ADD CONSTRAINT tongue_operation__tool_id_fk
		FOREIGN KEY (tool_id) REFERENCES tool (id);
#######################################################

#######################################################
	
-- SHOW TABLES;
-- DESC bone;
-- DESC material;
		
ALTER TABLE bone 
	ADD CONSTRAINT bone__material_id_fk
		FOREIGN KEY (material_id) REFERENCES material (id);	
	
#######################################################
ALTER TABLE bung 
	ADD CONSTRAINT bung__material_id_fk
		FOREIGN KEY (material_id) REFERENCES material (id);	
	
#######################################################

ALTER TABLE tongue 
	ADD CONSTRAINT tongue__material_id_fk
		FOREIGN KEY (material_id) REFERENCES material (id);	
	
#######################################################
ALTER TABLE horn 
	ADD CONSTRAINT horn__material_id_fk
		FOREIGN KEY (material_id) REFERENCES material (id);	
	
#######################################################
ALTER TABLE mouthpiece 
	ADD CONSTRAINT mouthpiece__material_id_fk
		FOREIGN KEY (material_id) REFERENCES material (id);	
	
#######################################################
#######################################################
-- DESC model;

ALTER TABLE model 
	ADD CONSTRAINT model__call_type_id_fk
		FOREIGN KEY (calltype_id) REFERENCES call_type (id);
	
ALTER TABLE model 
	ADD CONSTRAINT model__mouthpiece_id_fk
		FOREIGN KEY (mouthpiece_id) REFERENCES mouthpiece (id);

ALTER TABLE model 
	ADD CONSTRAINT model__ring_id_fk
		FOREIGN KEY (ring_id) REFERENCES ring (id);
	
ALTER TABLE model 
	ADD CONSTRAINT model__horn_id_fk
		FOREIGN KEY (horn_id) REFERENCES horn (id);
	
ALTER TABLE model 
	ADD CONSTRAINT model__bone_id_fk
		FOREIGN KEY (bone_id) REFERENCES bone (id);
	
ALTER TABLE model 
	ADD CONSTRAINT model__bung_id_fk
		FOREIGN KEY (bung_id) REFERENCES bung (id);
	
ALTER TABLE model 
	ADD CONSTRAINT model__tongue_id_fk
		FOREIGN KEY (tongue_id) REFERENCES tongue (id);
	
#######################################################
#######################################################
-- DESC orders;

ALTER TABLE orders 
	ADD CONSTRAINT orders__customer_id_fk
		FOREIGN KEY (customer_id) REFERENCES customer (id);

ALTER TABLE orders 
	ADD CONSTRAINT orders__order_status_id_fk
		FOREIGN KEY (order_status_id) REFERENCES order_status (id);
	
ALTER TABLE orders 
	ADD CONSTRAINT orders__shipping_type_id_fk
		FOREIGN KEY (shipping_type_id) REFERENCES shipping_type (id);
	
#######################################################

DESC tool;

ALTER TABLE tool 
	ADD CONSTRAINT tool__tool_type_id_fk
		FOREIGN KEY (tool_type_id) REFERENCES tool_type (id);

#######################################################

DESC call_order;

ALTER TABLE call_order 
	ADD CONSTRAINT call_order__model_id_fk
		FOREIGN KEY (model_id) REFERENCES model (id);
		
ALTER TABLE call_order 
	ADD CONSTRAINT call_order__order_id_fk
		FOREIGN KEY (order_id) REFERENCES orders (id);
	
ALTER TABLE call_order 
	ADD CONSTRAINT call_order__item_status_id_fk
		FOREIGN KEY (item_status_id) REFERENCES item_status (id);
	
#######################################################

DESC operation;

ALTER TABLE operation 
	ADD CONSTRAINT operation__operation_type_id_fk
		FOREIGN KEY (operation_type_id) REFERENCES operation_type (id);
	