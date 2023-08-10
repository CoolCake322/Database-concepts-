create view productSupplierDetail as
select p.description as Product, s.supplierName as Supplier
from product p, supplier s, productSupplier ps
where ps.productId = p.id
and ps.supplierId = s.id
order by s.supplierName;

create view customerOrderDetail as
select concat(c.firstName, " ", c.lastName) as Customer, p.description as Product,
co.quantity as Quantity, co.orderDate as "Date Ordered", os.state as "Order Status"
from customer c, customerOrder co, orderState os, product p
where co.productId = p.id
and co.customerId = c.id
and co.orderStateId = os.id;

create view purchaseOrderDetail as
select s.supplierName as Supplier, p.description as Product, po.quantity as Quantity, 
po.orderDate as "Date Ordered", os.state as "Order Status"
from supplier s, product p, purchaseOrder po, orderState os
where po.supplierId = s.id
and po.productId = p.id
and po.orderStateId = os.id;

create view customerPaymnetDetail as 
select concat(c.firstName, " ", c.lastName) as Customer, cp.customerOrderId as "Customer Order",
p.description as Product, co.total as "Product Total" 
from product p, customer c, customerOrder co, customerPayment cp
where cp.customerOrderId = co.id
and co.customerId = c.id
and co.productId = p.id
order by c.lastName;

create view supplierTransactionDetail as
select s.supplierName as Supplier, st.purchaseOrderId as "Purchase Order", 
p.description as Product, po.total as "Product Total"
from supplier s, supplierTransaction st, product p, purchaseOrder po
where st.purchaseOrderId = po.id
and po.supplierId = s.id
and po.productId = p.id
order by s.supplierName;

/*error with size column*/
create view productDetail as 
select p.id as "Product Id", p.productName as "Product Name", pt.type as Category, 
p.description as Description, concat(p.size, " ",st.size) as Size, p.quantity as "In Stock",
concat("$", p.price) as Cost
from product p, productType pt, sizeType st
where p.productType = pt.id
and p.sizeTypeId = st.id
order by p.productName;

create view employeeSupplierDetail as
select concat(e.firstName, " ", e.lastName) as Representative, s.supplierName as Supplier
from employee e, supplier s, employeeSupplier es
where  es.employeeId = e.id
and es.supplierId = s.id
order by e.lastName;