Select * from product
where Id in 
			(select distinct productId
			from customerOrder
			union
			select distinct productId
			from purchaseOrder);

update customerOrder
set orderStatus = "Payment received"; 

update purchaseOrder
set order orderStatus = "Payment sent";

DELIMITER $$
 CREATE PROCEDURE ShipCustomerOrder()
 	BEGIN
	
		DECLARE done INT DEFAULT 0;
		DECLARE theId INT DEFAULT 0;
		
		 /* declare cursor for column ID where column orderStateId equals "Payment received" */
		 DECLARE id_cursor CURSOR FOR 
			SELECT DISTINCT ID
			  FROM customerOrder
			  WHERE orderStateId =
					(SELECT id
					   FROM orderState
					  WHERE state = "Payment received");
		  
 		DECLARE CONTINUE HANDLER 
        	FOR NOT FOUND SET done = 1;
		
		OPEN id_cursor;

		get_id: LOOP

			FETCH id_cursor INTO theId;

			 IF done = 1 THEN 
				LEAVE get_id;
			 END IF;

			/* update customerOrder set column orderStateId equal to "Shipped" */ 
			UPDATE customerOrder
			SET orderStateId =
				(SELECT id
				FROM orderState
				WHERE state = "Shipped")
			WHERE ID = theId; 
			
 		END LOOP get_id;			
	END $$
 DELIMITER ;

DELIMITER $$
create procedure ReceivePurchaseOrder ()
	begin
		declare done int default 0;
		declare theId int default 0;
		declare id_cursor cursor for
			select distinct ID
			from purchaseOrder
			where orderStateId = 
								(select id
								from orderState
								where state = "Payment sent");
		declare continue handler
		for not found set done = 1;
		open id_cursor ;
		get_id: LOOP
			fetch id_cursor into theId;
				if done = 1 then
					leave get_id;
				end if;
			update purchaseOrder
			set orderStateId = 
							(select id
							from orderState
							where state = "Shipped")
			where ID = theId;
		end loop get_id;
end $$
DELIMITER ;

DELIMITER $$
create procedure DecreaseInventory()
	begin
		declare done int default 0;
		declare theProduct int default 0;
		declare theQuantity int default 0;
		declare ship_cursor cursor for
			select productId, quantity
			from customerorder
			where orderStateId = 
							(select id
							from orderState
							where state = "Shipped");
		declare continue handler
		for not found set done = 1;
		open ship_cursor;
		ship_product: LOOP
			fetch ship_cursor into theProduct, theQuantity;
				if done = 1 then
					leave ship_product;
				end if;
			update product
			set quantity = quantity - theQuantity
			where ID = theProduct;
		end loop ship_product;
end $$
DELIMITER ;

delimiter $$
create procedure IncreaseInventory ()
	begin
		declare done int default 0;
		declare theProduct int default 0;
		declare theQuantity int default 0;
		declare receive_cursor cursor for
			select productId, quantity
			from purchaseOrder
			where orderStateId = 
							(select id
							from orderState
							where state = "Shipped");
		declare continue handler
		for not found set done = 1;
		open receive_cursor;
		receive_product: LOOP
			fetch receive_cursor into theProduct, theQuantity;
				if done = 1 then
					leave receive_product;
				end if;
			update product
			set quantity = quantity + theQuantity
			where ID = theProduct;
		end loop receive_product;

DELIMITER ;

delimiter $$
create procedure UpdateInventory()
	BEGIN	
		call ShipcustomerOrder();
		call ReceivePurchaseOrder();
		call DecreaseInventory(); 
		call IncreaseInventory();
		update customerOrder
		set orderStatus = "Completed";
		where orderStatus = "Shipped";
		update purchaseOrder
		set orderStatus = "Completed";
		where orderStatus = "Shipped";
		
end $$
DELIMITER ;
		