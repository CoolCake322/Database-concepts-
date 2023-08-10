insert into productsupplier values
 (74, 7),
 (75, 7),
 (81, 10),
 (82, 10),
 (83, 10),
 (76, 8),
 (77, 8),
 (68, 4),
 (69, 4),
 (72, 6),
 (73, 6),
 (66, 3),
 (67, 3),
 (70, 5),
 (71, 5),
 (78, 9),
 (79, 9),
 (80, 9),
 (64, 2),
 (65, 2),
 (61, 1),
 (62, 1),
 (63, 1);
 
insert into customerOrder values
(1 ,22, 23, 2, DATE(NOW()), 1),
(2 ,22, 24, 4, DATE(NOW()), 1),
(3 ,33, 14, 6, DATE(NOW()), 1),
(4 ,33, 20, 4, DATE(NOW()), 1),
(5 ,11, 64, 4, DATE(NOW()), 1),
(6 ,11, 74, 10, DATE(NOW()), 1),
(7 ,35, 1, 4, DATE(NOW()), 1),
(8 ,15, 10, 6, DATE(NOW()), 1),
(9 ,25, 80, 3, DATE(NOW()), 1),
(10 ,12, 9, 8, DATE(NOW()), 1);

insert into purchaseOrder values
(1, 1, 1, 10, DATE(NOW()), 1),
(2, 1, 2, 15, DATE(NOW()), 1),
(3, 3, 8, 15, DATE(NOW()), 1),
(4, 7, 21, 12, DATE(NOW()), 1),
(5, 9, 26, 20, DATE(NOW()), 1),
(6, 9, 27, 18, DATE(NOW()), 1),
(7, 2, 64, 10, DATE(NOW()), 1),
(8, 3, 67, 15, DATE(NOW()), 1),
(9, 4, 71, 14, DATE(NOW()), 1),
(10, 5, 69, 10, DATE(NOW()), 1);

select p.description as Product, s.suppliername as Supplier
from productsupplier ps, product p, supplier s
where ps.productId = p.id
and ps.supplierId = s.id;

select s.suppliername as Supplier, p.description as Product, po.quantity as Quantity, po.orderDate as "Date Ordered", os.state as "Order Status"
from purchaseOrder po, supplier s, product p, orderState os
where po.supplierId = s.id
and po.productId = p.id
and po.orderStateId = os.id;