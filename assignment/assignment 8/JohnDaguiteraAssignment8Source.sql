alter table customerOrder
add total decimal(7,2) not null default 0.0;

update customerOrder
set total = quantity * ( select price
						  from product
						  where customerOrder.productId = id );
			
update customerOrder
set orderStateId = (select id
					from orderState
					where state = 'Payment received');
				
alter table customerPayment
add paymentDate date not null default(CURRENT_DATE);

insert into customerPayment (customerOrderId, total) 
select id, total
from customerOrder
where orderStateId = (select id
					from orderState
					where state = 'Payment received');

select concat(c.firstName, " ", c.lastName) as Customer, 
cp.customerOrderId as "Customer Order", p.description as Product, 
co.total as "Product Total" 
from customerPayment cp, product p, customer c, customerOrder co
where cp.customerOrderId = co.id
and co.customerId = c.id
and co.productId = p.id
order by c.lastName;

alter table purchaseOrder
add total decimal(7,2) not null default 0.0;

update purchaseOrder
set total = quantity * ( select price
						  from product
						  where purchaseOrder.productId = id );
						  
select supplierId, SUM(total)
from purchaseOrder						  
group by supplierId;

insert into orderState (state) value
("Payment sent");

update purchaseOrder 
set orderStateId = (select id	
						from orderState
						where state = "Payment sent")
where supplierId in (3,4,9);
						  
alter table supplierTransaction
add paymentDate Date not null default(CURRENT_DATE);

insert into supplierTransaction (purchaseOrderId, total)
select id, total
from purchaseOrder
where orderStateId = (select id
						from orderState
						where state = "Payment sent");
						
select s.supplierName as Supplier, st.purchaseOrderId as "Purchase Order", p.description as Product, po.total as "Product Total"
from supplier s, supplierTransaction st, product p, purchaseOrder po
where st.purchaseOrderId = po.id
and po.supplierId = s.id
and po.productId = p.id
order by s.supplierName;
